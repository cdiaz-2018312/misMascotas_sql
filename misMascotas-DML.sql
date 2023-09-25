USE MisMascotas;
#----------------------------      DATOS        ------------------------------#
INSERT INTO persona (nit,nombre,direccion,telefono)VALUES 
(2340983,"Carlos Diaz","4ta avenida zona 6 12-83",55131630),(3829472,"Juana Perez","7ma calle zona 21 25-81",00982315),
(098173,"Lourdes Garcia","zona 9 calle del perdon 39-23",12456512),(3998174,"Jose Peña","Zona 18 colonia el amparo 23-34",99808743),
(9908761,"Doja Cat","Carolina del norte manzana 3 09-32 Estados Unidos",98901234);

INSERT INTO mascota(nombre,nacimiento,registro_clinica,dueño) VALUES 
("Doki","2017-09-21","2022-07-18",2340983),("Nala","2019-11-02","2021-01-23",2340983),
("luna","2022-02-09","2022-07-18",3829472),("Westin","2023-09-21","2023-12-13",3829472),
("Colocho","2018-11-25","2022-07-18",098173),("princesa","2021-02-08","2022-01-06",098173),
("WorldDestroyer","2023-04-09","2023-09-17",3998174),("Alpha","2015-09-21","2016-08-15",3998174),
("Ramoncin","2017-02-14","2017-02-18",9908761),("Pelusa","2016-12-27","2016-12-29",9908761);

INSERT INTO tratamiento (descripcion_tratamiento,mascota,precio) VALUES
("Albendazol, 4 mg cada 8 horas por 7 dias",1,321.50),("Violet de genciana, 4 tazas en la zona afectada cada semana por un mes",2,100.00),
("Bencilpenicilina procaínica, 1 pastilla cada 4 horas",3,150.95),("Dexametasona, por 7 dias cada 12 horas",4,205.50),
("Flumequina, 1 oz cada 6 horas por 5 dias habiles",5,130.45),("Gentamicina, 10 mg cada 2 dias por 2 semanas",6,95.90),
("Zeranol, 1 pastilla cada 4 dias por 1 mes",7,230.80),("Tilosina, 2 oz cada 8 horas por 4 dias",8,160.25),
("Ronidazol, 1 pastilla cada 24 horas por 6 dias",9,530.00),("Tilmicosin, 1 pastilla cada 12 horas por 1 semana",10,245.30);

INSERT INTO tratamiento (descripcion_tratamiento,mascota,precio)VALUE ("TRATAMICINA, 4 mg cada 8 horas por 7 dias",1,210.5);
INSERT INTO cita(fecha_inicial,descripcion_cita,tratamiento,dueño,se_presento,proxima_cita) VALUES
 ("2023-12-12 08:00:00","Por temas complicados de salud se le receto un tratamiento",1,2340983,1,"2024-02-18 10:00:00"),("2023-11-10 08:00:00","La operacion fue exitosa solo seguir el tratamiento",2,2340983,1,"2024-11-25 10:00:00"),
 ("2023-10-19 08:00:00","El moquillo sedio con la vacuna pero seguir tratamiento",3,3829472,1,"2024-12-09 10:00:00"),("2023-10-14 08:00:00","La gripe perruna se acabara si se sigue el tratamiento",4,3829472,0,"2024-09-07 10:00:00"),
 ("2023-11-20 08:00:00","El siguiente tratamiento quitara las molestias al perro",5,098173,0,"2024-09-21 10:00:00"),("2023-09-18 08:00:00","Gracias a la paciencia del perro se logro erradicar con su fiebre",6,098173,1,"2024-02-011 10:00:00"),
 ("2023-09-26 08:00:00","La perrita se comporto bien durante la dosis mensual",7,3998174,1,"2024-01-29 10:00:00"),("2023-12-01 08:00:00","Se sabe que el perro no tuvo problemas con la medicina",8,3998174,1,"2024-05-02 10:00:00"),
 ("2023-10-28 08:00:00","El bulldog fue muy agresivo durante el tratamiento",9,9908761,1,"2024-08-01 10:00:00"),("2023-09-30 08:00:00","Se le receto el medicamento para que el perro ya no tenga futuras molestias",10,9908761,1,"2024-03-20 10:00:00");
INSERT INTO cita (fecha_inicial,descripcion_cita,tratamiento,dueño,se_presento,proxima_cita)VALUE ("2023-09-20 08:00:00","El siguiente tratamiento quitara las molestias al perro",5,098173,0,"2024-09-21 10:00:00");
INSERT INTO cita (fecha_inicial,descripcion_cita,tratamiento,dueño,se_presento,proxima_cita)VALUE ("2023-02-20 08:00:00","El siguiente tratamiento quitara las molestias al perro",5,098173,0,"2024-09-21 10:00:00");
#----------------------------      DATOS        ------------------------------#