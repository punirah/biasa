# Gunakan image PHP 8.3 dari Docker Hub
FROM php:8.3-cli

# Set working directory di dalam container
WORKDIR /app

# Salin semua file dari repositori ke dalam container
COPY . /app

# Install cURL (karena kamu menggunakan cURL di skrip PHP)
RUN apt-get update && apt-get install -y libcurl4-openssl-dev && docker-php-ext-install curl

# Jalankan skrip PHP
CMD ["php", "botv.php"]