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


delete from inmuebles where id='32d29b6b-23d8-48ce-9f6d-88372aea3d42';


select * from inmuebles;


-- -------------------------------------------------
-- ----------- INSERCIÓN DE  REGISTRO ------------
-- -------------------------------------------------


insert into inmuebles (id_propietario_inmueble, descripcion , tipo, estado_inmueble 
, precio_inmueble_usd , direccion , ubicacion , sitio_web) values
('9fef5363-c0f7-4edc-b63a-f13c7f0d67b1' , 'Departamento de 1 Ambiente', 'Departamento','DISPONIBLE', 90.000, 'San Juan 332'
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


delete from propietarios_inmuebles where id='f55fc9f2-4159-4f86-a932-3a9c1d5449bd';


select * from propietarios_inmuebles;



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

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


