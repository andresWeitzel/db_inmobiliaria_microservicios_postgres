/* -------------------------------------------
 * ------ INMOBILIARIA_MICROSERVICIOS---------
 * -------------------------------------------
 * 
 * 
 * ========= DML DELETES =============
 */




-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ===================================
-- ======= TABLA INMUEBLES ===========
-- ===================================


select * from inmuebles;


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'inmuebles';


delete from inmuebles where id='ef3b08fe-6d68-4f7c-a1d7-c88d1990ee72';


select * from inmuebles;


-- -------------------------------------------------
-- ----------- INSERCIÓN DE  REGISTRO ------------
-- -------------------------------------------------


insert into inmuebles (id_propietario_inmueble, descripcion , tipo, estado_inmueble 
, precio_inmueble_usd , direccion , ubicacion , sitio_web) values
('e2610bf9-ebc6-4511-9317-c84d23f22db4' , 'Departamento de 1 Ambiente', 'Departamento','DISPONIBLE', 90.000, 'San Juan 332'
, 'Parque Patricios', 'www.avisosAlInstante.com.ar');


select * from inmuebles;
select * from propietarios_inmuebles;





-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ================================================
-- ======= TABLA PROPIETARIOS_INMUEBLES ===========
-- ================================================


select * from propietarios_inmuebles;


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'propietarios_inmuebles';


delete from propietarios_inmuebles where id='902bdda8-086a-47b3-bb38-6cd7010bb5ae';


select * from propietarios_inmuebles;


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------



-- -------------------------------------------------
-- ----------- INSERCIÓN DE  REGISTRO ------------
-- -------------------------------------------------


insert into propietarios_inmuebles (nombre, apellido, edad , fecha_nacimiento 
, tipo_documento , nro_documento , direccion , nro_telefono_principal
, nro_telefono_secundario , email ) values
('Sofia','Aguilar',56,'1967/11/09','DNI','645738444','Avenida Cordoba 1178'
,'+5484933332','-','sofiaAguilar@gmail.com');



select * from inmuebles;
select * from propietarios_inmuebles;


insert into inmuebles(id_propietario_inmueble, descripcion , tipo, estado_inmueble 
, precio_inmueble_usd , direccion , ubicacion , sitio_web)values
('931b6713-29c4-462e-8175-819286236762', 'Casa 3 Ambientes, 4 Dormitorios, 1 baño y Cochera', 'Casa','VENDIDO', 168.000
, 'Aristobulo del Valle 608 ', 'Belgrano', 'www.avisosAlInstante.com.ar');


