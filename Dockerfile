# Stage 1: Build the WAR using Maven
FROM maven:3.8.7-eclipse-temurin-17 AS build
WORKDIR /app
COPY . /app
RUN mvn clean package -DskipTests

# Stage 2: Deploy WAR to Tomcat
FROM tomcat:9-jdk17
COPY --from=build /app/target/onlinebookstore.war /usr/local/tomcat/webapps/bookapp.war
CMD ["catalina.sh", "run"]
