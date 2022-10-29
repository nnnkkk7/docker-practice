FROM golang:1.19.2 as builder
WORKDIR /workspace
COPY . /workspace
RUN CGO_ENABLED=0 GOOS=linux go build -o main cmd/api/main.go && chmod +x ./main

FROM alpine:3.15
WORKDIR /app
RUN apk --no-cache add ca-certificates
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
COPY --from=builder /workspace/main ./
CMD ["./main"]