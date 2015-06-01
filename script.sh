sudo apt-get install -y \
php5 php5-pgsql php5-curl php5-intl

# composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
# phpunit
wget https://phar.phpunit.de/phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit && sudo chmod +x /usr/local/bin/phpunit
# phake
composer global require jaz303/phake
# phing
composer global require phing/phing
# mass detector
composer global require phpmd/phpmd
# copy/paste detector
composer global require sebastian/phpcpd
# PHP_CodeSniffer
composer global require squizlabs/php_codesniffer
# phpunit
composer global require "phpunit/phpunit=4.6.*"
