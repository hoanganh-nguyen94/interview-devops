FROM registry.gitlab.com/hcg-openhub/hcg-hub/php:8.1.1-fpm-alpine-custom
WORKDIR /app
COPY . /app
RUN chown www-data:www-data -R /app/storage/logs
