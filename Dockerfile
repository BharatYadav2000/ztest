# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install Apache
RUN apt-get update && apt-get install -y apache2

# Expose port 80 to allow external access
EXPOSE 80 8081 8082 8084 8085
123
# Start Apache service when the container launches
CMD ["apache2ctl", "-D", "FOREGROUND"]
