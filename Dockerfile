FROM golang:rc-alpine
go-wrapper download github.com/netroby/gotcpforward
CMD ["gotcpforward"]