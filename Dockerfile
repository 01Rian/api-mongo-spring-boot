FROM gradle:8.12.1-alpine AS build
WORKDIR /app
COPY . .
RUN gradle build --no-daemon

FROM openjdk:17-alpine
WORKDIR /app
COPY --from=build /app/build/libs/*.jar /app/api.jar
ENTRYPOINT ["java", "-jar", "api.jar"]
EXPOSE 8080