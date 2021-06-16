FROM tomcat:8.0

MAINTAINER Jegapriya <jegapriyamunieswaran@gmail.com>

COPY target/EmpDeptSpring.war  /usr/local/tomcat/webapps/
