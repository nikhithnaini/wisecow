# Use an Ubuntu-based image
FROM ubuntu:latest

# Set working directory
WORKDIR /app

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay 

# Copy the Bash script into the container
COPY . .

# Make the script executable
RUN chmod +x /app/wisecow.sh

# Expose the specified port
EXPOSE 4499

CMD ["./wisecow.sh"]


