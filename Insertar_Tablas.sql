--Insercion de Estadios
INSERT INTO public.estadio VALUES
(1, 'Doha', 'Ras Abu Aboud', 1000, 'Lavalle 465', 40000), (2, 'Doha', 'Khalifa', 1200, 'Gobernador Aldao 240', 45416), 
(3, 'Al Rayyan', 'Ahman Bin Ali', 1500, 'Laprida 100', 45000), (4, 'Al-Khor', 'Al Bayt', 2000, 'Leandro Alem 800', 60000), 
(5, 'Al-Wakrah', 'Al Janoub', 1000, 'Saavedra 123', 40000), (6, 'Doha', 'Al Thumana', 1000, 'San Martin 895', 40000), 
(7, 'Al-Khor', 'Education City', 1200, 'Belgrano 400', 45350), (8, 'Al Rayyan', 'Qatar Fundation', 1100, 'Balcarce 632', 42000),
(9, 'Lusail', 'Lusail', 3000, 'Almirante Brown 222', 80000), (10, 'Doha', 'Alnassr', 2000, 'Italia 650', 60000);

--Insercion de Grupos y Selecciones con el debido update ya que sino se genera conflicto con las fk
INSERT INTO public.grupo VALUES 
('A', NULL), ('B', NULL), ('C', NULL);

--Insercion de Selecciones
INSERT INTO public.seleccion VALUES 
('Argentina', 'Ras Abu Aboud', 'A'), ('Francia', 'Khalifa', 'A'), ('Brasil', 'Ahman Bin Ali', 'A'), 
('Espania', 'Al Bayt', 'A'), ('Paises Bajos', 'Al Janoub', 'B'), ('Inglaterra', 'Al Thumana', 'B'), 
('Uruguay', 'Education City', 'B'), ('Belgica', 'Qatar Fundation', 'B'), ('Portugal', 'Lusail', 'C'),
('Mexico', 'Alnassr', 'C');

UPDATE public.Grupo SET cabecera='Argentina' WHERE id_grupo='A';
UPDATE public.Grupo SET cabecera='Belgica' WHERE id_grupo='B';
UPDATE public.Grupo SET cabecera='Portugal' WHERE id_grupo='C';

--Insercion de Integrantes de Cuerpo Tecnico de Selecciones
INSERT INTO public.integrante_cuerpo_tecnico VALUES 
('AAA597057', 'Tecnico', 'Lionel', 'Scaloni', 'Argentina'), ('BBB628590', 'Tecnico', 'Didier', 'Deschamps', 'Francia'), 
('CCC734926', 'Tecnico', 'Ramon', 'Menezes', 'Brasil'), ('DDD814815', 'Tecnico', 'Luis', 'De la Fuente', 'Espania'), 
('EEE443628', 'Tecnico', 'Louis', 'Van Gaal', 'Paises Bajos'), ('FFF621120', 'Tecnico', 'Gareth', 'Southgate', 'Inglaterra'),
('GGG474476', 'Tecnico', 'Oscar', 'Tabarez', 'Uruguay'), ('HHH108987',  'Tecnico', 'Domenico', 'Tedesco', 'Belgica'), 
('JJJ361342', 'Tecnico', 'Roberto', 'Martinez', 'Portugal'), ('KKK380408', 'Tecnico', 'Diego', 'Cocca', 'Mexico'); 

--Insercion de los Arbitros
INSERT INTO public.arbitro VALUES
('LLL524461', 'Pierluigi', 'Colino', 'Italiano'), ('MMM473556', 'Sandor', 'Puhl', 'Hungaro'),('NNN749635', 'Massimo', 'Busacca', 'Suizo'),
('OOO831226', 'Horacio', 'Elizondo', 'Argentino'),('PPP663179', 'Howard', 'Webb', 'Ingles'),('QQQ376182', 'Markus', 'Merk', 'Aleman'),
('RRR448487', 'Nestor', 'Pitana', 'Argentino'),('SSS283211', 'Nicola', 'Rizzoli', 'Italiano'),('TTT982450', 'Feliz', 'Brych', 'Aleman'),
('UUU261305', 'Mark', 'Clattenburg', 'Ingles'),('VVV914635', 'Ivan', 'Barton', 'Guatemalteco'),('WWW873145', 'Cristopher', 'Beath', 'Australiano'),
('XXX574318', 'Matthew', 'Conger', 'Neozelandes'),('YYY582347', 'Ismail', 'Elfath', 'Estadounidense'),('ZZZ315260', 'Alireza', 'Faghani', 'Irani'),
('ABC803100', 'Bakary', 'Gassama', 'Cubano'),('DEF804157', 'Mustapha', 'Ghorbal', 'Argelino'),('GHI993655', 'Victor', 'Gomes', 'Sudafricano'),
('JKL357410', 'Istvan', 'Kovacs', 'Rumano'),('MNO857332', 'Ning', 'Ma', 'Chino');

