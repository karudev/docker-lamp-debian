FROM php:7.0-apache
MAINTAINER Dolyveen Renault <renault@karudev.fr>

#COPY src/ /var/www/html/
RUN apt-get update && apt-get install -y vim
RUN apt-get install -y zlib1g-dev
# Install GIT
RUN apt-get -y install git
# Install pdo_mysql, zip, memcached
RUN docker-php-ext-install pdo pdo_mysql zip \
    && apt-get -y install libmemcached11 libmemcachedutil2 libmemcached-dev \
    && git clone --branch php7 https://github.com/php-memcached-dev/php-memcached \
    && cd php-memcached \
    && phpize \
    && ./configure \
    && make \
    && echo "extension=/var/www/html/php-memcached/modules/memcached.so" > /usr/local/etc/php/conf.d/memcached.ini 
# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php composer-setup.php --install-dir=/usr/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"
# Install Java 7
RUN apt-get update && apt-get install -y openjdk-7-jre \
    && apt-get install -y openjdk-7-jdk --fix-missing \ 
    && apt-get install libmysql-java --fix-missing
RUN export CLASSPATH=$CLASSPATH:/usr/share/java/mysql.jar
