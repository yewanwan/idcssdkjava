#!/bin/bash
echo "123"
sh /usr/local/tomcat/bin/startup.sh
tail -f /usr/local/tomcat/logs/catalina.out
