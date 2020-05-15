FROM php:fpm

MAINTAINER running "A576236148946@126.com"

RUN mkdir -p /myself/command/system \
	&& apt update \
	&& apt install procps -y \
	&& apt install vim -y \
	&& apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
	&& pecl install redis-5.2.2 && docker-php-ext-enable redis
	# && pecl install bz2-1.0 && docker-php-ext-enable bz2

COPY conf			/usr/local/etc
COPY startup.sh		/myself/command/system

RUN sed -i 's/\r//g' /myself/command/system/startup.sh

CMD ["/bin/bash" , "/myself/command/system/startup.sh"]