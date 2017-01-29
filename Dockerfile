FROM openjdk:8-jre

MAINTAINER juliens@microsoft.com

RUN mkdir -p /usr/local/app

WORKDIR /usr/local/app

COPY  $(AGENT_BUILDDIRECTORY)/s/src/build/libs/ordering-service-0.1.0 /usr/local/app/

EXPOSE 8080

ENTRYPOINT sh run.sh