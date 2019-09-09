FROM ubuntu:16.04
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl && \
    apt-get install -y  software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get clean
RUN groupadd tomcat
RUN useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
RUN cd /tmp
RUN curl -O http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.45/bin/apache-tomcat-8.5.45.tar.gz
RUN mkdir /opt/tomcat
RUN gzip -V
RUN tar -xvzf apache-tomcat-8.5.45.tar.gz -C /opt/tomcat --strip-components=1
RUN cd /opt/tomcat
RUN chgrp -R tomcat /opt/tomcat
COPY target/java-tomcat-maven-example.war /opt/tomcat/webapps
#RUN chown -R tomcat conf/ webapps/ work/ temp/ logs/
#RUN update-java-alternatives -l
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
Run cd /opt/tomcat/bin
expose 8080
#CMD /opt/tomcat/bin/catalina.sh run && tail -f /opt/tomcat/logs/catalina.out
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
