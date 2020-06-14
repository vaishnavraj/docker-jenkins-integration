FROM openjdk:8-jdk-alpine
COPY target/docker-jenkins-integration.jar  docker-jenkins-integration.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "docker-jenkins-integration.jar"]