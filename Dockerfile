FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-alpine3.10

RUN apk --no-cache add \
    gcc \
    gfortran \
    g++ \
    linux-headers \
    make \
    musl \
    openblas-dev \
    openjdk11

ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"

RUN pip install --upgrade pip && \
    pip install tabula-py
