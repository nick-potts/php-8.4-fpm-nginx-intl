FROM serversideup/php:8.4-fpm-nginx AS base

USER root
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN install-php-extensions \
    apcu \
    bcmath \
    calendar \
    ev \
    excimer \
    exif \
    gd \
    gmp \
    igbinary \
    imagick \
    imap \
    intl \
    ldap \
    mongodb \
    msgpack \
    mysqli \
    pdo_mysql \
    pdo_pgsql \
    pdo_sqlsrv \
    pspell \
    redis \
    shmop \
    soap \
    sockets \
    sqlsrv \
    xsl \
    zip

USER www-data
