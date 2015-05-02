sudo apt-get update

sudo apt-get install -y \
git mc \
php5 php5-pgsql php5-curl php5-intl \
postgresql postgresql-contrib


sudo -u postgres psql -c "alter user postgres password 'postgres';"
sudo -u postgres psql -c "CREATE ROLE aj WITH LOGIN PASSWORD 'aj' CREATEDB CREATEROLE;"
sudo -u postgres psql -c "create database aj with owner aj;"

sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/" /etc/postgresql/9.3/main/postgresql.conf
sudo sed -i "s/peer/md5/" /etc/postgresql/9.3/main/pg_hba.conf
sudo sed -i "s/127.0.0.1\/32/0.0.0.0\/0/" /etc/postgresql/9.3/main/pg_hba.conf
sudo /etc/init.d/postgresql restart

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer


sudo sed -i "s/;date.timezone =/date.timezone = Europe\/Warsaw/" /etc/php5/apache2/php.ini
sudo sed -i "s/;date.timezone =/date.timezone = Europe\/Warsaw/" /etc/php5/cli/php.ini
sudo sed -i "s/\/var\/www\/html/\/var\/www\/app\/web/" /etc/apache2/sites-enabled/000-default.conf
sudo apache2ctl graceful


# install phpunit
wget https://phar.phpunit.de/phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit && sudo chmod +x /usr/local/bin/phpunit
