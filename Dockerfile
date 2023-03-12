FROM maven:3.8.3-openjdk-17 AS build
COPY demo/src /home/app/src
COPY demo/pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:17-alpine
EXPOSE 8094
COPY --from=build /home/app/target/demo-0.0.1-SNAPSHOT.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
