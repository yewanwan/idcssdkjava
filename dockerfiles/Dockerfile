FROM  yewangdocker/yetest:tomcat8.5
COPY ROOT /usr/local/tomcat/webapps/ROOT
COPY dockerfiles/start.sh /usr/local/tomcat/bin/start.sh
ENTRYPOINT ["sh","/usr/local/tomcat/bin/start.sh"]