FROM php:7-apache

RUN mkdir -p /var/www/public/

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY files /var/www/public/

RUN chown -R www-data:www-data /var/www/public/

EXPOSE 80

CMD ["apache2-foreground"]