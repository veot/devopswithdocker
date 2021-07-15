FROM alpine

EXPOSE 5000

COPY ./example-frontend /usr/src/app
WORKDIR /usr/src/app

RUN apk --no-cache add curl nodejs npm && \
    adduser -S appuser && \
    npm install && \
    npm install -g serve && \
    npm run build && \
    apk del npm curl

ENV REACT_APP_BACKEND_URL http://localhost/api

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
