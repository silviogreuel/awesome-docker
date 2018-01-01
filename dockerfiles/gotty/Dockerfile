FROM ubuntu:latest
MAINTAINER Silvio Greuel <silviogreuel@gmail.com>

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install git golang-go -y 

RUN mkdir -p /tmp/gotty \
 && unset GOROOT \
 && GOPATH=/tmp/gotty go get github.com/yudai/gotty \
 && mv /tmp/gotty/bin/gotty /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/gotty"]

CMD ["--permit-write","--reconnect","/bin/bash"]
