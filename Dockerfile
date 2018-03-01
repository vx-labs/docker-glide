FROM golang:1.10-alpine

ENV GOOS=linux
ENV GOARCH=amd64
ENV CGO_ENABLED=0
RUN apk -U add curl make libc-dev git ca-certificates && \
    rm -rf /var/cache/apk/*
ENV VER=v0.13.1
ENV URL=https://github.com/Masterminds/glide/releases/download/${VER}/glide-${VER}-linux-386.tar.gz
RUN curl -sL $URL | tar -xzf - linux-386/glide --strip-components=1 -C /usr/bin/
ENV PATH="/bin:/usr/bin:/sbin:/usr/sbin:$GOPATH/bin"
