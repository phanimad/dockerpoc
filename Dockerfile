# Version: 0.0.1
FROM ubuntu:16.04
MAINTAINER James Turnbull "james@example.com"
RUN apt-get update;apt-get install vim;apt-get install nc; apt-get install -y nginx;
RUN echo 'Hi, I am in your container' \
    >/var/www/html/index.html
volume ["/opt/project"]
EXPOSE 80
