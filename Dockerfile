FROM tomcat:9
COPY /target/onlinebookstore.war /usr/local/tomcat/webapps/app.war
CMD ["catalina.sh", "run"]
