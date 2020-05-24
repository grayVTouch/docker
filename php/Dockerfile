FROM php:fpm

MAINTAINER running "A576236148946@126.com"

RUN apt update
RUN apt install procps -y \
	&& apt install vim -y \
	&& apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
	&& apt install libsqlite3-dev  -y \
	&& apt install libzip-dev -y
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install pdo_sqlite
RUN docker-php-ext-install bcmath
RUN pecl install redis-5.2.2 && docker-php-ext-enable redis
RUN pecl install zip-1.18.2 && docker-php-ext-enable zip
RUN pecl install swoole-4.5.1 && docker-php-ext-enable swoole

WORKDIR /myself

COPY php.ini		/usr/local/etc/php/php.ini
COPY php-fpm.conf 	/usr/local/etc/php-fpm.conf
COPY php-fpm.d 		/usr/local/etc/php-fpm.d

volume /myself

CMD ["php-fpm" , "-R"]
