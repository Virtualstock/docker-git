FROM docker:git

ENV DOCKER_COMPOSE_VERSION 1.24.0

RUN apk --update add py2-pip libressl curl gcc python2-dev libc-dev libffi-dev openssl-dev build-base
RUN pip install docker-compose==$DOCKER_COMPOSE_VERSION

ENV DOCKERIZE_VERSION v0.3.0

RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
    tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
    rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
