FROM golang:1.12-alpine

ENV GOOS=linux
ENV GOARCH=amd64
ENV CGO_ENABLED=0
RUN apk -U add curl make git ca-certificates && \
    rm -rf /var/cache/apk/*
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
