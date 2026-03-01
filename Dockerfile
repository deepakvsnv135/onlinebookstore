FROM tomcat
COPY target/onlinebookstore-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/book.war
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

