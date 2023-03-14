service mysql start
mysql -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -u root -e  "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%';"
mysql -u root -e "CREATE DATABASE ${MYSQL_DATABASE};"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} < db.sql
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"