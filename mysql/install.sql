CREATE DATABASE femr;
CREATE USER 'femr'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON femr.* TO 'femr'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'maxwell'@'localhost' IDENTIFIED BY 'secret';
GRANT ALL ON maxwell.* TO 'maxwell'@'localhost';
GRANT SELECT, REPLICATION CLIENT, REPLICATION SLAVE ON *.* TO 'maxwell'@'localhost';
