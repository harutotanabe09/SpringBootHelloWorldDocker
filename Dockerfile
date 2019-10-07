FROM openjdk:8-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    bash \
    curl-dev \
    ruby-dev \
    build-base \
    git

RUN mkdir /usr/app
WORKDIR /usr/app

RUN git clone https://github.com/harutotanabe09/SpringBootHelloWorld.git . 

ENTRYPOINT ["sh", "./gradlew", "bootRun"]