/* -------------------------------------------
 * ------ INMOBILIARIA_MICROSERVICIOS---------
 * -------------------------------------------
 * 
 * 
 * ========= DML UPDATES =============
 */


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



--Todos los Nombres, Apellidos y Direcciones con su Inicial en Mayuscula
update propietarios_inmuebles set nombre = initcap(nombre);
update propietarios_inmuebles set apellido = initcap(apellido);
update propietarios_inmuebles set direccion = initcap(direccion);

-- Reemplazamos los puntos por espacios vacios
update propietarios_inmuebles set direccion = replace (direccion, '.', '');

-- Actualizamos una direccion
update propietarios_inmuebles set direccion='Av Callao 887' where (nombre = 'Guillermo' and apellido = 'Zulenski');

select * from propietarios_inmuebles;



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ===================================
-- ======= TABLA INMUEBLES ===========
-- ===================================


select * from inmuebles;
select * from propietarios_inmuebles;


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'inmuebles';



--Todas las descripciones,Tipos, Direcciones y Ubicacion con su Inicial en Mayuscula
update inmuebles set descripcion = initcap(descripcion);
update inmuebles set tipo = initcap(tipo);
update inmuebles set direccion = initcap(direccion);
update inmuebles set ubicacion = initcap(ubicacion);

-- Reemplazamos los puntos por espacios vacios
update inmuebles set direccion = replace (direccion, '.', '');


-- Aumentamos 100 dolares el precio del inmueble
update inmuebles set precio_inmueble_usd = precio_inmueble_usd  + 100;




-- Actualizamos una direccion segun el propietario del inmueble
update inmuebles set direccion = 'San Cristobal 578' 
from  propietarios_inmuebles -- sustituimos el join (postgres)
where ( 
(propietarios_inmuebles.id = inmuebles.id_propietario_inmueble)  -- comprobacion de id
and 
(propietarios_inmuebles.nombre = 'Fabian' and propietarios_inmuebles.apellido = 'Gonzalez') --Subquery
);





select * from propietarios_inmuebles;
select * from inmuebles;


