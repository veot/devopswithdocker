FROM golang:1.16-alpine as build-stage

WORKDIR /usr/src/app

COPY ./example-backend .

ENV CGO_ENABLED=0

RUN go build

# ---------------------------------

FROM scratch

EXPOSE 8080

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/server .

ENV REQUEST_ORIGIN http://localhost

ENTRYPOINT ["./server"]
