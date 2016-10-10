FROM php:7.0-apache
MAINTAINER Dolyveen Renault <renault@karudev.fr>

#COPY src/ /var/www/html/
RUN apt-get update && apt-get install -y vim
# Install pdo_mysql
RUN docker-php-ext-install pdo pdo_mysql
# Install GIT
RUN apt-get -y install git
# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php composer-setup.php --install-dir=/usr/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"
