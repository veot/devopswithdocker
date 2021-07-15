FROM openjdk:8 as builder

WORKDIR /usr/src/app/

COPY ./spring-example-project .

RUN ./mvnw package

# -----------------------------

FROM openjdk:8-jdk-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/target/docker-example-1.1.3.jar .

RUN adduser -S appuser

USER appuser

CMD ["java", "-jar", "./docker-example-1.1.3.jar"]
