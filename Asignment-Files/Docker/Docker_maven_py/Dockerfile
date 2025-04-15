FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get install -y maven

USER jenkins




FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y openjdk-11-jdk maven && \
    apt-get clean

USER jenkins