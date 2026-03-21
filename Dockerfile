FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/Lab2-1.0-SNAPSHOT.war app.war
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.war"]
