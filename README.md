# Описание

Заготовка пайплайна с использованием фреймворка Nextflow.

# Создание `conda` окружения для `nextflow`

```
conda env create -n nextflow -c bioconda -c conda-forge nextflow
conda activate nextflow
```

# Запуск пайплайна из папки `./pipeline`

```
nextflow run main.nf
```
