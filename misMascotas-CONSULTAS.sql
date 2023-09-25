USE MisMascotas;
#----------------------------    CONSULTAS       -----------------------------#

# 1)listado de personas de la clínica # 
SELECT nombre from persona;

#2) listado de mascotas con el nombre de la persona ordenados por nombre de la mascota # 
SELECT persona.nombre , mascota.nombre AS mascota FROM mascota INNER JOIN persona 
ON mascota.dueño = persona.nit ORDER BY mascota.nombre ASC;

#3) listado de mascotas con el nombre de la persona ordenados por fecha de registro#
SELECT mascota.nombre AS Mascota, persona.nombre AS Dueño, mascota.registro_clinica 
FROM mascota INNER JOIN persona ON mascota.dueño = persona.nit ORDER BY mascota.registro_clinica ASC;

# 4) Listado de citas de una mascota#
SELECT id_cita, mascota.nombre AS Mascota ,fecha_inicial AS Cita, se_presento AS "Asistencia(si=1 / no=0)" 
FROM cita INNER JOIN tratamiento on cita.tratamiento = tratamiento.id_tratamiento 
INNER JOIN mascota ON tratamiento.mascota = mascota.id_mascota;

#5) Listado de citas de las mascotas de una persona#
SELECT DISTINCT cita.id_cita, persona.nombre AS Persona, mascota.nombre AS Mascota, cita.proxima_cita AS "Futura Cita"
FROM cita
INNER JOIN persona ON cita.dueño = persona.nit
INNER JOIN tratamiento ON cita.tratamiento=tratamiento.id_tratamiento 
INNER JOIN mascota ON tratamiento.mascota = mascota.id_mascota
WHERE cita.dueño = 098173;

#6)Listado de citas en un mes especifico# 
SELECT id_cita, fecha_inicial AS "Citas Pasadas" FROM cita 
WHERE EXTRACT(MONTH FROM cita.fecha_inicial)=9 ORDER BY fecha_inicial DESC;

#7) Listado de citas en un dia especifico ordenados por fecha y hora#
SELECT id_cita, fecha_inicial AS "Citas Pasadas" FROM cita 
WHERE EXTRACT(DAY FROM cita.fecha_inicial)= 12 ORDER BY fecha_inicial DESC;

#8) Mascota que mas citas ha tenido#
SELECT 	mascota AS id_mascota , COUNT(mascota) AS "cantidad de tratamientos" 
FROM tratamiento GROUP BY mascota ORDER BY "cantidad de tratamientos" DESC LIMIT 1;

#9) Mascota que más ha faltado#
SELECT id_cita,tratamiento.mascota AS id_mascota, COUNT(se_presento) AS FALTAS 
FROM cita INNER JOIN tratamiento On cita.tratamiento = tratamiento.id_tratamiento 
where cita.se_presento = 0 GROUP BY tratamiento ORDER BY FALTAS DESC LIMIT 1;

#10) Listado de personas con la cantidad de mascotas que tiene registradas en la clinica.#
SELECT mascota.dueño AS ID_DUEÑO, persona.nombre, COUNT(id_mascota) AS cantidad_mascotas 
FROM mascota INNER JOIN persona  ON mascota.dueño = persona.nit GROUP BY ID_DUEÑO;

#11) Tratamientos asociados a una mascota#
SELECT tratamiento.id_tratamiento, mascota.id_mascota AS id_Mascota, COUNT(mascota.id_mascota) AS "Cantidad de Tratamientos"
 FROM tratamiento INNER JOIN mascota ON tratamiento.mascota = id_mascota where mascota.id_mascota=1 ;
 
 #12) Total de dinero en tratamientos por mascota de una persona específica.#
 SELECT mascota, SUM(precio) AS Total FROM tratamiento WHERE mascota = 1;
#----------------------------    CONSULTAS       -----------------------------#