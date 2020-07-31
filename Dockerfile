FROM alpine:latest

RUN apk update && apk upgrade && \
    apk add --update murmur && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

ADD entrypoint.sh \
  /entrypoint.sh

EXPOSE 64738/tcp 64738/udp

VOLUME ["/data"]

ENTRYPOINT ["/entrypoint.sh"]