--Insercion de Jugadores
INSERT INTO public.jugador VALUES
('AAA539887', 1, 'Arquero', 'Martinez', 'Emiliano', '23', 'El Dibu', 'Argentina'), ('AAA506404', 2, 'Defensor', 'Otamendi', 'Nicolas', '19', 'Comandante', 'Argentina'), 
('AAA770099', 3, 'Defensor', 'Martinez', 'Lisandro', '25', 'Licha', 'Argentina'), ('AAA253413', 4, 'Defensor', 'Romero', 'Cristian', '13', 'Cuti', 'Argentina'), 
('AAA617282', 5, 'Mediocampista', 'De Paul', 'Rodrigo', '7', 'Motorcito', 'Argentina'), ('AAA415230', 6 , 'Mediocampista', 'Paredes', 'Leandro', '5', 'Lea', 'Argentina'), 
('AAA513624', 7, 'Mediocampista', 'Mac Allister', 'Alexis', '20', 'Alexis', 'Argentina'), ('AAA991642', 8, 'Delantero', 'Di Maria', 'Angel', '11', 'Fideo', 'Argentina'), 
('AAA867707', 9, 'Delantero', 'Alvarez', 'Julian', '9', 'Arania', 'Argentina'), ('AAA358661', 10, 'Delantero', 'Messi', 'Lionel', '10', 'Leo', 'Argentina'), 
('BBB600993', 1, 'Arquero', 'LLoris', 'Hugo', '1', 'Hugo', 'Francia'), ('BBB472911', 2, 'Defensor', 'Umtiti', 'Samuel', '5', 'Sam', 'Francia'), 
('BBB338963', 3, 'Defensor', 'Varane', 'Rafael', '4', 'Rafa', 'Francia'), ('BBB577773', 4, 'Defensor', 'Pavard', 'Benjamin', '21', 'Beni', 'Francia'), 
('BBB523584', 5, 'Mediocampista', 'Kante', 'Ngolo', '13', 'Kante', 'Francia'), ('BBB249714', 6 , 'Mediocampista', 'Pogba', 'Paul', '6', 'Pogba', 'Francia'), 
('BBB436963', 7, 'Mediocampista', 'Camavinga', 'Eduardo', '15', 'Kama', 'Francia'), ('BBB189443', 8, 'Delantero', 'Griezzman', 'Antoine', '7', 'Principito', 'Francia'), 
('BBB951122', 9, 'Delantero', 'Mbappe', 'Kylian', '10', 'Tortuga', 'Francia'), ('BBB741294', 10, 'Delantero', 'Giroud', 'Oliver', '9', 'Oli', 'Francia'), 
('CCC628399', 1, 'Arquero', 'Allison', 'Becker', '1', 'Alisson', 'Brasil'), ('CCC913110', 2, 'Defensor', 'Silva', 'Thiago', '3', 'Thiago', 'Brasil'), 
('CCC118451', 3, 'Defensor', 'Aoas Correa', 'Marcos', '4', 'Marquinhos', 'Brasil'), ('CCC322860', 4, 'Defensor', 'Militao', 'Eder', '14', 'Eder', 'Brasil'), 
('CCC568390', 5, 'Mediocampista', 'Casimiro', 'Carlos', '5', 'Casemiro', 'Brasil'), ('CCC718417', 6 , 'Mediocampista', 'Paqueta', 'Lucas', '7', 'Luca', 'Brasil'), 
('CCC467542', 7, 'Mediocampista', 'Da Silva', 'Danilo', '2', 'Danilo', 'Brasil'), ('CCC193338', 8, 'Delantero', 'Da Silva Santos Jr', 'Neymar', '10', 'Ney', 'Brasil'), 
('CCC483495', 9, 'Delantero', 'de Andrade', 'Richarlison', '9', 'Picante', 'Brasil'), ('CCC892561', 10, 'Delantero', 'Vinicius Jr', 'Jose', '20', 'Vini', 'Brasil'), 
('DDD750565', 1, 'Arquero', 'Unai', 'Simon', '23', 'Unai', 'Espania'), ('DDD885266', 2, 'Defensor', 'Torres', 'Pau', '4', 'Pau', 'Espania'), 
('DDD535216', 3, 'Defensor', 'Garcia', 'Eric', '3', 'Eri', 'Espania'), ('DDD723558', 4, 'Defensor', 'Laporte', 'Aymeric', '24', 'Laporte', 'Espania'), 
('DDD806216', 5, 'Mediocampista', 'Busquets', 'Sergio', '5', 'Busi', 'Espania'), ('DDD746796', 6 , 'Mediocampista', 'Paez Gaviria', 'Pablo', '9', 'Gavi', 'Espania'), 
('DDD974553', 7, 'Mediocampista', 'Gonzalez', 'Pedro', '26', 'Pedri', 'Espania'), ('DDD836491', 8, 'Delantero', 'Fati', 'Ansu', '25', 'Ansu', 'Espania'), 
('DDD649437', 9, 'Delantero', 'Torres', 'Ferran', '11', 'Ferran', 'Espania'), ('DDD163019', 10, 'Delantero', 'Morata', 'Alvaro', '7', 'Alvaro', 'Espania'), 
('EEE793155', 1, 'Arquero', 'Bijlow', 'Justin', '1', 'Bijlow', 'Paises Bajos'), ('EEE585322', 2, 'Defensor', 'Van Dijk', 'Virgil', '4', 'Virgil', 'Paises Bajos'), 
('EEE971129', 3, 'Defensor', 'Dumfires', 'Denzel', '22', 'Denzel', 'Paises Bajos'), ('EEE256108', 4, 'Defensor', 'Blind', 'Daley', '3', 'Daley', 'Paises Bajos'), 
('EEE954886', 5, 'Mediocampista', 'De Jong', 'Frenkie', '21', 'Frenkie', 'Paises Bajos'), ('EEE997338', 6, 'Mediocampista', 'Wijnaldum', 'Georginio', '8', 'Gigi', 'Paises Bajos'), 
('EEE420604', 7, 'Mediocampista', 'Klassen', 'Daavy', '14', 'Davy', 'Paises Bajos'), ('EEE353471', 8, 'Delantero', 'Depay', 'Memphis', '10', 'Memphis', 'Paises Bajos'), 
('EEE412705', 9, 'Delantero', 'Danjuma', 'Arnaut', '15', 'Arnaut', 'Paises Bajos'), ('EEE347411', 10, 'Delantero', 'Bergwijn', 'Steven', '11', 'Steven', 'Paises Bajos'), 
('FFF553044', 1, 'Arquero', 'Henderson', 'Jordan', '1', 'Jordan', 'Inglaterra'), ('FFF432013', 2, 'Defensor', 'Stones', 'John', '4', 'John', 'Inglaterra'), 
('FFF749266', 3, 'Defensor', 'Trippier', 'Alexis', '2', 'Trippier', 'Inglaterra'), ('FFF571067', 4, 'Defensor', 'Shaw', 'Luke', '17', 'Luke', 'Inglaterra'), 
('FFF479677', 5, 'Mediocampista', 'Rice', 'Declan', '6', 'Declan', 'Inglaterra'), ('FFF235819', 6 , 'Mediocampista', 'Foden', 'Phil', '8', 'Cararoja', 'Inglaterra'), 
('FFF865649', 7, 'Mediocampista', 'Sancho', 'Jadon', '7', 'Sancho', 'Inglaterra'), ('FFF458620', 8, 'Delantero', 'Rashford', 'Marcus', '11', 'Picante', 'Inglaterra'), 
('FFF726043', 9, 'Delantero', 'Kane', 'Harry', '9', 'El Oficinista', 'Inglaterra'), ('FFF925578', 10, 'Delantero', 'Sterling', 'Raheem', '10', 'Sterling', 'Inglaterra'), 
('GGG244417', 1, 'Arquero', 'Rochet', 'Sergio', '12', 'Sergio', 'Uruguay'), ('GGG280855', 2, 'Defensor', 'Godin', 'Diego', '3', 'El Faraon', 'Uruguay'), 
('GGG146101', 3, 'Defensor', 'Araujo', 'Ronald', '4', 'Ronald', 'Uruguay'), ('GGG684268', 4, 'Defensor', 'Coates', 'Sebastian', '19', 'Seba', 'Uruguay'), 
('GGG255099', 5, 'Mediocampista', 'Valverde', 'Federico', '15', 'Pajarito', 'Uruguay'), ('GGG634524', 6 , 'Mediocampista', 'Torreira', 'Lucas', '14', 'Lucas', 'Uruguay'), 
('GGG512422', 7, 'Mediocampista', 'Bentancur', 'Rodrigo', '6', 'Rodri', 'Uruguay'), ('GGG349295', 8, 'Delantero', 'Cavani', 'Edinson', '21', 'Pistolero', 'Uruguay'), 
('GGG126519', 9, 'Delantero', 'Suarez', 'Luis', '9', 'Lucho', 'Uruguay'), ('GGG617557', 10, 'Delantero', 'De La Cruz', 'Nicolas', '7', 'Nico', 'Uruguay'), 
('HHH503206', 1, 'Arquero', 'Courtois', 'Thibaut', '1', 'Courtois', 'Belgica'), ('HHH308332', 2, 'Defensor', 'Denayer', 'Jason', '3', 'Jason', 'Belgica'), 
('HHH867985', 3, 'Defensor', 'Vertonghen', 'Jan', '5', 'Jan', 'Belgica'), ('HHH167714', 4, 'Defensor', 'Alderweireld', 'Toby', '2', 'Toby', 'Belgica'), 
('HHH386207', 5, 'Mediocampista', 'De Bruyne', 'Kevin', '7', 'KDB', 'Belgica'), ('HHH977909', 6 , 'Mediocampista', 'Meunier', 'Thomas', '8', 'Meunier', 'Belgica'), 
('HHH280469', 7, 'Mediocampista', 'Witsel', 'Axel', '6', 'Axel', 'Belgica'), ('HHH545839', 8, 'Delantero', 'Carrasco', 'Yannick', '11', 'Carrasco', 'Belgica'), 
('HHH548014', 9, 'Delantero', 'Hazard', 'Eden', '10', 'Eden', 'Belgica'), ('HHH746518', 10, 'Delantero', 'Lukaku', 'Romelu', '9', 'Lukaku', 'Belgica'), 
('JJJ562831', 1, 'Arquero', 'Costa', 'Diogo', '1', 'Diogo', 'Portugal'), ('JJJ205064', 2, 'Defensor', 'Dias', 'Ruben', '4', 'Ruben', 'Portugal'), 
('JJJ244834', 3, 'Defensor', 'Cancelo', 'Joao', '20', 'Joao', 'Portugal'), ('JJJ175033', 4, 'Defensor', 'Guerreiro', 'Raphael', '5', 'Rafa', 'Portugal'), 
('JJJ264327', 5, 'Mediocampista', 'Silva', 'Bernardo', '11', 'Bernardo', 'Portugal'), ('JJJ645714', 6 , 'Mediocampista', 'Fernandes', 'Bruno', '8', 'Bruno', 'Portugal'), 
('JJJ514023', 7, 'Mediocampista', 'Moutinho', 'Joao', '19', 'Mout', 'Portugal'), ('JJJ900597', 8, 'Delantero', 'Ronaldo', 'Cristiano', '7', 'CR7',  'Portugal'), 
('JJJ694647', 9, 'Delantero', 'Felix', 'Joao', '10', 'Joao', 'Portugal'), ('JJJ620188', 10, 'Delantero', 'Jota', 'Diogo', '21', 'Diogo', 'Portugal'), 
('KKK873503', 1, 'Arquero', 'Ochoa', 'Guillermo', '13', 'Memo', 'Mexico'), ('KKK529276', 2, 'Defensor', 'Montes', 'Cesar', '3', 'Cesar', 'Mexico'), 
('KKK536749', 3, 'Defensor', 'Sanchez', 'Jorge', '19', 'Jorge', 'Mexico'), ('KKK935553', 4, 'Defensor', 'Moreno', 'Hector', '15', 'Hector', 'Mexico'), 
('KKK992565', 5, 'Mediocampista', 'Alvarez', 'Edison', '4', 'Edi', 'Mexico'), ('KKK720028', 6 , 'Mediocampista', 'Guardado', 'Andres', '18', 'Andres', 'Mexico'), 
('KKK988836', 7, 'Mediocampista', 'Herrera', 'Hector', '16', 'Hector', 'Mexico'), ('KKK398115', 8, 'Delantero', 'Lozano', 'Hirving', '22', 'Chuky', 'Mexico'), 
('KKK687003', 9, 'Delantero', 'Funes Mori', 'Ramiro', '11', 'Rami', 'Mexico'), ('KKK327648', 10, 'Delantero', 'Vega', 'Alexis', '10', 'Alexis', 'Mexico');

