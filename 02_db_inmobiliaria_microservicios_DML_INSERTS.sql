/* -------------------------------------------
 * ------ INMOBILIARIA_MICROSERVICIOS---------
 * -------------------------------------------
 * 
 * 
 * ========= DML INSERTS =============
 */




-- Eliminamos todos los registros de las tablas
delete from inmuebles cascade;
delete from propietarios_inmuebles cascade;



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



-- campos DATE -->Ej 2020/09/09



-- -------------------------------------------------
-- ----------- INSERCIÓN DE  REGISTROS ------------
-- -------------------------------------------------


insert into propietarios_inmuebles (nombre, apellido, edad , fecha_nacimiento 
, tipo_documento , nro_documento , direccion , nro_telefono_principal
, nro_telefono_secundario , email ) values
('Fabian', 'Gonzalez', 45, '1975/10/09', 'DNI', '45897677', 'San Vicente 879'
, '+5491156749874', '6578-3786', 'viccentin3k@gmail.com'),
('Marcela', 'Sanchez', 49, '1971/12/08', 'DNI', '4298762543', 'San AZUL 222'
, '+5491173654378', '-', 'marcelaSanchez222@gmail.com'),
('Guillermo', 'Zulenski', 65, '1955/10/09', 'DNI', '35897677', 'Av. Calloa 879'
, '+5491156788', '+5491156788', 'zulenskiVentas2019@gmail.com'),
('Sofia','Aguilar',56,'1967/11/09','DNI','645738444','Avenida Cordoba 1178'
,'+5484933332','-','sofiaAguilar@gmail.com');



select * from propietarios_inmuebles;



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




-- -------------------------------------------------
-- ----------- INSERCIÓN DE  REGISTROS ------------
-- -------------------------------------------------


insert into inmuebles (id_propietario_inmueble, descripcion , tipo, estado_inmueble 
, precio_inmueble_usd , direccion , ubicacion , sitio_web) values
('c2dc943f-c05e-4ad7-8e9c-ca9480477416', 'PH de 4 Ambientes, 3 dormis, 2 baños, Amplio Espacio,jardin y balcon, Sin Expensas, Lujoso'
, 'PH/Casa','DISPONIBLE', 177.000, 'San Cristobla 456', 'Palermo', 'www.avisosAlInstante.com.ar'),
('b942e149-45c0-480e-bc9e-20589697ef00', 'Casa 3 Ambientes, 4 Dormitorios, 1 baño y Cochera', 'Casa','VENDIDO', 168.000
, 'Aristobulo del Valle 608 ', 'Belgrano', 'www.avisosAlInstante.com.ar'),
('ed8e7e37-de5e-4f30-aaa6-13712e8f4233' , 'Departamento de 2 Ambientes', 'Departamento','VENDIDO', 110.000, 'Av. Corrientes 112'
, 'Caballito', 'www.avisosAlInstante.com.ar'),
('c34b5f05-9da1-41af-aacc-765ffb4bb4e9' , 'Departamento de 1 Ambiente', 'Departamento','DISPONIBLE', 90.000, 'San Juan 332'
, 'Parque Patricios', 'www.avisosAlInstante.com.ar');



select * from inmuebles;


