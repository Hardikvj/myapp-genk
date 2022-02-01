FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt install apache2 -y
ADD web.tar /var/www/html
EXPOSE 80
WORKDIR /var/www/html
ENTRYPOINT ["/sbin/apache2ctl","-D","FOREGROUND"]
