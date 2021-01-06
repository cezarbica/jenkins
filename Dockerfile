FROM jenkins/jenkins:lts

ARG hostDockerGroup="0"

USER root
RUN groupadd -g ${hostDockerGroup} docker && usermod -aG docker jenkins

USER jenkins
