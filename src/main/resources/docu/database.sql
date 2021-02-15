/*********************
 * MIGRATION SCRIPT
 *********************/

CREATE DATABASE rmadridbasket;

USE rmadridbasket;

/*SITE_CONFIGURATION*/

CREATE TABLE site_configuration (
	id int PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	value LONGTEXT NOT NULL,
	updated TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO site_configuration (name, `value`) VALUES ('site-title', 'RMadrid Basket');
INSERT INTO site_configuration (name, `value`) VALUES ('site-description', 'Toda la actualidad sobre el Real Madrid de Baloncesto');
INSERT INTO site_configuration (name, `value`) VALUES ('site-keywords', 'real madrid, baloncesto, madrid, real, basket, basketball, acb, euroleague, euroliga, liga, endesa');
INSERT INTO site_configuration (name, `value`) VALUES ('site-author', 'rmadridbasket.es');
INSERT INTO site_configuration (name, `value`) VALUES ('site-copyright', 'rmadridbasket.es');


/*MENUS*/

CREATE TABLE menus (
	id int PRIMARY KEY AUTO_INCREMENT,
	menu VARCHAR(100) NOT NULL,
	item VARCHAR(100) NOT NULL,
	link VARCHAR(255) NOT NULL,
	item_order int NOT NULL, 
	updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Resultados', '#', 1);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Clasificaciones', '#', 2);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Plantilla', '#', 3);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Palmar&eacute;s', '#', 4);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Contacta', '#', 5);


/*NEWS*/

CREATE TABLE news (
	id int PRIMARY KEY AUTO_INCREMENT, 
	title VARCHAR(100) NOT NULL,
	content LONGTEXT NOT NULL,
	link VARCHAR(255), 
	source VARCHAR(75),
	created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO news (title, content, link, source) VALUES ('Noticia n&uacute;mero 1', 'Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/>', 'http://example.link.com', 'marca.com');
INSERT INTO news (title, content, link, source) VALUES ('Noticia n&uacute;mero 2', 'Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/>', 'http://example.link.com', 'as.com');
INSERT INTO news (title, content, link, source) VALUES ('Noticia n&uacute;mero 3', 'Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/>', 'http://example.link.com', 'mundodeportivo.es');
INSERT INTO news (title, content, link, source) VALUES ('Noticia n&uacute;mero 4', 'Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/>', 'http://example.link.com', 'euroleague.com');
INSERT INTO news (title, content, link, source) VALUES ('Noticia n&uacute;mero 5', 'Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/>', 'http://example.link.com', 'Carlos Sanchez Blas');
INSERT INTO news (title, content, link, source) VALUES ('Noticia n&uacute;mero 6', 'Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/>', 'http://example.link.com', 'encestando.es');
INSERT INTO news (title, content, link, source) VALUES ('Noticia n&uacute;mero 7', 'Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/> Este es un texto de ejemplo. <br/>. Aqu&iacute; hay un salto de linea, a ver como sale. Este texto es de ejemplo, y se repetira varias veces. <br/>', 'http://example.link.com', 'eurosport.es');
INSERT INTO news (title, content, link, source) VALUES ('El Real Madrid cede al Betis a su joven perla Boris Tisma', 'Boris Tisma, uno de los jugadores más prometedores de la cantera del Real Madrid, jugará decido en el Coosur Real Betis, según ha publicado Eurohopes. El alero croata de 18 años y 2,05 metros trabajará a las órdenes de Joan Plaza y tratará de ayudar a que el equipo verdiblanco escape del pozo. Actualmente es antepenúltimo con un balance de cinco victorias y 16 derrotas.</p><p>El canterano madridista lleva en dinámica de la primera plantilla durante buena parte de la temporada y en los últimos partidos, ante los problemas físicos de varios jugadores, ha formado parte de las convocatorias de Pablo Laso. Sin embargo, no ha participado en ningún encuentro.</p><p>Tisma debutó con el primer equipo en la Liga Endesa la temporada pasada jugando 43 segundo en un encuentro ante el Casademont Zaragoza. En ese poco tiempo tuvo oportunidad de anotar su primera canasta en la competición. Esta campaña sólo ha participado en un encuentro, ante el Joventut, cuando disputó 3:20 sin llegar a lanzar a canasta.</p><p><em><strong><a href="https://seguro.marca.com/newsletters.html" target="_blank">Suscríbete a la Newsletter de Basket de MARCA</a></strong> y recibe en tu correo electrónico, de lunes a domingo y a primera hora de la mañana, las noticias exclusivas, entrevistas, reportajes, gráficos y vídeos que marcarán el día en la NBA, Liga Endesa, Euroliga y el resto del mundo de la canasta.', 'https://www.marca.com/baloncesto/acb/2021/02/08/60219f3046163f68118b45f1.html', 'marca.com');

/*GAMES*/

CREATE TABLE games (
	id int PRIMARY KEY AUTO_INCREMENT, 
	`local` VARCHAR(100) NOT NULL,
	visitor VARCHAR(100) NOT NULL, 
	score_local int NOT NULL DEFAULT 0, 
	score_visitor int NOT NULL DEFAULT 0,
	tournament_id int NOT NULL,
	round VARCHAR(75) NOT NULL,
	`date` TIMESTAMP NOT NULL,
	played BOOLEAN DEFAULT false,
	court VARCHAR(100) NOT NULL,
	channel_id int NOT NULL DEFAULT 1,
	updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO games (`local`, visitor, score_local, score_visitor, tournament_id, round, `date`, played, court, channel_id) VALUES ('Real Madrid', 'Valencia Basket', 85, 74, 3, '1/4 de Final', '2021-02-11 21:30:00', true, 'WiZink Center, Madrid', 1);
INSERT INTO games (`local`, visitor, score_local, score_visitor, tournament_id, round, `date`, played, court, channel_id) VALUES ('Real Madrid', 'F.C.Barcelona', 73, 88, 3, 'Final' , '2021-02-14 18:30:00', true, 'WiZink Center, Madrid', 1);


/*TOURNAMENTS*/

CREATE TABLE tournaments (
	id int PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	season VARCHAR(25) NOT NULL,
	updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO tournaments (name, season) VALUES ('Liga Endesa', '2020/21');
INSERT INTO tournaments (name, season) VALUES ('Euroleague', '2020/21');
INSERT INTO tournaments (name, season) VALUES ('Copa del Rey', '2021');


/*CHANNELS*/
CREATE TABLE channels (
	id int PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	platform VARCHAR(25) NOT NULL,
	updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO channels (name, platform) VALUES ('Vamos#', 'Movistar+');
INSERT INTO channels (name, platform) VALUES ('Canal Deportes1', 'Movistar+');
INSERT INTO channels (name, platform) VALUES ('Canal Deportes2', 'Movistar+');
INSERT INTO channels (name, platform) VALUES ('DAZN1', 'Movistar+');
INSERT INTO channels (name, platform) VALUES ('DAZN2', 'Movistar+');
INSERT INTO channels (name, platform) VALUES ('DAZN', 'DAZN');





