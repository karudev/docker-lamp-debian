FROM php:7.0-apache
MAINTAINER Dolyveen Renault <renault@karudev.fr>

COPY src/ /var/www/html/
RUN apt-get update && apt-get install -y vim

FROM mysql:5.7
RUN apt-get update && apt-get install -y php-pear
RUN apt-get update && apt-get install -y php5-mysql
RUN pear install pecl/pdo && pecl install pdo_mysql
