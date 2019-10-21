# Example for node 1 - localhost = socket
# Please change the ip-addresses
CREATE USER 'galerasync'@'192.168.1.11' IDENTIFIED BY '<password>';
GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'192.168.1.11';
CREATE USER 'galerasync'@'192.168.1.12' IDENTIFIED BY '<password>';
GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'192.168.1.12';
CREATE USER 'galerasync'@'localhost' IDENTIFIED BY '<password>';
GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'localhost';

# Example for node 2 - localhost = socket
# Please change the ip-addresses
CREATE USER 'galerasync'@'192.168.1.10' IDENTIFIED BY '<password>';
GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'192.168.1.10';
CREATE USER 'galerasync'@'192.168.1.12' IDENTIFIED BY '<password>';
GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'192.168.1.12';
CREATE USER 'galerasync'@'localhost' IDENTIFIED BY '<password>';
GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'localhost';

# Example for node 3 - localhost = socket
# Please change the ip-addresses
CREATE USER 'galerasync'@'192.168.1.10' IDENTIFIED BY '<password>';
GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'192.168.1.10';
CREATE USER 'galerasync'@'192.168.1.11' IDENTIFIED BY '<password>';
GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'192.168.1.11';
CREATE USER 'galerasync'@'localhost' IDENTIFIED BY '<password>';
GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'localhost';