FROM wordpress:latest
RUN apt-get update && apt-get install -y libmemcached-dev libssl-dev zlib1g-dev \
    && pecl install memcached \
	&& rm -r /tmp/pear \
    && docker-php-ext-enable memcached