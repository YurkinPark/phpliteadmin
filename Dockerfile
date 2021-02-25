FROM alpine:edge

LABEL mainterner="Yuriy Shupen'ko <yurkinpark@gmail.com>"

RUN set -e \
  && apk add --upgrade --no-cache \
  unzip \
  sqlite \
  php7 \
  php7-pdo_sqlite \
  php7-mbstring \
  php7-json \
  php7-session

RUN wget https://bitbucket.org/phpliteadmin/public/downloads/phpLiteAdmin_v1-9-8-2.zip -O /srv/sources.zip
RUN cd /srv && unzip sources.zip
RUN rm /srv/sources.zip
COPY phpliteadmin.config.php /srv

WORKDIR /srv

EXPOSE 80

CMD ["php", "-t", "/srv", "-S", "0.0.0.0:80", "phpliteadmin.php"]
