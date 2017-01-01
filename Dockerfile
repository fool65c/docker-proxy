FROM nginx

RUN apt-get update
Run apt-get install -y apache2-utils

RUN rm /etc/nginx/conf.d/*.conf

ADD conf /etc/nginx/conf.d

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/home.cert.key -out /etc/nginx/home.cert.crt -subj "/C=US/ST=Maryland/L=Baltimore/O=HLM/OU=IT Department/CN=home.heatherandkevin.net"

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/mosquitto.cert.key -out /etc/nginx/mosquitto.cert.crt -subj "/C=US/ST=Maryland/L=Baltimore/O=HLM/OU=IT Department/CN=mosquitto.heatherandkevin.net"

RUN htpasswd -cb /etc/nginx/.htpasswd kmager test