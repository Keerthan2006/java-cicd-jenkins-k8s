FROM jenkins/agent:alpine-jdk17

USER root

RUN apk add --no-cache maven docker-cli git

USER jenkins