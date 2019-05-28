# Get php extension directory path
extdir=$(php-config --extension-dir)

# Download ioncube and unpack
wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
tar -xvf ioncube_loaders_lin_x86-64.tar.gz

# Copy extension to php extension directory
sudo cp ioncube/ioncube_loader_lin_7.2.so "$extdir/ioncube_loader_lin_7.2.so"

# Cleanup
sudo rm ioncube_loaders_lin_x86-64.tar.gz
sudo rm -rf ioncube_loaders_lin_x86-64

# sudo touch ioncube.ini
sudo echo "zend_extension = $extdir/ioncube_loader_lin_7.2.so" > /etc/php/7.2/mods-available/ioncube.ini

# Create symlinks
sudo ln -s /etc/php/7.2/mods-available/ioncube.ini /etc/php/7.2/cli/conf.d/00-ioncube.ini
sudo ln -s /etc/php/7.2/mods-available/ioncube.ini /etc/php/7.2/fpm/conf.d/00-ioncube.ini

# Restart
sudo service php7.2-fpm restart