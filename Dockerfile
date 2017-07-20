FROM php:5.6.30-apache
MAINTAINER Vinicius Feitosa da Silva <viniciusfesil@gmail.com>

VOLUME ["/var/www/html"]

RUN apt-get update

RUN echo "[ ***** ***** ***** ] - Installing each item in new command to use cache and avoid download again ***** ***** ***** "
RUN apt-get install -y apt-utils
RUN apt-get install -y libfreetype6-dev
RUN apt-get install -y libjpeg62-turbo-dev
RUN apt-get install -y libcurl4-gnutls-dev
RUN apt-get install -y libxml2-dev
RUN apt-get install -y freetds-dev
RUN apt-get install -y git

RUN echo "[ ***** ***** ***** ] - Installing PHP Dependencies ***** ***** ***** "
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd
RUN docker-php-ext-install soap

WORKDIR /var/www/html

EXPOSE 80
EXPOSE 9000

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]