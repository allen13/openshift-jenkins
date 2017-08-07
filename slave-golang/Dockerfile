FROM openshift/jenkins-slave-base-centos7:latest

RUN yum groupinstall 'Development Tools' -y && \
    cd /usr/local && \
    curl https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz | tar xz && \
    mkdir /go

ENV GOROOT /usr/local/go
ENV GOPATH /go
ENV PATH $GOPATH/bin:$GOROOT/bin:$PATH
