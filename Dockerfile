FROM ubuntu:latest AS build
RUN apt-get update
RUN apt-get install openjdk-21-jdk -y
COPY . .
FROM openjdk:21-jdk-slim
# Copy maven files
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src
# Make mvnw executable
RUN chmod +x mvnw
# Package the application
RUN ./mvnw clean package -DskipTests

EXPOSE 3000
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
