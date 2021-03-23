FROM ubuntu:18.04
WORKDIR /usr/src/app
COPY curler.sh .
RUN apt update && apt install -y curl
CMD sh curler.sh
