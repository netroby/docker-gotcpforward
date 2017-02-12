FROM golang:rc-alpine
RUN apk -u install git
RUN /usr/local/bin/go-wrapper download github.com/netroby/gotcpforward
CMD ["/go/bin/gotcpforward"]
