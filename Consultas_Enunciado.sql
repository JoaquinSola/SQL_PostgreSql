--Consulta 1: Mostrar de cada grupo, su identificación, el nombre del equipo cabeza de grupo, 
--lugar de entrenamiento y nombre y apellido del director técnico del equipo.
SELECT g.id_grupo, g.cabecera, s.lugar_entrenamiento, i.nombre_i, i.apellido_i
FROM grupo g, seleccion s, integrante_cuerpo_tecnico i
WHERE g.cabecera = s.nombre AND s.nombre = i.seleccion_i AND i.puesto = 'Tecnico'

--Consulta 2: Mostrar el nombre, apellido, TERMINAR
--puesto y equipo del jugador que resultó goleador del torneo mundial.
SELECT j.nombre_j, j.apellido_j, j.puesto, j.nombre, count(g.pasaporte_j) 
FROM jugador j, gol g
WHERE j.pasaporte_j = g.pasaporte_j 
GROUP BY j.nombre_j, j.apellido_j, j.puesto, j.nombre
HAVING count(g.pasaporte_j) >= ALL (SELECT count(g.pasaporte_j)
									FROM jugador j, gol g
									WHERE j.pasaporte_j = g.pasaporte_j
									GROUP BY j.pasaporte_j)

--Consulta 3: Mostrar la terna de árbitros principales que dirigieron los partidos de la segunda ronda 
--de partidos de la fase de grupo y no han dirigido partidos de la fase eliminatoria.
	SELECT DISTINCT dp1.pasaporte_a, dp1.rol_arbitro, a1.nombre_a, a1.apellido_a, a1.nacionalidad,
					dp2.pasaporte_a, dp2.rol_arbitro, a2.nombre_a, a2.apellido_a, a2.nacionalidad,
					dp3.pasaporte_a, dp3.rol_arbitro, a3.nombre_a, a3.apellido_a, a3.nacionalidad
	FROM dirigido_por dp1, dirigido_por dp2, dirigido_por dp3, partido_grupo p, arbitro a1, arbitro a2, arbitro a3
	WHERE dp1.id_partido = p.id_partido AND dp2.id_partido = dp1.id_partido AND dp1.id_partido = dp3.id_partido AND dp2.id_partido = dp3.id_partido
		AND dp1.rol_arbitro = 'Principal' AND dp2.rol_arbitro = 'Lateral Izquierdo' AND dp3.rol_arbitro = 'Lateral Derecho'
		AND p.ronda = 'Ronda2'
		AND dp1.pasaporte_a = a1.pasaporte_a AND dp2.pasaporte_a = a2.pasaporte_a AND dp3.pasaporte_a = a3.pasaporte_a
EXCEPT
	SELECT DISTINCT dp1.pasaporte_a, dp1.rol_arbitro, a1.nombre_a, a1.apellido_a, a1.nacionalidad,
					dp2.pasaporte_a, dp2.rol_arbitro, a2.nombre_a, a2.apellido_a, a2.nacionalidad,
					dp3.pasaporte_a, dp3.rol_arbitro, a3.nombre_a, a3.apellido_a, a3.nacionalidad
	FROM dirigido_por dp1, dirigido_por dp2, dirigido_por dp3, partido_eliminacion p, arbitro a1, arbitro a2, arbitro a3
	WHERE dp1.id_partido = p.id_partido AND dp2.id_partido = dp1.id_partido AND dp1.id_partido = dp3.id_partido AND dp2.id_partido = dp3.id_partido
		AND dp1.rol_arbitro = 'Principal' AND dp2.rol_arbitro = 'Lateral Izquierdo' AND dp3.rol_arbitro = 'Lateral Derecho'
		AND dp1.pasaporte_a = a1.pasaporte_a AND dp2.pasaporte_a = a2.pasaporte_a AND dp3.pasaporte_a = a3.pasaporte_a

--Consulta 4: Mostrar el nombre, apellido del jugador, equipo al que pertenece y partido 
--en el que el jugador hizo hat-trick (jugador que anota tres goles en el mismo partido).
SELECT j.nombre_j, j.apellido_j, j.nombre, g.id_partido, count(g.id_gol)
FROM gol g, jugador j
WHERE g.pasaporte_j = j.pasaporte_j
GROUP BY j.nombre_j, j.apellido_j, j.nombre, g.id_partido
HAVING count(g.id_gol) >= 3

--Consulta 5: Mostrar los datos de los estadios en los que sólo se jugaron partidos de la fase de grupo.
	SELECT * 
	FROM estadio e, partido p, partido_grupo pg
	WHERE pg.id_partido = p.id_partido AND p.id_estadio = e.id_estadio
EXCEPT
	SELECT * 
	FROM estadio e, partido p, partido_eliminacion pe
	WHERE pe.id_partido = p.id_partido AND p.id_estadio = e.id_estadio


--Consulta 6:Mostrar el nombre, apellido y selección del jugador que convirtió al menos un gol 
--(durante el partido o en serie de penales) en todos los partidos que disputó.
--La siguiente vista contiene las veces que algun jugador marco en distintos partidos, o serie de penales, al menos un gol.
CREATE VIEW temp1 AS 
	(SELECT pa.id_partido, p.pasaporte_j, j.nombre_j, j.apellido_j, j.nombre, count(distinct p.id_serie)
	FROM penal p, serie_penales sp, partido pa, partido_eliminacion pe, jugador j
	WHERE p.resultado = 'Convertido' AND p.id_serie = sp.id_serie 
		AND sp.id_partido_eliminacion = pe.id_partido_eliminacion 
		AND pa.id_partido = pe.id_partido AND j.pasaporte_j = p.pasaporte_j
	GROUP BY pa.id_partido, p.pasaporte_j, j.nombre_j, j.apellido_j, j.nombre
UNION
	SELECT g.id_partido, g.pasaporte_j, j.nombre_j, j.apellido_j, j.nombre, count(distinct g.id_partido)
	FROM gol g, jugador j
	WHERE g.pasaporte_j = j.pasaporte_j
	GROUP BY g.id_partido, g.pasaporte_j, j.nombre_j, j.apellido_j, j.nombre)

