#!/usr/bin/env nextflow

log.info """\
    V Q A   B E N C H M A M A R K   P I P E L I N E
    ===============================================  
    workdir                : ${params.workdir}
    dockerdatadir          : ${params.dockerdatadir}
    nextflowdatadir        : ${params.nextflowdatadir}
    dockerscriptsdir       : ${params.dockerscriptsdir}
    nextflowscriptsdir     : ${params.nextflowscriptsdir}
    container              : ${params.container}
    """
    .stripIndent()

// Запуск контейнера с файлом writer.py
process WRITER {

    publishDir { params.nextflowdatadir }, mode: 'copy'
       
    script:
        """
        python ${params.dockerscriptsdir}/writer.py
        """
}

// Запуск контейнера с файлом reader.py
process READER {

    publishDir { params.nextflowdatadir }, mode: 'copy'

    output:
        stdout
       
    script:
        """
        python ${params.dockerscriptsdir}/reader.py
        """
}


workflow {
    
    reader(writer())
}

workflow writer {

    // Запуск процесса WRITER
    WRITER()   

}

workflow reader {

    // Запуск процесса READER
    READER()  
}


