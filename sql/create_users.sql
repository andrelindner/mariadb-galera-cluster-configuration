# Example for node 1 - localhost = socket
# Please change the ip-addresses
CREATE USER 'galerasync'@'192.168.1.11' IDENTIFIED BY '<password>';
GRANT ALL PRIVILIGES ON *.* TO 'galerasync'@'192.168.1.11';
CREATE USER 'galerasync'@'192.168.1.12' IDENTIFIED BY '<password>';
GRANT ALL PRIVILIGES ON *.* TO 'galerasync'@'192.168.1.12';
CREATE USER 'galerasync'@'192.168.1.13' IDENTIFIED BY '<password>';
GRANT ALL PRIVILIGES ON *.* TO 'galerasync'@'192.168.1.13';

