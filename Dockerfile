# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine
MAINTAINER sj@to.com
EXPOSE 8080
ARG JAR_FILE=target/devsecops-1.0-SNAPSHOT.jar
# Add the application's jar to the container
ADD ${JAR_FILE} devsecops.jar
# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/devsecops.jar"]