--CONSULTA QUE RELACIONA LA VISTA CON LA CANTIDAD DE PARTIDOS QUE DISPUTO CADA JUGADOR
	SELECT  t.pasaporte_j, t.nombre_j, t.apellido_j, t.nombre, count(distinct t.id_partido)
	FROM temp1 t
	GROUP BY t.pasaporte_j, t.nombre_j, t.apellido_j, t.nombre
INTERSECT
	(SELECT f.pasaporte_j, j.nombre_j, j.apellido_j, j.nombre, count(distinct id_planilla)
	FROM figura_en f, jugador j
	WHERE f.pasaporte_j = j.pasaporte_j
	GROUP BY f.pasaporte_j, j.nombre_j, j.apellido_j, j.nombre)


--Consulta 7: Mostrar nombre del equipo y el de su director técnico, de aquella
--selección que nunca convirtió goles (no considerar series de penales) durante el desarrollo del evento.
SELECT DISTINCT i.nombre_i, i.apellido_i, i.seleccion_i
FROM integrante_cuerpo_tecnico i
WHERE i.puesto = 'Tecnico' and i.seleccion_i NOT IN (SELECT DISTINCT j.nombre
													FROM gol g, jugador j
													WHERE g.pasaporte_j = j.pasaporte_j)
													
--Consulta 8: Mostrar para cada equipo la cantidad de goles a favor, 
--cantidad de goles en contra y una columna con la cantidad de puntos obtenidos durante la fase de grupo, 
--sabiendo que un partido ganado suma 3 puntos, empatado 1 punto y perdido 0 puntos. 
--Presentar la lista ordenada por grupo y en cada grupo de mayor a menor los puntos obtenidos, 
--mayor cantidad de goles a favor y menor cantidad de goles en contra.

--VISTA QUE INCLUYE PARTIDOS GANADOS DE CADA SELECCION Y EMPATADOS DE CADA SELECCION
CREATE VIEW par_gye_selec AS (
			((SELECT p1.jugado_como_local pais, p1.resultado, count(p1.resultado) total
			FROM partido p1, partido_grupo pg1
			WHERE p1.id_partido = pg1.id_partido AND p1.resultado = 'Local' 
			GROUP BY pais, p1.resultado
		UNION ALL
			SELECT p2.jugado_como_visitante, p2.resultado, count(p2.resultado) total
			FROM partido p2, partido_grupo pg2
			WHERE p2.id_partido = pg2.id_partido AND p2.resultado = 'Visita'
			GROUP BY p2.jugado_como_visitante, p2.resultado)
	UNION ALL
			(SELECT p1.jugado_como_local pais, p1.resultado, count(p1.resultado) total
			FROM partido p1, partido_grupo pg1
			WHERE p1.id_partido = pg1.id_partido AND p1.resultado = 'Empate' 
			GROUP BY pais, p1.resultado
		UNION ALL
			SELECT p2.jugado_como_visitante, p2.resultado, count(p2.resultado) total
			FROM partido p2, partido_grupo pg2
			WHERE p2.id_partido = pg2.id_partido AND p2.resultado = 'Empate'
			GROUP BY p2.jugado_como_visitante, p2.resultado))
	)

--VISTA QUE INCLUYE GOLES RECIBIDOS DE CADA SELECCION
CREATE VIEW gc_selec AS (
			SELECT p.jugado_como_local pais, count(p.jugado_como_local) goles_en_contra
			FROM partido p, partido_grupo pg, jugador j, gol g
			WHERE p.id_partido = pg.id_partido AND p.id_partido = g.id_partido AND g.pasaporte_j = j.pasaporte_j
			GROUP BY p.jugado_como_local, j.nombre
			HAVING p.jugado_como_local <> j.nombre
		UNION
			SELECT p.jugado_como_visitante pais, count(jugado_como_visitante) goles_en_contra
			FROM partido p, partido_grupo pg, jugador j, gol g
			WHERE p.id_partido = pg.id_partido AND p.id_partido = g.id_partido AND g.pasaporte_j = j.pasaporte_j
			GROUP BY p.jugado_como_visitante, j.nombre
			HAVING p.jugado_como_visitante <> j.nombre
	)
--VISTA QUE INCLUYE GOLES A FAVOR DE CADA SELECCION
CREATE VIEW gf_selec AS (
		SELECT j.nombre pais, count(j.nombre) goles_a_favor
		FROM partido p, partido_grupo pg, jugador j, gol g
		WHERE p.id_partido = pg.id_partido AND p.id_partido = g.id_partido AND g.pasaporte_j = j.pasaporte_j AND g.descripcion_gol <> 'En Contra'
		GROUP BY j.nombre
	)
	
--CONSULTA QUE INVOLUCRA LAS VISTAS
SELECT s.nombre, s.id_grupo, gc.goles_en_contra, gf.goles_a_favor, SUM(CASE when (pge.resultado = 'Local' or pge.resultado = 'Visita') then 3*pge.total
																			when pge.resultado = 'Empate' then 1*pge.total
																			end) puntaje
FROM seleccion s FULL JOIN gc_selec gc ON s.nombre = gc.pais 
				 FULL JOIN gf_selec gf ON s.nombre = gf.pais 
				 FULL JOIN par_gye_selec pge ON s.nombre = pge.pais
GROUP BY s.nombre, s.id_grupo, gc.goles_en_contra, gf.goles_a_favor

