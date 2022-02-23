
/* -------------------------------------------
 * ------ INMOBILIARIA_MICROSERVICIOS---------
 * -------------------------------------------
 * 
 * 
 * ========= DDL =============
 */

-- Eliminamos Tablas

drop table if exists propietarios_inmuebles cascade;
drop table if exists inmuebles cascade;


-- Todos lo id PK auto_increment

drop sequence if exists id_sec_prop_inm cascade;
drop sequence if exists id_sec_inm cascade;




-- Enumerados tabla inmuebles
drop type if exists estado_inmueble_enum cascade;




-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ======= TABLA PROPIETARIOS_INMUEBLES ===========


create table propietarios_inmuebles(

id int primary key,
nombre varchar(40) not null,
apellido varchar(40) not null,
edad int not null,
fecha_nacimiento date not null,
tipo_documento varchar(20) not null,
nro_documento varchar(20) not null,
direccion varchar(40) not null, 
nro_telefono_principal varchar(40) not null,
nro_telefono_secundario varchar(40),
email varchar(40)

);

-- ======= Restricciones Tabla propietarios_inmuebles ===========

-- UNIQUE ID
alter table propietarios_inmuebles 
add constraint UNIQUE_propietarios_inmuebles_id
unique(id);



-- UNIQUE NOMBRE/APELLIDO
alter table propietarios_inmuebles 
add constraint UNIQUE_propietarios_inmuebles_nombre_apellido
unique(nombre,apellido);


-- CHECK EDAD
alter table propietarios_inmuebles 
add constraint CHECK_propietarios_inmuebles_edad
check (edad >= 18);


-- UNIQUE TELEFONO
alter table propietarios_inmuebles
add constraint UNIQUE_propietarios_inmuebles_nro_telefono_principal
unique(nro_telefono_principal);



-- CHECK FECHA_NACIMIENTO
alter table propietarios_inmuebles 
add constraint CHECK_propietarios_inmuebles_fecha_nacimiento
check (current_date > fecha_nacimiento);


--- UNIQUE NRO_DOCUMENTO
alter table propietarios_inmuebles 
add constraint UNIQUE_propietarios_inmuebles_nro_documento
unique(nro_documento);



-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------


-- ======= TABLA INMUEBLES ===========


create type estado_inmueble_enum as enum('VENDIDO','DISPONIBLE','NO_DISPONIBLE','FALTA_INSPECCION');


-- Casteamos los varchar que vengan desde hibernate a enum
CREATE CAST (varchar AS estado_inmueble_enum) WITH INOUT AS IMPLICIT;


create table inmuebles(
	
id int primary key,
id_propietario_inmueble int not null,
descripcion varchar(200) not null,-- ej: semipiso de 3 Amb en Palermo
tipo varchar(20) not null, -- depto, casa, etc
estado_inmueble estado_inmueble_enum not null,
precio_inmueble_usd decimal(10,2) not null,
direccion varchar(60) not null,-- San sarasa 123
ubicacion varchar(60) not null, -- zona:palermo, recoleta, etc
sitio_web varchar(60)-- link de la pag de la descripcion

);

-- ======= Restricciones Tabla inmuebles ===========

-- UNIQUE ID
alter table inmuebles 
add constraint UNIQUE_inmuebles_id
unique(id);


--FK ID_PROPIETARIO_INMUEBLE
alter table inmuebles 
add constraint FK_inmuebles_id_propietario_inmueble
foreign key(id_propietario_inmueble)
references propietarios_inmuebles(id);



-- CHECK PRECIO_INMUEBLE_USD
alter table inmuebles
add constraint CHECK_inmuebles_precio_inmueble_usd
check (precio_inmueble_usd > 0);




-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------




-- ======== TODOS LOS ID´S PK DE LAS TABLAS COMO AUTO_INCREMENT =======

CREATE SEQUENCE id_sec_inm;
CREATE SEQUENCE id_sec_prop_inm;



alter table inmuebles alter id set default nextval('id_sec_inm');
alter table propietarios_inmuebles alter id set default nextval('id_sec_prop_inm');
