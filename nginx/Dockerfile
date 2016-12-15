FROM nginx:alpine

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    && adduser -D -H -u 1000 -s /bin/bash www-data \
    && rm /etc/nginx/conf.d/default.conf

ADD nginx.conf /etc/nginx/
COPY sites/*.conf /etc/nginx/sites-available/

HEALTHCHECK CMD curl --fail http://localhost:80 || exit 1

CMD ["nginx"]

EXPOSE 80 443
