FROM debian:wheezy

# update APT
ADD sources.list /etc/apt/sources.list
ADD preferences /etc/apt/preferences.d/

# install web software
RUN chmod 555 /etc/apt/sources.list & \
    apt-get update && apt-get install -y \
        apache2 \
        php5 \
        php5-curl \
        php5-intl \
        php5-mysql \
        php-pear && \
    apt-get clean

VOLUME /var/www

CMD /usr/sbin/apache2ctl -D FOREGROUND