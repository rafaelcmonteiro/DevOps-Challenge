create database if not exists preferences;

use preferences;

create table preferences (
    `id` int NOT NULL AUTO_INCREMENT,
    `ip` VARCHAR(100),
    `preference` VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE USER IF NOT EXISTS 'backend'@'%' IDENTIFIED BY 'senha';
GRANT ALL PRIVILEGES on preferences.* TO 'backend'@'%';