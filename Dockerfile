FROM ubuntu:latest

RUN apt update -y

RUN apt install apache2 -y

WORKDIR /var/www/html

ADD https://wordpress.org/wordpress-6.2.2.tar.gz .

RUN tar -xvf wordpress-6.2.2.tar.gz

RUN mv wordpress/* /var/www/html/

EXPOSE 80:80

CMD ["apache2ctl", "-D", "FOREGROUND"]
