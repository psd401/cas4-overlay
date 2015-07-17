#!/bin/bash

cd /tmp/cas4-overlay
git pull origin master 
\cp -f /tmp/cas4-overlay/etc/*.* /etc/cas
mvn clean package
rm -Rf /var/lib/tomcat/webapps/ROOT
\cp -f /tmp/cas4-overlay/target/cas.war /var/lib/tomcat7/webapps/ROOT.war
service tomcat7 restart
