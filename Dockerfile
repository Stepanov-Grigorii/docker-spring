#FROM openjdk:11.0-slim
#COPY target/docker-spring-1.0.jar /app/
#WORKDIR /app
#CMD java -jar docker-spring-1.0.jar

FROM maven:3.6.3-jdk-11-slim
COPY src /app/src
COPY pom.xml /app/
WORKDIR /app
RUN mvn clean package
WORKDIR /app/target
CMD java -jar docker-spring-1.0.jar