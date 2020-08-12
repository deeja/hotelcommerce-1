FROM php:7.3-apache 
RUN apt-get update
RUN apt-get install -y libpng-dev libxml2-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql soap gd
RUN apt-get -y install libmcrypt-dev
RUN pecl install mcrypt-1.0.3 && docker-php-ext-enable mcrypt
COPY "./conf/php.ini-development-custom" "$PHP_INI_DIR/php.ini"

# Possible extensions: 
# bcmath bz2 calendar ctype curl dba dom enchant exif fileinfo filter ftp gd gettext gmp hash iconv imap interbase intl json ldap 
# mbstring mysqli oci8 odbc opcache pcntl pdo pdo_dblib pdo_firebird pdo_mysql pdo_oci pdo_odbc pdo_pgsql pdo_sqlite pgsql phar 
# posix pspell readline recode reflection session shmop simplexml snmp soap sockets sodium spl standard sysvmsg sysvsem sysvshm 
# tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter xsl zend_test zip

