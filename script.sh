sudo apt-get install -y \
php5 php5-pgsql php5-curl php5-intl

# composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# apache
sudo sed -i "s/;date.timezone =/date.timezone = Europe\/Warsaw/" /etc/php5/apache2/php.ini
sudo sed -i "s/;date.timezone =/date.timezone = Europe\/Warsaw/" /etc/php5/cli/php.ini
sudo sed -i "s/\/var\/www\/html/\/var\/www\/app\/web/" /etc/apache2/sites-enabled/000-default.conf
sudo apache2ctl graceful

# install phpunit
wget https://phar.phpunit.de/phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit && sudo chmod +x /usr/local/bin/phpunit
