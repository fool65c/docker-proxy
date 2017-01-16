FROM nginx

RUN apt-get update
Run apt-get install -y apache2-utils

RUN rm /etc/nginx/conf.d/*.conf

ADD conf /etc/nginx/conf.d

EXPOSE 80 6565
