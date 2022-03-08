# Example for node 1 - localhost = socket
# Please change the ip-addresses
CREATE USER 'galerasync'@'192.168.1.1' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON *.* TO 'galerasync'@'192.168.1.1';
CREATE USER 'galerasync'@'192.168.1.2' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON *.* TO 'galerasync'@'192.168.1.2';
CREATE USER 'galerasync'@'192.168.1.3' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON *.* TO 'galerasync'@'192.168.1.3';

