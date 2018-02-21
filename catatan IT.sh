#cek semua IP host di router
nmap -sP 192.168.2.1/24

#login ssh ke raspberry pi
ssh pi@<IP>
password raspberry

#raspi m0nitor
hdmi_group=2
hdmi_mode=1
hdmi_mode=87
hdmi_cvt 1024 600 60 6 0 0 0
max_usb_current=1 

#add wifi
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
network={
    ssid="testing"
    psk="testingPassword"
}

#enable ssh
buat file namanya ssh di boot

#install raspbian
lsblk
umount /dev/mmcblk0p1
umount /dev/mmcblk0p2
sudo dd bs=4M if=2017-11-29-raspbian-stretch.img of=/dev/mmcblk0 conv=fsync

#git
git init
git add *
git commit
git remote add origin https://github.com/wirarama/smartvillage.git
git pull https://github.com/wirarama/smartvillage.git
git remote -v
git push --set-upstream origin master
git push 

#Stretch
sudo apt-get install mariadb-client mariadb-server
mysql -u root -p
CREATE DATABASE newdb;
CREATE USER 'username'@'localhost' IDENTIFIED BY 'userpassword';
GRANT ALL PRIVILEGES ON newdb.* to 'username'@'localhost';
FLUSH PRIVILEGES;
quit
sudo apt-get install php7.0 php7.0-mysql
sudo apt-get install apache2 apache2-mod-php7.0
sudo apt-get install phpmyadmin

#jessie
sudo apt-get install apache2 -y
sudo apt-get install php5 libapache2-mod-php5 -y
sudo apt-get install mysql-server php5-mysql -y
sudo apt-get install phpmyadmin
sudo service apache2 restart
sudo nano /etc/apache2/apache2.conf
Include /etc/phpmyadmin/apache.conf
