# Base image — lightweight nginx
FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom HTML into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start nginx in foreground (required for Docker)
CMD ["nginx", "-g", "daemon off;"]
