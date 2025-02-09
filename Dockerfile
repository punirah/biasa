FROM php:8.2-cli
WORKDIR /app
COPY . .
EXPOSE 8080
CMD ["php", "botv.php"]
