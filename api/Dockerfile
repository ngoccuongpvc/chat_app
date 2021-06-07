FROM golang:1.16.5-alpine

RUN apk update && apk add --no-cache git

WORKDIR $GOPATH/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

RUN go build -o /go/bin/app

EXPOSE 8080
CMD ["app"]
