# Use the official Nginx image as the base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the HTML file into the container
COPY index.html .

# Copy the custom NGINX configuration
COPY default.conf /etc/nginx/conf.d/

# Expose port 80 to make the container's web server accessible
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