--Insercion de Tiempos Reglamentarios
 INSERT INTO public.tiempo_Reglamentario VALUES
('1', 3, 4), ('2', 2, 4), ('3', 5, 1), ('4', 4, 2), ('5', 1, 10), ('6', 1, 4), ('7', 4, 3), ('8', 3, 3), ('9', 2, 6), ('10', 2, 5); 

--Insercion de los Partidos
INSERT INTO public.partido VALUES
('1', 'Local', '20:00', '18/12/2022', '9', '1', 'Argentina', 'Francia'), ('2', 'Local', '12:00', '17/12/2022', '10', '2', 'Brasil', 'Espania'), ('3', 'Empate', '16:00', '16/12/2022', '1', '3', 'Inglaterra', 'Paises Bajos'),
('4', 'Visita', '12:00', '15/12/2022', '2', '4', 'Belgica', 'Uruguay'), ('5', 'Visita', '16:00', '14/12/2022', '3', '5', 'Mexico', 'Portugal'), ('6', 'Visita', '12:00', '13/12/2022', '4', '6', 'Brasil', 'Argentina'), 
('7', 'Local', '16:00', '12/12/2022', '5', '7', 'Francia', 'Espania'), ('8', 'Local', '20:00', '11/12/2022', '6', '8', 'Uruguay', 'Paises Bajos'), ('9', 'Empate', '12:00', '10/12/2022', '7', '9', 'Inglaterra', 'Belgica'), 
('10', 'Local', '20:00', '9/12/2022', '8', '10', 'Argentina', 'Paises Bajos');

