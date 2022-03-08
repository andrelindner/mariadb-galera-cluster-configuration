# Example for node - localhost = socket
# Please change the ip-addresses
# https://dev.mysql.com/doc/refman/5.6/en/account-management-statements.html

CREATE USER 'galerasync'@'192.168.1.1' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON *.* TO 'galerasync'@'192.168.1.1';
CREATE USER 'galerasync'@'192.168.1.2' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON *.* TO 'galerasync'@'192.168.1.2';
CREATE USER 'galerasync'@'192.168.1.3' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON *.* TO 'galerasync'@'192.168.1.3';
CREATE USER 'galerasync'@'localhost' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON *.* TO 'galerasync'@'localhost';
