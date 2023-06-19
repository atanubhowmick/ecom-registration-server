# For Java 8, try this
FROM openjdk:8

# Refer to Maven build -> finalName
ARG JAR_FILE=target/ecom-registration-server-1.0.0.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/ecom-registration-server-1.0.0.jar /opt/app/ecom-registration-server-1.0.0.jar
COPY ${JAR_FILE} ecom-registration-server-1.0.0.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","ecom-registration-server-1.0.0.jar"]
