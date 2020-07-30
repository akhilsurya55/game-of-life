FROM ubuntu:18.04
RUN apt-get update && apt-get install openjdk-8-jdk tomcat8 -y
ADD https://referenceappkhaja.s3-us-west-2.amazonaws.com/gameoflife.war /var/lib/tomcat8/webapps/gameoflife.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
