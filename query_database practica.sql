create table carrera(
    id_carrera int not null primary key,
    nombre_carr varchar(50),
    facultad varchar(200)
);

create table instituto(
    id_instituto int not null primary key,
    id_carrera int not null,
    nombre_inst varchar(50),
    foreign key (id_carrera) references carrera(id_carrera) on delete cascade
);

create table revista(
    id_inst int not null primary key,
    nombre_rev varchar(60),
    paginas int,
    foreign key (id_inst) references instituto(id_instituto) on delete cascade
);

create table proyecto(
    id_proy int not null primary key,
    nombre_proy varchar(60),
    id_inst int not null,
    foreign key (id_inst) references instituto(id_instituto) on delete cascade
);

create table actividad(
    id_act int not null,
    id_proy int not null,
    nombre_act varchar(50),
    primary key (id_act, id_proy),
    foreign key (id_proy) references proyecto(id_proy) on delete cascade
);

create table persona(
    id int not null primary key,
    ci int not null unique,
    nombre varchar(50),
    fechaNac Date,
    sexo varchar(20)
);

create table estudiante(
    id_est int not null primary key,
    matricula int not null unique,
    id_pers int not null,
    foreign key (id_pers) references persona(id) on delete cascade
);

create table docente(
    id_doc int not null primary key,
    item int not null unique,
    materia varchar(35),
    id_pers int not null,
    foreign key (id_pers) references persona(id) on delete cascade
);

create table participa(
    id_proy int not null,
    id_pers int not null,
    primary key (id_proy, id_pers),
    foreign key (id_proy) references proyecto(id_proy) on delete cascade,
    foreign key (id_pers) references persona(id) on delete cascade
);

create table articulo(
    id_art int not null primary key,
    nombre_art varchar(50),
    descripcion varchar(100),
    id_autor int not null,
    id_inst int not null,
    foreign key (id_autor) references docente(id_doc) on delete cascade,
    foreign key (id_inst) references revista(id_inst) on delete cascade
);


--Datos a Insertar

--Carrera
INSERT INTO CARRERA (ID_CARRERA, NOMBRE_CARR, FACULTAD) 
VALUES (1, 'Informatica', 'Ciencias Puras y Naturales');

INSERT INTO CARRERA (ID_CARRERA, NOMBRE_CARR, FACULTAD) 
VALUES (2, 'Matematicas', 'Ciencias Puras y Naturales');

INSERT INTO CARRERA (ID_CARRERA, NOMBRE_CARR, FACULTAD) 
VALUES (3, 'Estadistica', 'Ciencias Puras y Naturales');

--Instituto
--Row 1
INSERT INTO INSTITUTO (ID_INSTITUTO, ID_CARRERA, NOMBRE_INST) VALUES (1,3,'Investigacion Operativa');
--Row 2
INSERT INTO INSTITUTO (ID_INSTITUTO, ID_CARRERA, NOMBRE_INST) VALUES (2,3,'Probabilidad');
--Row 3
INSERT INTO INSTITUTO (ID_INSTITUTO, ID_CARRERA, NOMBRE_INST) VALUES (3,2,'Calculo');
--Row 4
INSERT INTO INSTITUTO (ID_INSTITUTO, ID_CARRERA, NOMBRE_INST) VALUES (4,2,'Geometria');
--Row 5
INSERT INTO INSTITUTO (ID_INSTITUTO, ID_CARRERA, NOMBRE_INST) VALUES (5,1,'Base de Datos');
--Row 6
INSERT INTO INSTITUTO (ID_INSTITUTO, ID_CARRERA, NOMBRE_INST) VALUES (6,1,'Programacion');
--Row 7
INSERT INTO INSTITUTO (ID_INSTITUTO, ID_CARRERA, NOMBRE_INST) VALUES (7,1,'Computacion');

-- Revista

INSERT INTO REVISTA (ID_INST, NOMBRE_REV, PAGINAS) 
VALUES (1, 'Revista 1', 45);

INSERT INTO REVISTA (ID_INST, NOMBRE_REV, PAGINAS) 
VALUES (2, 'Revista 2', 56);

INSERT INTO REVISTA (ID_INST, NOMBRE_REV, PAGINAS) 
VALUES (3, 'Revista 3', 67);

INSERT INTO REVISTA (ID_INST, NOMBRE_REV, PAGINAS) 
VALUES (4, 'Revista 4', 67);

INSERT INTO REVISTA (ID_INST, NOMBRE_REV, PAGINAS) 
VALUES (5, 'Revista 5', 54);

INSERT INTO REVISTA (ID_INST, NOMBRE_REV, PAGINAS) 
VALUES (6, 'Revista 6', 34);

