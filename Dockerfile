FROM php:8.2-cli
WORKDIR /app
COPY . .
EXPOSE 3128
CMD ["php", "-S", "0.0.0.0:3128", "botv.php"]
