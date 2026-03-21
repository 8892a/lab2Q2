FROM openjdk:17.0.8-jdk-alpine
COPY target/Lab2-1.0-SNAPSHOT.war /app.war
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.war"]
