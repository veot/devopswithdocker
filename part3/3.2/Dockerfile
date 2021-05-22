FROM alpine

RUN apk update && apk add --no-cache git docker-cli

WORKDIR /app
COPY ./dbp.sh ./dbp.sh

CMD ./dbp.sh
