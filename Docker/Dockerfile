FROM alpine:latest
LABEL MAINTAINER="https://github.com/Amarchillale/XPhishing"
WORKDIR /XPhishing/
ADD . /XPhishing
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./xphishing.sh"
