from tomcat:9
copy target/*.war /usr/local/tomcat/webapps/train.war
cmd sleep 100
cmd ["catalina.sh", "run"]
