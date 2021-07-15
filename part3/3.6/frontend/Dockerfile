FROM alpine as build-stage

COPY ./example-frontend /usr/src/app

WORKDIR /usr/src/app

RUN apk --no-cache add curl nodejs npm && \
    npm install && \
    npm run build

# -----------------------------------------

FROM alpine

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

RUN apk --no-cache add nodejs npm && \
    adduser -S appuser && \
    npm install -g serve

EXPOSE 5000

ENV REACT_APP_BACKEND_URL http://localhost/api

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
