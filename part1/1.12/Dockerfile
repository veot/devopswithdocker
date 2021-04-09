FROM alpine

EXPOSE 5000

COPY ./example-frontend /usr/src/app
WORKDIR /usr/src/app

RUN apk --no-cache add curl nodejs npm

RUN npm install
RUN npm install -g serve
RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build

CMD ["serve", "-s", "-l", "5000", "build"]
