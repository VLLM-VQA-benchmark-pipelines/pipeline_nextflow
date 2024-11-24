# Описание

Используем фреймворк `VLMEvalKit` ([ссылка](https://github.com/open-compass/VLMEvalKit)) для бенчмаркинга VLM моделей на популярных датсетах .

# Docker контейнер

## Build Docker image

Для сборки `Docker image` выполним команду:
```
docker build -t vlmevalkit:v0.2rc1-cu124 -f docker/Dockerfile-cu124 .
```

## Run Docker Container

Для запуска `Docker Container` выполним команду:
```
docker run \
    --gpus all \
    --rm \
    -it \
    -v ./shared_folder:/workspace \
    vlmevalkit:v0.2rc1-cu124
```

Нам откроется терминал внутри `Docker Container`.