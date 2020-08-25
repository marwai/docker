# Dockerfile for nginx to host our own website

# tell docker which base image we would like to use build our own image
# layers of own image 

# syntax to write a dockerfile - keywords that we use to build our 
# Dockerfile
FROM nginx

# we can label to find out who created the image
LABEL MAINTAINER=MTse@spartaglobal

# Copy the App1 folder from our host to our container
COPY app1/static-website-example /usr/share/nginx/html

# Expose the default port of nginx
EXPOSE 80

# Run the app with CMD
CMD ["nginx", "-g", "daemon off;"]
