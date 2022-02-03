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


delete from inmuebles where id=4;


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


delete from propietarios_inmuebles where id=4;


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



-- -------------------------------------------------
-- ----------- INSERCIÓN DE  REGISTRO ------------
-- -------------------------------------------------


insert into inmuebles (id_propietario_inmueble, descripcion , tipo, estado_inmueble 
, precio_inmueble_usd , direccion , ubicacion , sitio_web) values
(5 , 'Departamento de 1 Ambiente', 'Departamento','DISPONIBLE', 90.000, 'San Juan 332'
, 'Parque Patricios', 'www.avisosAlInstante.com.ar');


select * from inmuebles;
select * from propietarios_inmuebles;
