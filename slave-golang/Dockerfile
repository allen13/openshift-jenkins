FROM openshift/jenkins-slave-base-centos7:latest

ADD https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz /usr/local/
RUN mkdir /go
ENV GOROOT /usr/local/go
ENV GOPATH /go
ENV PATH $GOPATH/bin:$GOROOT/bin:$PATH
