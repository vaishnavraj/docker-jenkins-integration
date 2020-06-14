FROM openjdk:8-jdk-alpine AS builder
COPY . app/source
WORKDIR app/source
RUN ./mvnw clean package


FROM openjdk:8-jdk-alpine as runtime
COPY --from=builder app/source/target/*.jar /app/app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app/app.jar"]