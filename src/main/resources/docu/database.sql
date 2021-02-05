/*********************
 * MIGRATION SCRIPT
 *********************/

CREATE DATABASE rmadridbasket;

/*SITE_CONFIGURATION*/

CREATE TABLE site_configuration (
	id int PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	value LONGTEXT NOT NULL,
	updated TIMESTAMP
);

INSERT INTO site_configuration (name, value) VALUES ('title', 'rmadridbasket.es');
INSERT INTO site_configuration (name, value) VALUES ('description', 'Toda la actualidad sobre el Real Madrid de Baloncesto');
INSERT INTO site_configuration (name, value) VALUES ('keywords', 'real madrid, baloncesto, madrid, real, basket, basketball, acb, euroleague, euroliga, liga, endesa');
INSERT INTO site_configuration (name, value) VALUES ('author', 'rmadridbasket.es');
INSERT INTO site_configuration (name, value) VALUES ('copyright', 'rmadridbasket.es');


/*MENUS*/

CREATE TABLE menus (
	id int PRIMARY KEY AUTO_INCREMENT,
	menu VARCHAR(100) NOT NULL,
	item VARCHAR(100) NOT NULL,
	link VARCHAR(255) NOT NULL,
	item_order int NOT NULL, 
	updated TIMESTAMP
);

INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Resultados', '#', 1);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Clasificaciones', '#', 2);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Plantilla', '#', 3);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Palmar&eacute;s', '#', 4);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Contacta', '#', 5);