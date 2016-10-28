FROM centos:centos7

MAINTAINER Apereo Foundation

ENV PATH=$PATH:$JRE_HOME/bin

RUN yum -y install wget tar git-all \
    && yum -y clean all

RUN set -x; \
    java_version=8u65; \
    java_bnumber=17; \
    java_semver=1.8.0_65; \
    java_hash=0e46f8669719a5d2ffa586afe3d6f3cc2560691edcd9e0a032943e82922a9c8a; \

# Download Java, verify the hash, and install \
    cd / \
    && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/$java_version-b$java_bnumber/server-jre-$java_version-linux-x64.tar.gz \
    && echo "$java_hash  server-jre-$java_version-linux-x64.tar.gz" | sha256sum -c - \
    && tar -zxvf server-jre-$java_version-linux-x64.tar.gz -C /opt \
    && rm server-jre-$java_version-linux-x64.tar.gz \
    && ln -s /opt/jdk$java_semver/ /opt/jre-home;

# Download the CAS overlay project \
COPY . /cas-overlay
RUN cd / \
    && mkdir /etc/cas \
    && mkdir /etc/cas/jetty \
    && mkdir -p cas-overlay/bin \
    && mkdir -p cas-overlay/src/main/webapp \
    && cp -R cas-overlay/etc/* /etc/cas;


ENV JAVA_HOME /opt/jre-home

COPY src/main/webapp/ cas-overlay/src/main/webapp/
COPY thekeystore /etc/cas/jetty/
ADD googlekeys/private.p8 /etc/cas/
ADD googlekeys/private.key /etc/cas
ADD googlekeys/public.key /etc/cas
ADD googlekeys/x509.pem /etc/cas
ADD googlekeys/root.der /etc/cas
ADD log4j2.xml /etc/cas
RUN /opt/jdk1.8.0_65/bin/keytool -import -v -trustcacerts -keystore $JAVA_HOME/jre/lib/security/cacerts -file /etc/cas/root.der -alias incommon -noprompt -keypass changeit -storepass changeit

COPY bin/*.* cas-overlay/bin/
#ADD server.xml /var/lib/tomcat7/conf/server.xml

RUN chmod -R 750 cas-overlay/bin \
    && chmod 750 cas-overlay/mvnw \
    && chmod 750 /opt/jre-home/bin/java \
	&& chmod 750 /opt/jre-home/jre/bin/java;

EXPOSE 8080 8443

WORKDIR /cas-overlay

ENV PATH $PATH:$JAVA_HOME/bin:.

RUN ./mvnw clean package

CMD ["/cas-overlay/bin/run-jetty.sh"]