--Insercion de reemplazos de arbitros
INSERT INTO public.reemplaza VALUES
('1', 'LLL524461', 'VVV914635', FALSE), ('2', 'TTT982450', 'WWW873145', FALSE), ('3', 'RRR448487', 'XXX574318', FALSE), ('4', 'PPP663179', 'YYY582347', FALSE), 
('5', 'NNN749635', 'ZZZ315260', TRUE), ('6', 'LLL524461', 'ABC803100', FALSE), ('7', 'TTT982450', 'DEF804157', FALSE), ('8', 'RRR448487', 'GHI993655', FALSE), 
('9', 'PPP663179', 'JKL357410', FALSE), ('10', 'UUU261305', 'MNO857332', TRUE);

--Insercion de Partidos en fase de grupos
INSERT INTO public.partido_grupo VALUES
('1', '3', 'Ronda1'), ('2', '4', 'Ronda1'), ('3', '5', 'Ronda1'), ('4', '8', 'Ronda2'), ('5', '9', 'Ronda3'); 

--Insercion de Partidos de fase de eliminacion
 INSERT INTO public.partido_eliminacion VALUES
('1', '1', 'Final'), ('2', '6', 'Semifinal'), ('3', '7', 'Semifinal'), ('4', '10', 'Cuartos'), ('5', '2', 'Cuartos'); 

