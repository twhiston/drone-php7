FROM php:7.1-fpm

MAINTAINER Tom Whiston <tom.whiston@gmail.com>

RUN apt-get update && apt-get upgrade && \
    apt-get install git -y
RUN pecl install xdebug-2.5.0 && \
    docker-php-ext-enable xdebug

RUN php -r "readfile('https://getcomposer.org/installer');" | php && mv ./composer.phar /usr/local/bin/composer