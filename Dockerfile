FROM tomcat:9
COPY target/onlinebookstore.war /usr/local/tomcat/webapps/app.war
cmd sleep 120
CMD ["catalina.sh", "run"]
