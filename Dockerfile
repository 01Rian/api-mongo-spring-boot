FROM openjdk:17-alpine
MAINTAINER Rian Santos
WORKDIR /app
COPY build/libs/*.jar /app/api.jar
ENTRYPOINT ["java", "-jar", "api.jar"]
EXPOSE 8080