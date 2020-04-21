sudo apt install apache2

sudo chown -R pi:www-data /var/www/html/
sudo chmod -R 770 /var/www/html/

sudo apt install php php-mbstring

echo "<?php phpinfo ();?>" > /var/www/html/index.php

sudo apt install mariadb-server php-mysql

sudo mysql --user=root

DROP USER 'root'@'localhost';
CREATE USER 'root'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;

sudo apt install phpmyadmin
sudo phpenmod mysqli
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

sudo /etc/init.d/apache2 restart

pip install --user mysql-connector
