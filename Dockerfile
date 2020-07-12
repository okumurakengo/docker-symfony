FROM php:7.4-fpm

RUN apt-get update \
    && apt-get install -y zlib1g-dev libzip-dev \
    && docker-php-ext-install pdo pdo_mysql zip

COPY --from=composer /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html/myapp