--Insercion de las Planillas
INSERT INTO public.planilla_partido VALUES 
('1', '1'), ('2', '2'), ('3', '3'), ('4', '4'), ('5', '5'), ('6', '6'), ('7','7'), ('8', '8'), ('9','9'), ('10', '10'), 
('11', '1'), ('12', '2'), ('13', '3'), ('14', '4'), ('15', '5'), ('16', '6'), ('17', '7'), ('18', '8'), ('19', '9'), ('20', '10');

--Insercion de los Goles en el mundial
INSERT INTO public.gol VALUES
('1', 22, 'Penal', '1', 'AAA358661'), ('2', 35, 'Jugada', '1', 'AAA991642'), ('3', 109, 'Jugada', '1', 'AAA358661'), ('4', 70, 'Penal', '1', 'BBB951122'), 
('5', 72, 'Jugada', '1', 'BBB951122'), ('6', 116, 'Penal', '1', 'BBB951122'), ('7', 90, 'En Contra', '2', 'DDD535216'), ('8', 2, 'De Esquina', '4', 'GGG280855'), 
('9', 20, 'Tiro Libre', '5', 'JJJ900597'), ('10', 34, 'Jugada', '6', 'AAA991642'), ('11', 49, 'Jugada', '7', 'BBB189443'), ('12', 55, 'Jugada', '8', 'GGG126519'), 
('13', 66, 'Tiro Libre', '10', 'AAA867707'), ('14', 80, 'De Esquina', '10', 'AAA358661'), ('15', 17, 'De Esquina', '10', 'EEE353471');

