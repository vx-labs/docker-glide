FROM alpine

ENV GOOS=linux
ENV GOARCH=amd64
ENV CGO_ENABLED=0
RUN apk -U add go libc-dev git ca-certificates glide go-tools && \
    rm -rf /var/cache:apk/*
ENV GOPATH="/usr/local/src"
ENV GOROOT="/usr/lib/go"
ENV PATH="/bin:/usr/bin:/sbin:/usr/sbin:$GOPATH/bin"
RUN go get github.com/rancher/trash
