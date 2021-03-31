# MariaDB Galera Cluster - Configuration  

## General Informations
- 3 nodes recommended to avoid "split brain!"
- sst method rsync or mariadbbackup recommended, mysqldump is too slow
- galera package required  
- galera plugin-in (libgalera_smm.so) required (already included from mariadb 10.1) 
 
## Install packages (Ubuntu)  
- sudo apt-get update  
- sudo apt-get install mariadb-server  
- sudo apt-get install galera 
  
## Create user for sst-sync on every node
- You habe to create mariadb/mysql users on every cluster node for the other nodes. Use the same name on every node. Please change the IP-Address for every cluster node.  
  
- **Example:**   
  CREATE USER 'galerasync'@'192.168.1.10' IDENTIFIED BY 'secret';  
  GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'192.168.1.10';  
  CREATE USER 'galerasync'@'192.168.1.11' IDENTIFIED BY 'secret';  
  GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'192.168.1.11';  
  CREATE USER 'galerasync'@'localhost' IDENTIFIED BY 'secret';  
  GRAND ALL PRIVILIGES ON *.* TO 'galerasymc'@'localhost'; 
  
## my.cnf basic configuration for galera   
- **InnoDB** is required  
- **Cluster name** must be the **same** on every node (my.cnf)  
- take care, only the required user should be able to open your configuration file  
- the **configuration file includes credentials**  
  
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

## Start galera cluster   
Bootstrap the first node, it's also required after a cluster restart with one of the nodes  
**/usr/bin/galera_new_cluster**  
  
Now, you can start the other 2 nodes.  
**systemctl start mysql**    
  
## Support (NOT REQUIRED!)
**BTC:** 3KC43T8Z1WG9zo6B671Yt5YhKgxbUwtGG2  
**Paypal:** https://www.paypal.me/lindnerandre  
**If you want to support me or just check the spelling :-P**