INSERT INTO REVISTA (ID_INST, NOMBRE_REV, PAGINAS) 
VALUES (7, 'Revista 7', 90);

-- Proyecto

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (1, 'Proyecto 1', 4);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (2, 'Proyecto 2', 3);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (3, 'Proyecto 3', 5);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (4, 'Proyecto 4', 6);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (5, 'Proyecto 5', 2);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (6, 'Proyecto 6', 1);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (7, 'Proyecto 7', 7);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (8, 'Proyecto 8', 3);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (9, 'Proyecto 9', 5);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (10, 'Proyecto 10', 5);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (11, 'Proyecto 11', 6);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (12, 'Proyecto 12', 7);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (13, 'Proyecto 13', 7);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (14, 'Proyecto 14', 1);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (15, 'Proyecto 15', 3);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (16, 'Proyecto 16', 2);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (17, 'Proyecto 17', 3);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (18, 'Proyecto 18', 1);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (19, 'Proyecto 19', 3);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (20, 'Proyecto 20', 4);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (21, 'Proyecto 21', 4);

INSERT INTO PROYECTO (ID_PROY, NOMBRE_PROY, ID_INST) 
VALUES (22, 'Proyecto 22', 6);

-- Actividad

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (1, 22, 'Actividad 1');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (2, 13, 'Actividad 2');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (3, 8, 'Actividad 3');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (4, 5, 'Actividad 4');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (5, 13, 'Actividad 5');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (6, 18, 'Actividad 6');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (7, 7, 'Actividad 7');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (8, 4, 'Actividad 8');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (9, 13, 'Actividad 9');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (10, 3, 'Actividad 10');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (11, 10, 'Actividad 11');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (12, 15, 'Actividad 12');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (13, 10, 'Actividad 13');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (14, 12, 'Actividad 14');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (15, 16, 'Actividad 15');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (16, 19, 'Actividad 16');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (17, 15, 'Actividad 17');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (18, 5, 'Actividad 18');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (19, 21, 'Actividad 19');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (20, 19, 'Actividad 20');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (21, 17, 'Actividad 21');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (22, 4, 'Actividad 22');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (23, 2, 'Actividad 23');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (24, 9, 'Actividad 24');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (25, 19, 'Actividad 25');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (26, 15, 'Actividad 26');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (27, 20, 'Actividad 27');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (28, 22, 'Actividad 28');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (29, 18, 'Actividad 29');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (30, 9, 'Actividad 30');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (31, 14, 'Actividad 31');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (32, 7, 'Actividad 32');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (33, 15, 'Actividad 33');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (34, 9, 'Actividad 34');

INSERT INTO ACTIVIDAD (ID_ACT, ID_PROY, NOMBRE_ACT) 
VALUES (35, 7, 'Actividad 35');

-- Persona

INSERT INTO PERSONA (ID, CI, NOMBRE, FECHANAC, SEXO) 
VALUES (1, 1234, 'Juan Tapia', to_date('04/02/1990', 'MM/DD/RRRR'), 'MASCULINO');

INSERT INTO PERSONA (ID, CI, NOMBRE, FECHANAC, SEXO) 
VALUES (2, 2345, 'Rosa Riuz', to_date('04/03/1980', 'MM/DD/RRRR'), 'FEMENINO');

INSERT INTO PERSONA (ID, CI, NOMBRE, FECHANAC, SEXO) 
VALUES (3, 3456, 'Miguel Tola', to_date('04/04/1994', 'MM/DD/RRRR'), 'MASCULINO');

INSERT INTO PERSONA (ID, CI, NOMBRE, FECHANAC, SEXO) 
VALUES (4, 4567, 'Angel Cruz', to_date('11/05/1993', 'MM/DD/RRRR'), 'MASCULINO');

INSERT INTO PERSONA (ID, CI, NOMBRE, FECHANAC, SEXO) 
VALUES (5, 5678, 'Giovanna Rios', to_date('04/06/1990', 'MM/DD/RRRR'), 'FEMENINO');

INSERT INTO PERSONA (ID, CI, NOMBRE, FECHANAC, SEXO) 
VALUES (6, 6789, 'Willy Quispe', to_date('01/07/1969', 'MM/DD/RRRR'), 'MASCULINO');

INSERT INTO PERSONA (ID, CI, NOMBRE, FECHANAC, SEXO) 
VALUES (7, 7890, 'Sara Fernandez', to_date('04/08/1990', 'MM/DD/RRRR'), 'FEMENINO');

INSERT INTO PERSONA (ID, CI, NOMBRE, FECHANAC, SEXO) 
VALUES (8, 8901, 'Benito Camelo', to_date('04/09/1978', 'MM/DD/RRRR'), 'MASCULINO');

