# Serve the app with a lightweight web server
FROM nginx:alpine

# Copy the build output from the current directory to Nginx's default public directory
COPY ./build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

