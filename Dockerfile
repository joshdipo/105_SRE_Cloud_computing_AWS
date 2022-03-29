# select base image (you can also use tags)
FROM nginx

# Label it - add optional details
LABEL MAINTAINER=JOSH

# copy index.html to /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html

# expose the required port - port 80
EXPOSE 80

# launch the app
CMD ["nginx", "-g", "daemon off;"]
# CMD will runthe command in this case to launch the image when we create a container