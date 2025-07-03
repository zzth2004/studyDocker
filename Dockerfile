# Use Java 17 base image (or match your pom.xml)
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the built JAR file into the container
ARG JAR_FILE=target/AdmissionsWebsite-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]