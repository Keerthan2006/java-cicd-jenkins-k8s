FROM jenkins/inbound-agent:latest-jdk17

USER root

RUN apt-get update && \
    apt-get install -y \
        docker.io \
        git \
        maven \
        curl && \
    apt-get clean

RUN usermod -aG docker jenkins

USER jenkins