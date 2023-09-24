FROM openjdk:8-jdk-alpine
COPY target/Test-App-1.0-SNAPSHOT.jar test-app.jar
ENTRYPOINT ["java","-jar","/test-app.jar"]