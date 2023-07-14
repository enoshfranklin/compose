FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y

RUN apt install apache2 -y

RUN apt install php -y

RUN apt install php-mysql -y

WORKDIR /var/www/html

ADD https://wordpress.org/wordpress-6.2.2.tar.gz .

RUN tar -xvf wordpress-6.2.2.tar.gz

RUN mv wordpress/* /var/www/html/

RUN mv /var/www/html/index.html index.html.bk

CMD ["apache2ctl", "-D", "FOREGROUND"]
