# Stage 1: Build with Maven
FROM maven:3.8.5-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run with Tomcat
FROM tomcat:9
COPY --from=build /app/target/onlinebookstore.war /usr/local/tomcat/webapps/app.war
CMD ["catalina.sh", "run"]
