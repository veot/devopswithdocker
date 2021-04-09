FROM alpine

EXPOSE 5000

COPY ./example-frontend /usr/src/app
WORKDIR /usr/src/app

RUN apk --no-cache add curl nodejs npm

RUN npm install
RUN npm install -g serve
RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]
