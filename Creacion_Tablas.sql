CREATE TABLE estadio (
id_estadio varchar(15) PRIMARY KEY,
ciudad varchar(40),
nombre_e varchar(30),
policias_necesarios integer,
direccion varchar(50),
capacidad_maxima integer);

CREATE TABLE tiempo_reglamentario (
id_reglamentario varchar(15) PRIMARY KEY,
tiempo_extra_parcial2 integer,
tiempo_extra_parcial1 integer);

CREATE TABLE arbitro (
pasaporte_a varchar(15) PRIMARY KEY,
nombre_a varchar(30),
apellido_a varchar(30),
nacionalidad varchar(20));

CREATE TABLE seleccion (
nombre varchar(30) PRIMARY KEY,
lugar_entrenamiento varchar(30),
id_grupo varchar(15));

CREATE TABLE grupo (
id_grupo varchar(15) PRIMARY KEY,
cabecera varchar(30) REFERENCES Seleccion(nombre));
ALTER TABLE Selección ADD CONSTRAINT FOREIGN KEY(id_grupo) REFERENCES Grupo(id_grupo);

CREATE TABLE integrante_cuerpo_tecnico (
pasaporte_i varchar(15) PRIMARY KEY,
puesto varchar(20),
nombre_i varchar(30),
apellido_i varchar(30),
seleccion_i varchar(30) REFERENCES Seleccion(nombre));

CREATE TABLE jugador (
pasaporte_j varchar(15) PRIMARY KEY,
posicion integer,
puesto varchar(20),
apellido_j vachar(30),
nombre_j varchar(30),
nro_camiseta varchar(50),
apodo varchar(30),
nombre varchar(15) REFERENCES Seleccion(nombre),
CONSTRAINT camiseta_j UNIQUE(nro_camiseta, nombre));

CREATE TABLE partido (
id_partido varchar(15) PRIMARY KEY,
resultado varchar(40),
hora_partido varchar(20),
dia_partido date,
id_estadio varchar(15) REFERENCES Estadio(id_estadio),
id_reglamentario varchar(15) REFERENCES Tiempo_reglamentario(id_reglamentario),
jugado_como_local varchar(30) REFERENCES Seleccion(nombre),
jugado_como_visitante varchar(30) REFERENCES Seleccion(nombre));

CREATE TABLE reemplaza (
id_partido varchar(15) REFERENCES Partido(id_partido),
reemplazado varchar(15) REFERENCES Arbitro(pasaporte_a),
reemplazante varchar(15) REFERENCES Arbitro(pasaporte_a),
reemplazo_concretado boolean,
PRIMARY KEY (id_partido, reemplazado, reemplazante));

CREATE TABLE partido_grupo (
id_partido_fase varchar(15),
id_partido varchar(15) PRIMARY KEY,
ronda varchar(20));

CREATE TABLE partido_eliminacion (
id_partido_eliminacion varchar(15),
id_partido varchar(15) PRIMARY KEY,
fase_eliminacion varchar(20));
ALTER TABLE Partido_grupo ADD FOREIGN KEY(id_partido) REFERENCES Partido(id_partido);
ALTER TABLE Partido_eliminacion ADD FOREIGN KEY(id_partido) REFERENCES Partido(id_partido);

CREATE TABLE planilla_partido (
id_planilla varchar(15) PRIMARY KEY,
id_partido varchar(15) REFERENCES Partido(id_partido));

CREATE TABLE gol (
id_gol varchar(15),
minuto_gol integer,
descripcion_gol varchar(50),
id_partido varchar(15) REFERENCES Partido(id_partido),
pasaporte_j varchar(15) REFERENCES Jugador(pasaporte_j),
PRIMARY KEY (id_gol, id_partido));

CREATE TABLE figura_en (
pasaporte_j varchar(15) REFERENCES Jugador(pasaporte_j),
id_planilla varchar(15) REFERENCES Planilla_partido(id_planilla),
es_titular boolean,
PRIMARY KEY (pasaporte_j, id_planilla));

CREATE TABLE redactada_por (
id_planilla varchar(15) REFERENCES Planilla_partido(id_planilla),
nombre varchar(15) REFERENCES Seleccion(nombre),
pasaporte_i varchar(15) REFERENCES Integrante_cuerpo_tecnico(pasaporte_i),
PRIMARY KEY (id_planilla, nombre, pasaporte_i));

CREATE TABLE dirigido_por (
id_partido varchar(15) REFERENCES Partido(id_partido),
pasaporte_a varchar(15) REFERENCES Arbitro(pasaporte_a),
rol_arbitro varchar(20),
PRIMARY KEY (id_partido, pasaporte_a, rol_arbitro));

CREATE TABLE tiempo_complementario (
id_complementario varchar(15),
id_partido_eliminacion varchar(15) REFERENCES Partido_eliminacion(id_partido) ,
tiempo_extra_complemento1 integer,
tiempo_extra_complemento2 integer,
PRIMARY KEY (id_complementario, id_partido_eliminacion));

CREATE TABLE serie_penales (
id_serie varchar(15) PRIMARY KEY,
equipo_patea_primero varchar(30),
id_complementario varchar(15),
id_partido_eliminacion varchar(15),
FOREIGN KEY(id_complementario, id_partido_eliminacion) REFERENCES Tiempo_complementario(id_complementario, id_partido_eliminacion));

CREATE TABLE penal (
id_serie varchar(15) REFERENCES Serie_penales(id_serie),
id_penal varchar(15),
resultado varchar(10),
orden integer,
pasaporte_j varchar(15) REFERENCES Jugador(pasaporte_j),
PRIMARY KEY (id_serie, id_penal));