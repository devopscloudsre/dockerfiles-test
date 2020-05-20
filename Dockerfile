FROM centos:7
RUN yum install -y httpd
WORKDIR /etc/httpd/conf.d
COPY proxy.conf .
ADD https://downloads.apache.org/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.tar.gz.asc /tmp
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