INSERT INTO PERSONA (ID, CI, NOMBRE, FECHANAC, SEXO) 
VALUES (9, 9012, 'Tito Perez', to_date('04/10/2000', 'MM/DD/RRRR'), 'MASCULINO');

INSERT INTO PERSONA (ID, CI, NOMBRE, FECHANAC, SEXO) 
VALUES (10, 1029, 'Juana Tijuana', to_date('12/06/1986', 'MM/DD/RRRR'), 'FEMENINO');

INSERT INTO PERSONA (ID, CI, NOMBRE, FECHANAC, SEXO) 
VALUES (11, 3847, 'Rosario Jujuy', to_date('05/06/2001', 'MM/DD/RRRR'), 'FEMENINO');

-- Estudiante

INSERT INTO ESTUDIANTE (ID_EST, MATRICULA, ID_PERS) 
VALUES (1, 422056, 1);

INSERT INTO ESTUDIANTE (ID_EST, MATRICULA, ID_PERS) 
VALUES (2, 428777, 3);

INSERT INTO ESTUDIANTE (ID_EST, MATRICULA, ID_PERS) 
VALUES (3, 501324, 4);

INSERT INTO ESTUDIANTE (ID_EST, MATRICULA, ID_PERS) 
VALUES (4, 533574, 5);

INSERT INTO ESTUDIANTE (ID_EST, MATRICULA, ID_PERS) 
VALUES (5, 899374, 9);

INSERT INTO ESTUDIANTE (ID_EST, MATRICULA, ID_PERS) 
VALUES (6, 622860, 11);

-- Docente

INSERT INTO DOCENTE (ID_DOC, ITEM, MATERIA, ID_PERS) 
VALUES (1, 625, 'Materia 1', 2);

INSERT INTO DOCENTE (ID_DOC, ITEM, MATERIA, ID_PERS) 
VALUES (2, 833, 'Materia 2', 6);

INSERT INTO DOCENTE (ID_DOC, ITEM, MATERIA, ID_PERS) 
VALUES (3, 514, 'Materia 3', 7);

INSERT INTO DOCENTE (ID_DOC, ITEM, MATERIA, ID_PERS) 
VALUES (4, 686, 'Materia 4', 8);

INSERT INTO DOCENTE (ID_DOC, ITEM, MATERIA, ID_PERS) 
VALUES (5, 569, 'Materia 5', 10);


-- Participa

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (13, 9);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (13, 3);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (16, 10);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (12, 6);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (8, 6);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (10, 8);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (9, 3);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (18, 1);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (22, 11);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (19, 2);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (11, 5);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (10, 6);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (19, 8);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (9, 9);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (2, 6);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (22, 9);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (2, 10);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (13, 5);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (1, 3);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (10, 2);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (15, 4);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (2, 7);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (17, 5);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (16, 3);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (7, 9);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (11, 3);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (11, 7);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (7, 1);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (16, 7);

INSERT INTO PARTICIPA (ID_PROY, ID_PERS) 
VALUES (10, 3);

-- Articulo

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (1, 'Articulo 1', 'Es el articulo 1', 4, 3);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (2, 'Articulo 2', 'Es el articulo 2', 3, 6);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (3, 'Articulo 3', 'Es el articulo 3', 1, 2);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (4, 'Articulo 4', 'Es el articulo 4', 3, 5);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (5, 'Articulo 5', 'Es el articulo 5', 2, 7);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (6, 'Articulo 6', 'Es el articulo 6', 3, 4);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (7, 'Articulo 7', 'Es el articulo 7', 2, 7);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (8, 'Articulo 8', 'Es el articulo 8', 4, 3);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (9, 'Articulo 9', 'Es el articulo 9', 5, 3);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (10, 'Articulo 10', 'Es el articulo 10', 5, 2);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (11, 'Articulo 11', 'Es el articulo 11', 4, 2);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (12, 'Articulo 12', 'Es el articulo 12', 5, 3);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (13, 'Articulo 13', 'Es el articulo 13', 1, 4);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (14, 'Articulo 14', 'Es el articulo 14', 1, 2);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (15, 'Articulo 15', 'Es el articulo 15', 5, 3);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (16, 'Articulo 16', 'Es el articulo 16', 2, 2);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (17, 'Articulo 17', 'Es el articulo 17', 1, 6);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (18, 'Articulo 18', 'Es el articulo 18', 3, 7);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (19, 'Articulo 19', 'Es el articulo 19', 5, 5);

INSERT INTO ARTICULO (ID_ART, NOMBRE_ART, DESCRIPCION, ID_AUTOR, ID_INST) 
VALUES (20, 'Articulo 20', 'Es el articulo 20', 2, 2);
