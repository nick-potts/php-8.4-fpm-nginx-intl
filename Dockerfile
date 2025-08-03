FROM serversideup/php:8.4-fpm-nginx AS base

USER root
RUN install-php-extensions intl sockets excimer
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN install-php-extensions gd
USER www-data
