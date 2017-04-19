FROM php:7.0.12-apache
MAINTAINER Dolyveen Renault <renault@karudev.fr>

COPY etc/php/php.ini /usr/local/etc/php
RUN a2enmod rewrite

# Install vim
RUN apt-get update && apt-get install -y vim zlib1g-dev wget

# Install GIT
RUN apt-get -y install git
# Install pdo_mysql, zip
RUN docker-php-ext-install pdo pdo_mysql zip
# Install opcache
RUN docker-php-ext-install opcache
# Install Xdebug
#RUN apt-get -y install php5-xdebug \
#    && pecl install 'xdebug'
# Install memcached
#RUN apt-get install -y libz-dev libmemcached-dev \ 
#    && pecl install memcached \
#    && docker-php-ext-enable memcached 
# Install MongoDb ext 
#RUN pecl install mongo \
#   && apt-get -y install libssl-dev \
#   && curl -L -o /tmp/mongo.tar.gz https://github.com/mongodb/mongo-php-driver-legacy/archive/1.6.14.tar.gz \
#   && tar xfz /tmp/mongo.tar.gz -C /tmp/ \
#   && mkdir -p /usr/src/php/ext/mongo \
#   && mv /tmp/mongo-php-driver-legacy-1.6.14/* /usr/src/php/ext/mongo \
#   && rm -r /tmp/mongo.tar.gz /tmp/mongo-php-driver-legacy-1.6.14 \
#   && cd /usr/src/php/ext/mongo \
#   && phpize \
#   && ./configure \
#   && make all \
#   && docker-php-ext-install mongo \
#   && docker-php-ext-enable mongo
# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php composer-setup.php --install-dir=/usr/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"
# Install PHPUNIT
RUN wget https://phar.phpunit.de/phpunit-6.1.phar \
    && chmod +x phpunit-6.1.phar \
	&& mv phpunit-6.1.phar /usr/local/bin/phpunit
# Install Java 7
#RUN apt-get install -y openjdk-7-jre --fix-missing \
#    && apt-get install -y openjdk-7-jdk --fix-missing \ 
#    && apt-get install libmysql-java --fix-missing
#RUN export CLASSPATH=$CLASSPATH:/usr/share/java/mysql.jar
