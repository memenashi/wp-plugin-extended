FROM wordpress:6.5.3-php8.3-apache
RUN sed -i 's/Listen 80/Listen 8001/' /etc/apache2/ports.conf
RUN sed -i 's/80/8001/' /etc/apache2/sites-enabled/000-default.conf
CMD ["apache2-foreground"]