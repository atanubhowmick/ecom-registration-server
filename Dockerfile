# For Java 8, try this
FROM openjdk:8

# Refer to Maven build -> finalName
ARG JAR_FILE=target/ecom-registration-server-1.0.0.jar

# cd /opt/app
WORKDIR /opt/app

# cp JAR_FILE /opt/app/ecom-registration-server.jar
COPY ${JAR_FILE} ecom-registration-server.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","ecom-registration-server.jar"]
