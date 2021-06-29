# MariaDB Galera Cluster - Konfiguration  

## Allgemeine Informationen
- Mindestens 3 Knoten sind erforderlich"split brain!"
- sst method rsync oder mariadbbackup ist aus Performance Gründen zu empfehlen
- Galera Paket ist erforderlich, sollte im Standard jedoch bereits mit MariaDB installiert sein
- Galera Plugin-in (libgalera_smm.so) erforderlich (bereits bei mariadb 10.1 enthalten) 
- Nur InnoDB wird unterstützt
 
## Pakete installieren (Ubuntu)  
- sudo apt-get update  
- sudo apt-get install mariadb-server  
- sudo apt-get install galera 
  
## MySQL/MariaDB Benutzer für sst-sync erstellen
- Auf den einzelnen Knoten sind Benutzer für den Sync-Prozess anzulegen. Die IP-Adresse der jeweiligen Knoten muss in dem Codebeispiel angepasst werden.   
  
- **Beispiel:**   
  CREATE USER 'galerasync'@'192.168.1.10' IDENTIFIED BY '<PASSWORT>';  
  GRAND ALL PRIVILIGES ON *.* TO 'galerasync'@'192.168.1.10';  
  CREATE USER 'galerasync'@'192.168.1.11' IDENTIFIED BY '<PASSWORT>';  
  GRAND ALL PRIVILIGES ON *.* TO 'galerasync'@'192.168.1.11';  
  CREATE USER 'galerasync'@'localhost' IDENTIFIED BY '<PASSWORT>';  
  GRAND ALL PRIVILIGES ON *.* TO 'galerasync'@'localhost'; 
  
## my.cnf Basis Konfiguration   
- **InnoDB** ist Pflicht
- **Cluster name** muss auf allen Knoten der gleiche sein (my.cnf)  
- Es sollte sich gestellt werden, dass lediglich die benötigten Benutzer Zugriff auf die Konfigurations-Datei haben.  **Die Konfigurationsdatei enthält Zugangsdaten.**    
  
**[mysqld]**  
default_storage_engine=InnoDB  
binlog_format=ROW  
innodb_autoinc_lock_mode=2  
innodb_flush_log_at_trx_commit=0  
query_cache_size=0  
query_cache_type=0  
  
wsrep_on=ON  
wsrep_provider=/usr/lib/galera/libgalera_smm.so  
wsrep_cluster_address="gcomm://192.168.1.10,192.168.1.11,192.168.1.12"  
wsrep_cluster_name='Galera Cluster'  
wsrep_node_name='Node 1'  

wsrep_sst_method=rsync  
wsrep_sst_auth=galerasync:secret

## Start Galera Cluster   
Der erste Galera Cluster Knoten muss wie folgt gestartet werden.   
**/usr/bin/galera_new_cluster**  
  
Starten der 2 weiteren Knoten   
**systemctl start mysql**    
  
## Support 
**BTC:** 3KC43T8Z1WG9zo6B671Yt5YhKgxbUwtGG2  
**Paypal:** https://www.paypal.me/lindnerandre  
