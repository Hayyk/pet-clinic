# syntax = docker/dockerfile:experimental
FROM openjdk:8-jdk-alpine as build

RUN apk update && apk upgrade && \
    apk add --no-cache bash git

RUN git clone https://github.com/spring-projects/spring-petclinic.git
WORKDIR /spring-petclinic

RUN --mount=type=cache,id=mvn,target=~/.m2 ./mvnw package


FROM openjdk:8-jdk-alpine

WORKDIR /app
ARG DEPENDENCY=/spring-petclinic/target
COPY --from=build  ${DEPENDENCY}/*.jar /app/app.jar

ENTRYPOINT ["java","-jar","/app/app.jar"]
