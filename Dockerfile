# Use a small nginx image
FROM nginx:alpine

# Remove default nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy your built HTML into the default nginx web root
COPY src/index.html /usr/share/nginx/html/index.html

# Expose port 80 inside the container
EXPOSE 80

# Use the default nginx startup command
CMD ["nginx", "-g", "daemon off;"]
