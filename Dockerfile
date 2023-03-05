FROM openjdk:17-jdk-slim
EXPOSE 8094
ARG JAR_FILE=demo/target/demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
