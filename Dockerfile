FROM golang:alpine
ENV GOPATH /go
RUN apk update
RUN apk add git
RUN /usr/local/go/bin/go get -u -v  github.com/netroby/gotcpforward
CMD ["/go/bin/gotcpforward", "-l", ":8018", "-r", $REMOTE] 
