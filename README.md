# Base de Datos db_inmobiliaria_microservicios

* Base de Datos para el Consumo de los Microservicio InmuebleService y PropietarioInmuebleService
* Repositorio MicroServices : https://github.com/andresWeitzel/Microservicios_Spring_Cloud_Netflix_Spring_Boot

</br>

#### Diagrama Entidad Relación  `db_inmobiliaria_microservicio`

![Index app](https://github.com/andresWeitzel/db_inmobiliaria_microservicios_postgres/blob/master/documentation/db_inmobiliaria_microervicios_DER.png)


</br>

* DBeaver implementa la Notación IDEF1X para el Diagrama Entidad Relación. En la documentación que anexa DBeaver(https://dbeaver.com/docs/wiki/ER-Diagrams/) no está del todo claro la relación que implementa. Investigando sobre las mismas, se puede concluir que la Relación Diamante y Círculo entre línea Punteada se declara como relaciónes Opcionales.

![Index app](https://github.com/andresWeitzel/Administracion_Gestion_BasesDeDatos_PostgreSQL/blob/master/documentacion/relacionDeTablas.png)

</br>

### Vista de Registros como Ejemplificación
#### Listado de inmuebles de la Tabla  `inmuebles` aplicando UUID

![Index app](https://github.com/andresWeitzel/db_inmobiliaria_microservicios_postgres/blob/master/documentation/listado_inmuebles.png)


#### Listado de propietarios de la Tabla  `propietarios_inmuebles` aplicando UUID 

![Index app](https://github.com/andresWeitzel/db_inmobiliaria_microservicios_postgres/blob/master/documentation/listado_propietarios_inmuebles.png)



<hr>

## Más Información

</br>

| **Tecnologías Empleadas** | **Versión** | **Finalidad** |               
| ------------- | ------------- | ------------- |
| PostgreSQL | 13.4  | SGDB  |
| DBeaver | 21.1  | Gestor de Base de Datos | 
| Git Bash | 2.29.1  | Control de Versiones |
| CMD | 10 | Manipular los Servicios de Postgres mediante linea de comandos | 

</br>


## Descarga y Documentacion de las Tecnologías Empleadas:

</br>

| **Tecnologías** | **Descarga** | **Documentación** |               
| ------------- | ------------- | ------------- |
| Git Bash |  https://git-scm.com/downloads |   https://git-scm.com/docs |
| PostgreSQL |  https://www.postgresql.org/download/  | https://www.postgresql.org/docs/current/tutorial.html  |
| DBeaver | https://dbeaver.io/download/  | https://github.com/dbeaver/dbeaver/wiki | 

</br>

<hr>

## `Documentación y Guía Del Proyecto`
#### (Esta Documentación y Guía que Desarrollé es para la Creación, Configuración, Manejo, Etc de la Base de Datos `db_inmobiliaria_microservicios` con PostgreSQL en DBeaver. Como así también para el Desarrollo y Aplicaciones del Código, Manejo de los Posibles Errores que pudiesen surgir, Manejo de Git, Consideraciones y Declaraciones del Proyecto, etc. Recomiendo Leerla y Realizar todo paso a paso como se indica en la misma, cualquier aporte o sugerencia, informar al respecto).

## Indice

  #### Sección 1) Configuración de la Base de Datos

  - [ Paso 1) Configuración y Puesta en Marcha de la Base de Datos.](#paso-1-configuración-y-puesta-en-marcha-de-la-base-de-datos-db-inmobiliaria)

  - [ Paso 2) Ejecución de los Archivos .SQL .](#paso-2-ejecución-dee-los-archivos-sql)


#### Sección 2) Uso y Manejo de GIT

- [ Uso y Manejo de Git.](#uso-y-manejo-de-git)
 

  


</br>

## Sección 1) Configuración de la Base de Datos

</br>

### Paso 1) Configuración y Puesta en Marcha de la Base de Datos `db_inmobiliaria_microservicios`
#### (Primeramente deberás descargar el SGDB PostgreSQL , luego algún GDB como por ej. DBeaver y crear la db ).

#### 1.1) Descarga de DBeaver
* https://dbeaver.io/
* Descargar, Ejecutar e Instalar (Siguiente, Siguiente).


#### 1.2) Descarga de PostgreSQL
*  https://www.postgresql.org/download/
*  Descargar, Ejecutar e Instalar (Siguiente, Siguiente).


#### 1.3) Configuración de PostgreSQL en DBeaver (Conexión a PostgreSQL).
* Click sobre la Pestaña Archivo.
    * --> Nuevo
    * --> Database Connection, Siguiente.
    * --> Seleccionar el SGDB PostgreSQL, Siguiente.
    * --> En el Host dejamos como aparece `localhost`
    * --> En Database dejamos como aparece `postgres`
    * --> El resto lo dejamos todo por defecto ( Host, Port, etc ).
    * --> Finalizar, asegurarse que se haya creado la conexión a Postgres correctamente
    * --> Ya está la conexión configurada.



#### 1.4) Creación de la Base de Datos `db_inmobiliaria_microservicios` en la Conexión de PostgreSQL
#### ( En DBeaver tuve problemas al incluir código sql para la creación de la db, así que vamos a crear la db manualmente)
* Una vez realizado el paso anterior, se debería haber desplegado la Conexión PostgreSQL, sino desplagar para visualizar 
*  Click Der sobre la conexión creada `postgres`
    * --> Crear, Base de Datos
    * --> En Database Name colocamos `db_inmobiliaria_microservicios`.
    * --> En owner Seleccionamos postgres o dejarlo seleccionado por defecto.
    * --> Template database vacío.
    * --> En Encoding Seleccionamos UTF8 o dejarlo seleccionado por defecto.
    * --> Tablespace pg_default o dejarlo seleccionado por defecto.
    * --> Aceptar, ya está la db creada.


#### 1.5) Creación de una Conexión Independiente de la Base de Datos `db_inmobiliaria_microservicios`
* Ya tenemos creada la conexión con Postgres y nuestra base de datos, ahora podemos crear una conexión independiente para su uso, cuestión de comodidad
* Click sobre la Pestaña Archivo.
    * --> Nuevo
    * --> Database Connection, Siguiente.
    * --> Seleccionar el SGDB PostgreSQL, Siguiente.
    * --> En Database escribimos nuestra db creada `db_inmobiliaria_microservicios`
    * --> Seguidamente vamos a agregar una contraseña, en password escribimos `postgres`
    * --> El resto lo dejamos todo por defecto ( Host, Port, etc ).
    * --> Finalizar, asegurarse que se haya creado la db con su configuración
    * --> Ya está la conexión configurada.
    * --> IMPORTANTE : Lo único configurable es `Database: db_inmobiliaria_microservicios` y `Contraseña:postgres`


</br>



### Paso 2) Ejecución de los Archivos `.SQL`
#### (Vamos a trabajar con los Archivos sql dentro de DBeaver, los mismos están enumerados para su orden de ejecución).

#### 2.1) Importamos los Archivos SQL a DBeaver
* Click sobre Archivo (Barra Superior)
    * --> Buscar Archivo Denominado..
    * --> Seleccionas los .sql y Open.
    * --> Listo
 

#### 2.2) Orden de Ejecución de los Scripts
* Cada uno de los Archivos están enumerados para que se realice el orden de ejecución correspondiente.

* 01_db_inmobiliaria_microservicios_DDL.sql
* 02_db_inmobiliaria_microservicios_DML_INSERTS.sql
* 03_db_inmobiliaria_microservicios_DML_UPDATES.sql
* 04_db_inmobiliaria_microservicios_DML_DELETE.sql
* 05_db_inmobiliaria_microservicios_DML_QUERIES.sql



</br>

## Sección 2) Uso y Manejo de Git.

</br>

### Uso y Manejo de Git
### Descarga de Git
* Nos dirigimos a https://git-scm.com/downloads y descargamos el versionador
* Como toda aplicacion siguiente.... siguiente....
* IMPORTANTE:NO TENER DBEAVER ABIERTO DURANTE LA INSTALACION, SINO NO RECONOCE EL PATH

### Abrir una Consola de Git (Git Bash) desde Windows
* --> Escribimos Git Bash desde el Buscador de Windows
* --> Desde la consola escribimos el comando cd seguidamente de la ruta del proyecto
* --> Tenemos que tener la ruta del Proyecto y pegarla en el Git Bash
* --> Una vez dentro del Proyecto podremos hacer uso de Git


### Subir el proyecto al repositorio de github desde la consola de git 

#### 1)Creamos un nuevo repositorio en GitHub.

#### 2)Inicializamos nuestro repositorio local .git desde la terminal.
* git init

#### 3)Agregamos lo desarrollado a nuestro repo local desde la terminal.
* git add *

#### 4)Agregamos lo que tenemos en nuestro repo local al área de Trabajo desde la terminal.
* git commit -m "agrega un comentario entre comillas"

#### 5)Le indicamos a git donde se va a almacenar nuestro proyecto(fijate en tu repositorio de github cual es el enlace de tu proyecto(esta en code)).
* git remote add origin https://github.com/andresWeitzel/db_inmobiliaria_microservicios_postgres

#### 6)Subimos nuestro proyecto.
* git push -u origin master


</br>


### Actualización del repositorio del proyecto desde la consola de GIT

#### 1)Visualizamos las modificaciones realizadas en local
* git status

#### 2)Agregamos lo modificado al area de trabajo
* git add *

#### 3)Confirmamos las modificaciones realizadas
* git commit -m "tu commit entre comillas"

#### 4)Sincronizamos y traemos todos los cambios del repositorio remoto a la rama en la que estemos trabajando actualmente.
##### (SOLO SI SE REALIZARON CAMBIOS DESDE OTRA LADO, ej: en github u/o/y un equipo de trabajo)
* git pull https://github.com/andresWeitzel/db_inmobiliaria_microservicios_postgres

#### 5)Enviamos todos los cambios locales al repo en github
* git push https://github.com/andresWeitzel/db_inmobiliaria_microservicios_postgres

#### 6) En casos extremos pisamos todo el repositorio
* git push -f --set-upstream origin master


</br>



