FROM golang:1.9.1-alpine3.6

WORKDIR /go/src/app
COPY ./app .

RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 8080
EXPOSE 8888

CMD ["/go/bin/app"]