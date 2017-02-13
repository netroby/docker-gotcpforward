FROM golang:rc-alpine
ENV GOPATH /go
RUN apk update
RUN apk add git
RUN /usr/local/bin/go-wrapper download github.com/netroby/gotcpforward
CMD ["/go/bin/gotcpforward", "-l", ":8018", "-r", $REMOTE] 
