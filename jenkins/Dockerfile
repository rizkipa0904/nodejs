FROM jenkins/jenkins:2.332.1-jdk11
USER root

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy