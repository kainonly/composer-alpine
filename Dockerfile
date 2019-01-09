FROM alpine:edge

ENV VERSION 1.8.0
ENV PHP_VERSION 7.2

RUN apk add --no-cache \
    php7 \
    php7-tidy \
    php7-common \
    php7-calendar \
    php7-bz2 \
    php7-zip \
    php7-session \
    php7-curl \
    php7-imap \
    php7-soap \
    php7-openssl \
    php7-ctype \
    php7-mcrypt \
    php7-sodium \
    php7-exif \
    php7-gd \
    php7-fileinfo \
    php7-gmp \
    php7-bcmath \
    php7-iconv \
    php7-mbstring \
    php7-enchant \
    php7-json \
    php7-yaml \
    php7-xml \
    php7-dom \
    php7-xmlrpc \
    php7-simplexml \
    php7-xmlreader \
    php7-xmlwriter \
    php7-xsl \
    php7-sqlite3 \
    php7-pgsql \
    php7-mysqli \
    php7-mysqlnd \
    php7-pdo \
    php7-pdo_sqlite \
    php7-pdo_mysql \
    php7-pdo_pgsql \
    php7-phar \
    php7-opcache \
    php7-pecl-imagick \
    php7-pecl-msgpack \
    php7-pecl-redis \
    php7-pecl-mongodb \
    php7-pecl-xdebug \
    composer

RUN composer config -g repo.packagist composer https://packagist.laravel-china.org

VOLUME /work

WORKDIR /work

STOPSIGNAL SIGTERM

CMD ["composer"]