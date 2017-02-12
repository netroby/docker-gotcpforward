FROM golang:rc-alpine
RUN apk update
RUN apk add git
RUN /usr/local/bin/go-wrapper download github.com/netroby/gotcpforward
CMD ["/go/bin/gotcpforward"]
