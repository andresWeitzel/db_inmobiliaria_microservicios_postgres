
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


-- UUID VALUES
drop extension if exists "uuid-ossp";
create extension if not exists "uuid-ossp";




-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ======= TABLA PROPIETARIOS_INMUEBLES ===========


create table propietarios_inmuebles(

id uuid default uuid_generate_v4() primary key,
nombre varchar(100) not null,
apellido varchar(100) not null,
edad int not null,
fecha_nacimiento date not null,
tipo_documento varchar(30) not null,
nro_documento varchar(50) not null,
direccion varchar(100) not null, 
nro_telefono_principal varchar(40) not null,
nro_telefono_secundario varchar(40),
email varchar(100)

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


create table inmuebles(
	
id uuid default uuid_generate_v4() primary key,
id_propietario_inmueble uuid  not null,
descripcion varchar(200) not null,-- ej: semipiso de 3 Amb en Palermo
tipo varchar(20) not null, -- depto, casa, etc
estado_inmueble varchar(20) not null, -- enum('VENDIDO','DISPONIBLE','NO_DISPONIBLE','FALTA_INSPECCION');
precio_inmueble_usd decimal(10,2) not null,
direccion varchar(100) not null,-- San sarasa 123
ubicacion varchar(100) not null, -- zona:palermo, recoleta, etc
sitio_web varchar(100)-- link de la pag de la descripcion

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
references propietarios_inmuebles(id)
ON DELETE CASCADE;



-- CHECK PRECIO_INMUEBLE_USD
alter table inmuebles
add constraint CHECK_inmuebles_precio_inmueble_usd
check (precio_inmueble_usd > 0);




-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

