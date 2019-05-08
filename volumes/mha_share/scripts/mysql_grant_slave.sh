mysql -uroot -p$MYSQL_ROOT_PASSWORD <<EOSQL
GRANT ALL ON *.* TO admin@'10.5.0.%' IDENTIFIED BY 'admin';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'10.5.0.%' IDENTIFIED BY 'repl';
reset master;
EOSQL
