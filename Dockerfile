# Gunakan image resmi PHP dengan cURL
FROM php:8.1-cli

# Install curl (untuk melakukan request)
RUN apt-get update && apt-get install -y libcurl4-openssl-dev

# Salin skrip get.php ke dalam container
COPY get.php /usr/src/myapp/get.php

# Set working directory
WORKDIR /usr/src/myapp

# Menjalankan skrip PHP
CMD ["php", "get.php"]
