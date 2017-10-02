FROM node:alpine
MAINTAINER Silvio Greuel <silviogreuel@gmail.com>

#DEPENDENCIES
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
 && echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
 && echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && apk -U --no-cache --no-progress upgrade \
 && apk -U --no-cache --force --no-progress add bash tmux git make gcc g++ python sqlite wget openssl ca-certificates

#SOURCE
RUN git clone https://github.com/c9/core.git /root/.c9 

#SETUP
RUN cd /root/.c9 \
	# link node
 && rm -rf node \
 && mkdir -p node/bin \
 && ln -s "`which node`" /root/.c9/node/bin/node \
 && ln -s "`which npm`" /root/.c9/node/bin/npm \
	# link tmux
 && mkdir -p bin \
 &&	ln -sf "`which tmux`" /root/.c9/bin/tmux \
  # install required node modules
 && mkdir -p node_modules \
 && npm i pty.js \
 && npm i sqlite3@3.1.8 sequelize@2.0.0-beta.0 \
 && npm i https://github.com/c9/nak/tarball/c9 \
 && npm i \
  # let cloud9 know that evertyhing is installed
 && echo 1 > /root/.c9/installed
#  && ./scripts/install-sdk.sh
