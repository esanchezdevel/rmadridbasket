FROM openjdk:8-jdk-alpine

#install system dependencies
RUN apk update && apk add vim curl

RUN mkdir rmadridbasket

WORKDIR rmadridbasket

#deploy rmadrid-basket-es project
COPY target/*.jar app.jar

ENTRYPOINT ["java","-jar","/rmadridbasket/app.jar"]
