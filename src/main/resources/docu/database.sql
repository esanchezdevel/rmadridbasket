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

INSERT INTO site_configuration (name, `value`) VALUES ('contact-whoweare', 'rmadridbasket.es es una p&aacute;gina web que ha nacido para poder seguir toda la actualidad de la secci&oactute;n de Baloncesto del Real Madrid Club de F&uacute;tbol. Esta es una p&aacute;gina sin &aacute;nimo de lucro creada con el &uacute;nico objetivo de informar lo mejor posible. Dado que esta p&aacute;gina no es un medio de comunicación profesional, toda la informaci&oacute;n que podr&aacute;s encontrar aqu&iacute; es extraida de otros medios de comunicaci&oacute;n. Nuestra intenci&oacute;n es mencionar siempre a las fuentes de donde sacamos la informaci&oacute;n, por lo que le pedimos que si encuentra alguna anomal&iacute;a en ese aspecto nos informe para poder subsanarla lo antes posible.');
INSERT INTO site_configuration (name, `value`) VALUES ('contact-mail', 'esanchez.devel@gmail.com');

/*MENUS*/

CREATE TABLE menus (
	id int PRIMARY KEY AUTO_INCREMENT,
	menu VARCHAR(100) NOT NULL,
	item VARCHAR(100) NOT NULL,
	link VARCHAR(255) NOT NULL,
	item_order int NOT NULL, 
	updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Resultados', 'Results', 1);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Clasificaciones', '#', 2);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Plantilla', '#', 3);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Palmar&eacute;s', '#', 4);
INSERT INTO menus (menu, item, link, item_order) VALUES ('site-menu', 'Contacta', '/Contact', 5);


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
INSERT INTO games (`local`, visitor, score_local, score_visitor, tournament_id, round, `date`, played, court, channel_id) VALUES ('Valencia Basket', 'Real Madrid', 0, 0, 2, 'Jornada 25' , '2021-02-19 21:00:00', false, 'Pabell&oacute;n Fuente de San Luis', 6);
INSERT INTO games (`local`, visitor, score_local, score_visitor, tournament_id, round, `date`, played, court, channel_id) VALUES ('Real Madrid', 'Zalgiris Kaunas', 0, 0, 2, 'Jornada 26' , '2021-02-25 21:00:00', false, 'WiZink Center, Madrid', 1);
INSERT INTO games (`local`, visitor, score_local, score_visitor, tournament_id, round, `date`, played, court, channel_id) VALUES ('Real Madrid', 'San Pablo Burgos', 0, 0, 2, 'Jornada 24' , '2021-02-27 20:45:00', false, 'WiZink Center, Madrid', 1);


/* GAMES_STATS */

CREATE TABLE player_stats (
	id int PRIMARY KEY AUTO_INCREMENT, 
	game_id int NOT NULL,
	local_team BOOLEAN NOT NULL,
	`number` VARCHAR(10) NOT NULL,
	name VARCHAR(75) NOT NULL, 
	minutes VARCHAR(10) NOT NULL,
	points int NOT NULL,
	fg2 VARCHAR(10) NOT NULL,
	fg2_rate VARCHAR(10) NOT NULL,
	fg3 VARCHAR(10) NOT NULL,
	fg3_rate VARCHAR(10) NOT NULL,
	fg1 VARCHAR(10) NOT NULL,
	fg1_rate VARCHAR(10) NOT NULL,
	total_rebounds int NOT NULL,
	defensive_rebounds int NOT NULL,
	offensive_rebounds int NOT NULL,
	assists int NOT NULL,
	steals int NOT NULL,
	loses int NOT NULL,
	transitions int NOT NULL,
	blocks int NOT NULL,
	blocks_received int NOT NULL,
	slams int NOT NULL,
	fouls int NOT NULL,
	fouls_received int NOT NULL,
	difference VARCHAR(10) NOT NULL,
	rate VARCHAR(10) NOT NULL,
	updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

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





