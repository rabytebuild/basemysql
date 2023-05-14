# Use an official MySQL runtime as a parent image
FROM mysql:latest

# Set the root password for MySQL
ENV MYSQL_ROOT_PASSWORD=Rabiu2004@

# Copy a custom SQL script to initialize the database
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306 80 443

# Start MySQL when the container launches
CMD ["mysqld"]
