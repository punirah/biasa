FROM php:8.2-cli
WORKDIR /app
COPY . .
EXPOSE 10000  # Menambahkan baris ini untuk membuka port 10000
CMD ["php", "-S", "0.0.0.0:10000", "botv.php"]  # Menjalankan server PHP di port 10000
