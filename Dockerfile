FROM golang:rc-alpine
RUN /usr/local/bin/go-wrapper download github.com/netroby/gotcpforward
CMD ["/go/bin/gotcpforward"]
