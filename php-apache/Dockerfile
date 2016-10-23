FROM php:7.0-apache
MAINTAINER Dolyveen Renault <renault@karudev.fr>

#COPY src/ /var/www/html/
RUN apt-get update && apt-get install -y vim
RUN apt-get install -y zlib1g-dev
# Install pdo_mysql, zip
RUN docker-php-ext-install pdo pdo_mysql zip
# Install GIT
RUN apt-get -y install git
# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php composer-setup.php --install-dir=/usr/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"
# Install Java 7
RUN apt-get update && apt-get install -y openjdk-7-jre && apt-get install -y openjdk-7-jdk && apt-get install libmysql-java
RUN export CLASSPATH=$CLASSPATH:/usr/share/java/mysql.jar 
