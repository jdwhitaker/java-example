FROM tomcat:9.0

ADD ./target/java-example.war /usr/local/tomcat/webapps/ROOT.war

ENV JPDA_ADDRESS=0.0.0.0:8000
ENV JPDA_TRANSPORT=dt_socket

CMD ["catalina.sh", "jpda", "run"]