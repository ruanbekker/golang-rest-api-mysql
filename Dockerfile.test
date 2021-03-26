FROM golang:alpine

RUN apk add git build-base

ENV GOPATH /go
ENV GOBIN ${GOPATH}/bin

ADD code /go/godemo

WORKDIR /go/godemo

RUN go get && go test -v && go build -o app

CMD ["/go/godemo/app"]
