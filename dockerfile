# Use the official Ubuntu image as the base image
FROM ubuntu:latest

# Update package list and install Apache
RUN apt-get update && apt-get install apache2 -y

# Copy your application files into the container (optional)
COPY index.html /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 8080

# Command to start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
