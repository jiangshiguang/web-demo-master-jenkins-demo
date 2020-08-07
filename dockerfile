
FROM openjdk:8

ARG JAR_FILE

run mkdir /worker

add ${JAR_FILE} /worker



expose 8081



entrypoint ["java","-jar","/worker/web-1.0.jar"]
