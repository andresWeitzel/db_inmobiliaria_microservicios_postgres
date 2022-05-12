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


delete from inmuebles where id='0c605f04-17b0-4179-ba44-bf4240d4f791';


select * from inmuebles;





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


delete from propietarios_inmuebles where id='c34b5f05-9da1-41af-aacc-765ffb4bb4e9';


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


-- -------------------------------------------------
-- ----------- INSERCIÓN DE  REGISTRO ------------
-- -------------------------------------------------


insert into inmuebles (id_propietario_inmueble, descripcion , tipo, estado_inmueble 
, precio_inmueble_usd , direccion , ubicacion , sitio_web) values
('57258c5b-88eb-4028-a76d-4d3dd674a182' , 'Departamento de 1 Ambiente', 'Departamento','DISPONIBLE', 90.000, 'San Juan 332'
, 'Parque Patricios', 'www.avisosAlInstante.com.ar');


select * from inmuebles;
select * from propietarios_inmuebles;
