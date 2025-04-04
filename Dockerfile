FROM tomcat:9
COPY target/onlinebookstore.war /usr/local/tomcat/webapps/app.war
cmd sleep 150
CMD ["catalina.sh", "run"]