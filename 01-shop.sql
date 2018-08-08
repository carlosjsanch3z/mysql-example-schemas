DROP DATABASE shop;
CREATE DATABASE IF NOT EXISTS shop;
use shop;
CREATE TABLE IF NOT EXISTS customers (
	`id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `address` varchar(70) NOT NULL,
    `city` varchar(45) NOT NULL,
    `cp` int(5) unsigned NOT NULL,
    `country` varchar(45) NOT NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS dealers (
	`id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `hire_date` date NOT NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS pedidos (
	`id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
    `id_customer` smallint(5) unsigned NOT NULL,
    `id_dealer` smallint(5) unsigned NOT NULL,
    `date` date NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
    CONSTRAINT `fk_dealer` FOREIGN KEY (`id_dealer`) REFERENCES `dealers` (`id`) ON UPDATE CASCADE
);
INSERT INTO customers (name,address,city,cp,country) VALUES ('Barnoe','Camino Desencarregassis','Sevilla',41500,'Spain');
INSERT INTO customers (name,address,city,cp,country) VALUES ('Chustorry','Calle Assono','Cordoba',42000,'Spain');
INSERT INTO customers (name,address,city,cp,country) VALUES ('Rufy','Glorieta Cruiassis','Malaga',21000,'Spain');
INSERT INTO customers (name,address,city,cp,country) VALUES ('Suedra','Plaza Adossarien','Cadiz',30500,'Spain');
INSERT INTO customers (name,address,city,cp,country) VALUES ('Will','Alameda Solquessen','Jaen',55000,'Spain');
INSERT INTO customers (name,address,city,cp,country) VALUES ('Wilo','Pasadizo Esportellaria','Huelva',43678,'Spain');
INSERT INTO dealers (name,hire_date) VALUES ('Michael','2017-09-04');
INSERT INTO dealers (name,hire_date) VALUES ('Celeste','2017-08-12');
INSERT INTO dealers (name,hire_date) VALUES ('Yulen','2018-03-15');
INSERT INTO pedidos (id_customer,id_dealer,date) VALUES ('1','1','2017-09-06');
INSERT INTO pedidos (id_customer,id_dealer,date) VALUES ('2','1','2017-09-10');
INSERT INTO pedidos (id_customer,id_dealer,date) VALUES ('3','1','2017-09-20');
INSERT INTO pedidos (id_customer,id_dealer,date) VALUES ('3','2','2017-08-13');
INSERT INTO pedidos (id_customer,id_dealer,date) VALUES ('2','2','2017-09-01');
