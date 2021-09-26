# Build
FROM golang:1.17-alpine as builder
RUN apk --no-cache add git gcc g++ musl-dev
RUN go install github.com/pressly/goose/cmd/goose

# Run
FROM alpine:3.14.2
COPY --from=builder /go/bin/goose /bin/goose
RUN mkdir -p /migrations

ENTRYPOINT ["/bin/sh"]
WORKDIR "/migrations"
