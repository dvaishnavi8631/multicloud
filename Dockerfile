# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the index.html file to the default nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to make the app accessible
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
