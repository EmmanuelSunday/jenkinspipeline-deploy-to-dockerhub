FROM centos:centos7
LABEL maintainer="Sunday."

RUN yum -y update
RUN yum -y install httpd

COPY index.html /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]