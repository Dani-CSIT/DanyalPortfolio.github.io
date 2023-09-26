# Use the official Nginx image as the base image
FROM nginx:latest

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the HTML files into the default Nginx public directory
COPY . /usr/share/nginx/html

# Expose port 8000
EXPOSE 8080

# Command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]