--Insercion de composicion de Planillas
INSERT INTO public.figura_en VALUES
('AAA539887', '1', TRUE), ('AAA506404', '1', TRUE), ('AAA770099', '1', TRUE), ('AAA253413', '1', TRUE), ('AAA617282', '1', TRUE), ('AAA415230', '1', TRUE), ('AAA513624', '1', TRUE), ('AAA991642', '1', TRUE), 
('AAA867707', '1', TRUE), ('AAA358661', '1', TRUE), ('DDD750565', '2', TRUE), ('DDD885266', '2', TRUE), ('DDD535216', '2', TRUE), ('DDD723558', '2', TRUE), ('DDD806216', '2', TRUE), ('DDD746796', '2', TRUE), 
('DDD974553', '2', TRUE), ('DDD836491', '2', TRUE), ('DDD649437', '2', TRUE), ('DDD163019', '2', TRUE), ('EEE793155', '3', TRUE), ('EEE585322', '3', TRUE), ('EEE971129', '3', TRUE), ('EEE256108', '3', TRUE), 
('EEE954886', '3', TRUE), ('EEE997338', '3', TRUE), ('EEE420604', '3', TRUE), ('EEE353471', '3', TRUE), ('EEE412705', '3', TRUE), ('EEE347411', '3', TRUE), ('GGG244417', '4', TRUE), ('GGG280855', '4', TRUE), 
('GGG146101', '4', TRUE), ('GGG684268', '4', TRUE), ('GGG255099', '4', TRUE), ('GGG634524', '4', TRUE), ('GGG512422', '4', TRUE), ('GGG349295', '4', TRUE), ('GGG126519', '4', TRUE), ('GGG617557', '4', TRUE), 
('JJJ562831', '5', TRUE), ('JJJ205064', '5', TRUE), ('JJJ244834', '5', TRUE), ('JJJ175033', '5', TRUE), ('JJJ264327', '5', TRUE), ('JJJ645714', '5', TRUE), ('JJJ514023', '5', TRUE), ('JJJ900597', '5', TRUE), 
('JJJ694647', '5', TRUE), ('JJJ620188', '5', TRUE), ('AAA539887', '6', TRUE), ('AAA506404', '6', TRUE), ('AAA770099', '6', TRUE), ('AAA253413', '6', TRUE), ('AAA617282', '6', TRUE), ('AAA415230', '6', TRUE), 
('AAA513624', '6', TRUE), ('AAA991642', '6', TRUE), ('AAA867707', '6', TRUE), ('AAA358661', '6', TRUE), ('DDD750565', '7', TRUE), ('DDD885266', '7', TRUE), ('DDD535216', '7', TRUE), ('DDD723558', '7', TRUE), 
('DDD806216', '7', TRUE), ('DDD746796', '7', TRUE), ('DDD974553', '7', TRUE), ('DDD836491', '7', TRUE), ('DDD649437', '7', TRUE), ('DDD163019', '7', TRUE), ('EEE793155', '8', TRUE), ('EEE585322', '8', TRUE), 
('EEE971129', '8', TRUE), ('EEE256108', '8', TRUE), ('EEE954886', '8', TRUE), ('EEE997338', '8', TRUE), ('EEE420604', '8', TRUE), ('EEE353471', '8', TRUE), ('EEE412705', '8', TRUE), ('EEE347411', '8', TRUE), 
('FFF553044', '9', TRUE), ('FFF432013', '9', TRUE), ('FFF749266', '9', TRUE), ('FFF571067', '9', TRUE), ('FFF479677', '9', TRUE), ('FFF235819', '9', TRUE), ('FFF865649', '9', TRUE), ('FFF458620', '9', TRUE), 
('FFF726043', '9', TRUE), ('FFF925578', '9', TRUE), ('EEE793155', '10', TRUE), ('EEE585322', '10', TRUE), ('EEE971129', '10', TRUE), ('EEE256108', '10', TRUE), ('EEE954886', '10', TRUE), ('EEE997338', '10', TRUE), 
('EEE420604', '10', TRUE), ('EEE353471', '10', TRUE), ('EEE412705', '10', TRUE), ('EEE347411', '10', TRUE), ('BBB600993', '11', TRUE), ('BBB472911', '11', TRUE), ('BBB338963', '11', TRUE), ('BBB577773', '11', TRUE), 
('BBB523584', '11', TRUE), ('BBB249714', '11', TRUE), ('BBB436963', '11', TRUE), ('BBB189443', '11', TRUE), ('BBB951122', '11', TRUE), ('BBB741294', '11', TRUE), ('CCC628399', '12', TRUE), ('CCC913110', '12', TRUE), 
('CCC118451', '12', TRUE), ('CCC322860', '12', TRUE), ('CCC568390', '12', TRUE), ('CCC718417', '12', TRUE), ('CCC467542', '12', TRUE), ('CCC193338', '12', TRUE), ('CCC483495', '12', TRUE), ('CCC892561', '12', TRUE), 
('FFF553044', '13', TRUE), ('FFF432013', '13', TRUE), ('FFF749266', '13', TRUE), ('FFF571067', '13', TRUE), ('FFF479677', '13', TRUE), ('FFF235819', '13', TRUE), ('FFF865649', '13', TRUE), ('FFF458620', '13', TRUE), 
('FFF726043', '13', TRUE), ('FFF925578', '13', TRUE), ('HHH503206', '14', TRUE), ('HHH308332', '14', TRUE), ('HHH867985', '14', TRUE), ('HHH167714', '14', TRUE), ('HHH386207', '14', TRUE), ('HHH977909', '14', TRUE), 
('HHH280469', '14', TRUE), ('HHH545839', '14', TRUE), ('HHH548014', '14', TRUE), ('HHH746518', '14', TRUE), ('KKK873503', '15', TRUE), ('KKK529276', '15', TRUE), ('KKK536749', '15', TRUE), ('KKK935553', '15', TRUE), 
('KKK992565', '15', TRUE), ('KKK720028', '15', TRUE), ('KKK988836', '15', TRUE), ('KKK398115', '15', TRUE), ('KKK687003', '15', TRUE), ('KKK327648', '15', TRUE), ('CCC628399', '16', TRUE), ('CCC913110', '16', TRUE), 
('CCC118451', '16', TRUE), ('CCC322860', '16', TRUE), ('CCC568390', '16', TRUE), ('CCC718417', '16', TRUE), ('CCC467542', '16', TRUE), ('CCC193338', '16', TRUE), ('CCC483495', '16', TRUE), ('CCC892561', '16', TRUE), 
('BBB600993', '17', TRUE), ('BBB472911', '17', TRUE), ('BBB338963', '17', TRUE), ('BBB577773', '17', TRUE), ('BBB523584', '17', TRUE), ('BBB249714', '17', TRUE), ('BBB436963', '17', TRUE), ('BBB189443', '17', TRUE), 
('BBB951122', '17', TRUE), ('BBB741294', '17', TRUE), ('GGG244417', '18', TRUE), ('GGG280855', '18', TRUE), ('GGG146101', '18', TRUE), ('GGG684268', '18', TRUE), ('GGG255099', '18', TRUE), ('GGG634524', '18', TRUE), 
('GGG512422', '18', TRUE), ('GGG349295', '18', TRUE), ('GGG126519', '18', TRUE), ('GGG617557', '18', TRUE), ('HHH503206', '19', TRUE), ('HHH308332', '19', TRUE), ('HHH867985', '19', TRUE), ('HHH167714', '19', TRUE), 
('HHH386207', '19', TRUE), ('HHH977909', '19', TRUE), ('HHH280469', '19', TRUE), ('HHH545839', '19', TRUE), ('HHH548014', '19', TRUE), ('HHH746518', '19', TRUE), ('AAA539887', '20', TRUE), ('AAA506404', '20', TRUE), 
('AAA770099', '20', TRUE), ('AAA253413', '20', TRUE), ('AAA617282', '20', TRUE), ('AAA415230', '20', TRUE), ('AAA513624', '20', TRUE), ('AAA991642', '20', TRUE), ('AAA867707', '20', TRUE), ('AAA358661', '20', TRUE);

