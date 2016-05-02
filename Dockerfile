FROM jenkins:2.0

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

USER root

RUN curl -L https://github.com/openshift/origin/releases/download/v1.1.6/openshift-origin-client-tools-v1.1.6-ef1caba-linux-64bit.tar.gz | tar xz && \
    mv openshift*/oc /usr/local/bin && \
    rm -rf openshift-origin-client-tools-*

USER jenkins
