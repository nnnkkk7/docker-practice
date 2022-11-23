FROM golang:1.19.1-alpine
WORKDIR /go/src/app
COPY go.mod ./
RUN apk update && apk add git
RUN go mod download
COPY *.go ./
EXPOSE 8080
CMD ["go", "run", "main.go"]