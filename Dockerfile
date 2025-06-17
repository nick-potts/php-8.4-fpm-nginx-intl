FROM serversideup/php:8.4-fpm-nginx AS base

USER root
RUN install-php-extensions intl
USER www-data