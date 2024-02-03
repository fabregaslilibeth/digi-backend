# Use an official PHP runtime as a parent image
FROM php:8.1.0-fpm

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Install dependencies
RUN apt-get update && apt-get install -y \
    libzip-dev \
    unzip \
    && docker-php-ext-install zip pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy the local package files to the container's working directory
COPY . /var/www/html

# Install application dependencies
RUN composer install

# Expose port 9000 to the outside world
EXPOSE 9000

# Command to run on container start
CMD ["php-fpm"]
