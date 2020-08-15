# Sistema de Usuarios
Sistema de manejo de usuarios y grupos por parte de estudiantes de último año de Ingeniería Informática en ULACIT. 

[Robert Ramírez](https://github.com/robertram)
  
[Rodrigo Avendaño](https://github.com/rodri9920)

[Valeria Rojas](https://github.com/vrojasc739)

# Secciones del Proyecto
## Crear Usuario
Esta sección tiene la función únicamente de ingresar el usuario y mostrar una lista de usuarios. Para esto se utiliza un DataGrid para mostrar los datos de la base de datos en la tabla Usuarios. 
Para agregar los datos del usuario a la base de datos, llenamos los inputs correspondientes y presionamos el botón de Agregar. Este ejecuta el código del botón agregar, el cual revisa que los campos obligatorios no estén vacíos, realiza la conexión con la base de datos y agrega los datos a la base de datos. 

### Posición GPS
La funcionalidad de tomar la posición gps del usuario se realiza con una función nativa de javascript llamada navigation.geolocation. 

Además se agrega las coordenadas calculadas por el código javascript en dos inputs que luego son leídos por código asp .net, para ser agregados a la base de datos. 

Como un extra, se renderiza un mapa donde podemos ver la ubicación que las coordenadas indican, el cual podemos acercar e inspeccionar alrededores. 

## Editar Usuario
En la página de Editar Usuario tenemos un espacio para editar y otro para eliminar un usuario. Además de un Grid View para mostrar los datos al igual que en la página de crear. 
Para **editar** debemos ingresar la cédula del usuario, escoger el campo a editar e ingresar el nuevo valor. 
Para **eliminar** debemos ingresar la cédula del usuario y presionar el botón de eliminar. 

### Posición GPS
Para editar las coordenadas gps, se debe escoger en el dropdown la opción de coordenadas. Al momento de ejecutar el botón de editar, se lee la opción y en caso de haber escogido coordenadas se vuelve a leer los inputs de las coordenadas con código asp .net y estos datos son agregados a la base de datos con un update esta vez, en lugar de un insert. 



## Crear Grupo
Esta página se utiliza para agregar grupos a la base de datos. Al igual que con los usuarios, un **GridView** se encarga de leer los datos de la base de datos y mostarlo en una tabla. En caso de no existir grupos en la base de datos, la tabla sale vacía.
Para agregar los datos del grupo a la base de datos, llenamos los inputs correspondientes y presionamos el botón de Agregar. Este ejecuta el código del botón agregar, el cual revisa que los campos obligatorios no estén vacíos, realiza la conexión con la base de datos y agrega los datos a la base de datos. 

## Editar Grupo
En la página de Editar Grupo tenemos un espacio para editar y otro para eliminar un grupo. Además de un Grid View para mostrar los datos al igual que en la página de crear. 
Para **editar** debemos ingresar el código del grupo, escoger el campo a editar e ingresar el nuevo valor. 
Para **eliminar** debemos ingresar el código del grupo y presionar el botón de eliminar. 

## Crear Rol
Esta página se utiliza para agregar roles a la base de datos. Un **GridView** se encarga de leer los datos de la base de datos y mostarlo en una tabla. En caso de no existir roles en la base de datos, la tabla sale vacía.
Para agregar los datos del rol a la base de datos, llenamos los inputs correspondientes y presionamos el botón de Agregar. Este ejecuta el código del botón agregar, el cual revisa que los campos obligatorios no estén vacíos, realiza la conexión con la base de datos y agrega los datos a la base de datos. 

## Editar Rol
En la página de Editar Rol tenemos un espacio para editar y otro para eliminar un rol. Además de un Grid View para mostrar los datos al igual que en la página de crear. 
Para **editar** debemos ingresar el código del rol e ingresar el nuevo valor. 
Para **eliminar** debemos ingresar el código del rol y presionar el botón de eliminar. 