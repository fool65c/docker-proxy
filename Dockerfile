FROM nginx

RUN apt-get update

RUN rm /etc/nginx/conf.d/*.conf

ADD conf /etc/nginx/conf.d