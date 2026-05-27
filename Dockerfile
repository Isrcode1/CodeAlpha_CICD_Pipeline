# Use ECR Public image instead of Docker Hub to avoid rate limits
FROM public.ecr.aws/nginx/nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom HTML
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