--Insercion de redaccion de Planillas
 INSERT INTO public.redactada_por VALUES 
('1', 'Argentina', 'AAA597057'), ('2','Espania', 'DDD814815'), ('3', 'Paises Bajos', 'EEE443628'), ('4', 'Uruguay', 'GGG474476'), ('5', 'Portugal', 'JJJ361342'), ('6', 'Argentina', 'AAA597057'), ('7', 'Espania', 'DDD814815'), 
('8', 'Paises Bajos', 'EEE443628'), ('9', 'Inglaterra', 'FFF621120'), ('10', 'Paises Bajos', 'EEE443628'), ('11', 'Francia', 'BBB628590'), ('12', 'Brasil', 'CCC734926'), ('13', 'Inglaterra', 'FFF621120'), ('14', 'Belgica', 'HHH108987'), 
('15', 'Mexico', 'KKK380408'), ('16', 'Brasil', 'CCC734926'), ('17', 'Francia', 'BBB628590'), ('18', 'Uruguay', 'GGG474476'), ('19', 'Belgica', 'HHH108987'), ('20', 'Argentina', 'AAA597057');

--Insercion de Jueces correspondientes a los partidos
INSERT INTO public.dirigido_por VALUES
('1', 'LLL524461', 'Principal'), ('1', 'MMM473556', 'Lateral Derecho'), ('1', 'NNN749635', 'Lateral Izquierdo'), ('1', 'OOO831226', 'VAR'), ('1', 'PPP663179', 'VAR'), ('1', 'QQQ376182', 'VAR'), 
('1', 'RRR448487', 'VAR'), ('1', 'SSS283211', 'VAR'), ('2', 'TTT982450', 'Principal'), ('2', 'UUU261305', 'Lateral Derecho'), ('2', 'LLL524461', 'Lateral Izquierdo'), ('2', 'MMM473556', 'VAR'), 
('2', 'NNN749635', 'VAR'), ('2', 'OOO831226', 'VAR'), ('2', 'PPP663179', 'VAR'), ('2', 'QQQ376182', 'VAR'), ('3', 'RRR448487', 'Principal'), ('3', 'SSS283211', 'Lateral Derecho'), ('3', 'TTT982450', 'Lateral Izquierdo'), 
('3', 'UUU261305', 'VAR'), ('3', 'LLL524461', 'VAR'), ('3', 'MMM473556', 'VAR'), ('3', 'NNN749635', 'VAR'), ('3', 'OOO831226', 'VAR'), ('4', 'PPP663179', 'Principal'), ('4',  'QQQ376182', 'Lateral Derecho'), 
('4', 'RRR448487', 'Lateral Izquierdo'), ('4', 'SSS283211', 'VAR'), ('4', 'TTT982450', 'VAR'), ('4', 'UUU261305', 'VAR'), ('4', 'LLL524461', 'VAR'), ('4', 'MMM473556', 'VAR'), ('5', 'NNN749635', 'Principal'), 
('5', 'OOO831226', 'Lateral Derecho'), ('5', 'PPP663179', 'Lateral Izquierdo'), ('5', 'QQQ376182', 'VAR'), ('5', 'RRR448487', 'VAR'), ('5', 'SSS283211', 'VAR'), ('5', 'TTT982450', 'VAR'), ('5', 'UUU261305', 'VAR'), 
('6', 'LLL524461', 'Principal'), ('6', 'MMM473556', 'Lateral Derecho'), ('6', 'NNN749635', 'Lateral Izquierdo'), ('6', 'OOO831226', 'VAR'), ('6', 'PPP663179', 'VAR'), ('6', 'QQQ376182', 'VAR'), ('6', 'RRR448487', 'VAR'), 
('6', 'SSS283211', 'VAR'), ('7', 'TTT982450', 'Principal'), ('7', 'UUU261305', 'Lateral Derecho'), ('7', 'LLL524461', 'Lateral Izquierdo'), ('7', 'MMM473556', 'VAR'), ('7', 'NNN749635', 'VAR'), ('7', 'OOO831226', 'VAR'), 
('7', 'PPP663179', 'VAR'), ('7', 'QQQ376182', 'VAR'), ('8', 'RRR448487', 'Principal'), ('8', 'SSS283211', 'Lateral Derecho'), ('8', 'TTT982450', 'Lateral Izquierdo'), ('8', 'UUU261305', 'VAR'), ('8', 'LLL524461', 'VAR'), 
('8', 'MMM473556', 'VAR'), ('8', 'NNN749635', 'VAR'), ('8', 'OOO831226', 'VAR'), ('9', 'PPP663179', 'Principal'), ('9', 'QQQ376182', 'Lateral Derecho'), ('9', 'RRR448487', 'Lateral Izquierdo'), ('9', 'SSS283211', 'VAR'), 
('9', 'TTT982450', 'VAR'), ('9', 'UUU261305', 'VAR'), ('9', 'LLL524461', 'VAR'), ('9', 'MMM473556', 'VAR'), ('10', 'NNN749635', 'Principal'), ('10', 'OOO831226', 'Lateral Derecho'), ('10', 'PPP663179', 'Lateral Izquierdo'), 
('10', 'QQQ376182', 'VAR'), ('10', 'RRR448487', 'VAR'), ('10', 'SSS283211', 'VAR'), ('10', 'TTT982450', 'VAR'), ('10', 'UUU261305', 'VAR');

--Insercion de Tiempos Complementarios
 INSERT INTO public.tiempo_complementario VALUES 
('1', '1', 2, 1), ('2', '6', 2, 2), ('3', '7', 1, 3), ('4', '10', 2, 4), ('5', '2', 3, 5);

--Insercion de las Series de Penales
INSERT INTO public.serie_penales VALUES
 ('1', 'Francia', '1', '1');

--Insercion de penales en una serie de penales
INSERT INTO public.penal VALUES 
('1', '1', 'Convertido', 2, 'AAA358661'), ('1', '2', 'Convertido', 4, 'AAA991642'), ('1', '3', 'Convertido', 6, 'AAA415230'), ('1', '4', 'Errado', 8, 'AAA867707'), ('1', '5', 'Convertido', 10, 'AAA513624'), ('1', '6', 'Convertido', 1, 'BBB249714'), 
('1', '7', 'Atajado', 3, 'BBB436963'), ('1', '8', 'Convertido', 5, 'BBB189443'), ('1', '9', 'Convertido', 7, 'BBB951122'), ('1', '10', 'Errado', 9, 'BBB741294');
