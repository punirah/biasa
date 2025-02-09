FROM php:8.2-cli
WORKDIR /app
COPY . .
ENTRYPOINT ["php", "get.php"]
