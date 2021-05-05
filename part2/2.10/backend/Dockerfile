FROM golang:1.16-alpine

EXPOSE 8080

COPY ./example-backend /usr/src/app
WORKDIR /usr/src/app


# Install GO
# RUN apk --no-cache add wget
# RUN wget https://golang.org/dl/go1.16.3.linux-amd64.tar.gz
# RUN tar -C /usr/local -xzf go1.16.3.linux-amd64.tar.gz
# ENV PATH /go/bin:$PATH
ENV REQUEST_ORIGIN http://localhost

# Build project
RUN go build

ENTRYPOINT ./server
