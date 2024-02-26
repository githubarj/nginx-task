FROM nginx:latest



COPY ssl/nginx-selfsigned.crt /etc/nginx/ssl/nginx-selfsigned.crt
COPY ssl/nginx-selfsigned.key /etc/nginx/ssl/nginx-selfsigned.key

COPY nginx.conf /etc/nginx/nginx.conf


COPY mysite /mysite

WORKDIR /mysite/

RUN chmod +r index.html

EXPOSE 9000
EXPOSE 9001

