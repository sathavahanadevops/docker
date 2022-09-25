FROM ubuntu:latest
RUN apt update
RUN apt install nginx -y
RUN rm -r /var/www/html/*
ADD https://odbc19c.s3.amazonaws.com/index.html /var/www/html/
WORKDIR /var/www/html/
RUN chmod 777 index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
