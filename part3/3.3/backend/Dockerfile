FROM golang:1.16-alpine

EXPOSE 8080

COPY ./example-backend /usr/src/app
WORKDIR /usr/src/app

ENV REQUEST_ORIGIN http://localhost

# Build project
RUN go build

RUN adduser -S appuser
USER appuser

ENTRYPOINT ./server
