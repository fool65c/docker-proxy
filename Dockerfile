FROM nginx

RUN rm /etc/nginx/conf.d/*.conf

ADD conf /etc/nginx/conf.d