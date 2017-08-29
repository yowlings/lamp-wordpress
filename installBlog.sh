apt-get update
apt-get install apache2 -y
apt-get install php -y
apt-get install libapache2-mod-php -y
apt-get install mysql-server -y
apt-get install libapache2-mod-auth-mysql -y
apt-get install php-mysql -y
/etc/init.d/apache2 restart
cd /var/www/html/
rm index.html
wget https://cn.wordpress.org/wordpress-4.8.1-zh_CN.zip
apt-get install unzip -y
unzip wordpress-4.8.1-zh_CN.zip
mv wordpress/* .
rm -r wordpress/
mkdir /var/www/html/wp-content/uploads/
chmod 777 /var/www/html/wp-content/uploads/
git clone https://github.com/yowlings/softpress.git /var/www/html/wp-content/themes/rocfeather/
