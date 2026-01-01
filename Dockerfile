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
    pspell \
    redis \
    shmop \
    soap \
    sockets \
    xsl \
    zip

# Override www.conf with empty version to prevent Railway from restoring the default
# (Railway restores files from lower Docker layers at container startup)
COPY config/www.conf /usr/local/etc/php-fpm.d/www.conf

USER www-data
