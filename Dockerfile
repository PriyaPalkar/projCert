# Use an official PHP runtime with Apache as the base image
FROM php:8.1-apache

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the PHP application files from the host into the container
COPY . /var/www/html

# Install PHP extensions needed for your application
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Expose port 80 for the Apache web server
EXPOSE 80

# Command to run Apache in the foreground
CMD ["apache2-foreground"]
