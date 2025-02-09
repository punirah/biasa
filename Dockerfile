FROM php:8.2-apache

WORKDIR /app

COPY . .

# Install dependensi jika diperlukan
# Contoh:
# RUN apt-get update && apt-get install -y libpng-dev
# RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/freetype2
# RUN docker-php-ext-install -j$(awk '/^processor/{print $3}' /proc/cpuinfo) gd pdo pdo_mysql

# Expose port yang digunakan oleh web server
EXPOSE 80

# Jalankan Apache
CMD ["apache2-foreground"]
