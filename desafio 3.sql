--Crear una base de datos llamada películas.
CREATE DATABASE peliculas;


--2 tablas necesarias para trabajar
CREATE table peliculas(
id serial unique primary key not null,
Pelicula varchar(100) unique not null,
ano_estreno int not null,
director varchar(100) not null
);

CREATE table reparto(
id_peliculas int not null,
FOREIGN KEY (id_peliculas) REFERENCES peliculas (id),
actor varchar(100) not null
);

--importar datos, acá me apoyé de una herramienta externa

--Obtener el ID de la película “Titanic”.
SELECT id from peliculas where pelicula = 'Titanic'; --devuelve el id 2

--Listar a todos los actores que aparecen en la película "Titanic".
SELECT actor FROM reparto rep
INNER JOIN peliculas pel
ON rep.id_peliculas = pel.id
WHERE pelicula = 'Titanic';
/*Leonardo DiCaprio
Kate Winslet
Billy Zane
Kathy Bates
Frances Fisher
Bernard Hill
Jonathan Hyde
Danny Nucci
David Warner
Bill Paxton
Gloria Stuart
Victor Garber
Suzy Amis*/

--Consultar en cuántas películas del top 100 participa Harrison Ford.
SELECT count(actor) FROM reparto rep
INNER JOIN peliculas pel
ON rep.id_peliculas = pel.id
WHERE actor = 'Harrison Ford'; --Actua en 8 peliculas del TOP 100

--Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
SELECT pelicula, ano_estreno FROM peliculas where ano_estreno BETWEEN 1990 AND 1999 ORDER BY pelicula ASC;
/*American Beauty	1999
American History X	1998
Braveheart	1995
Cadena perpetua	1994
Eduardo Manostijeras	1990
El Padrino. Parte III	1990
El club de la pelea	1999
El profesional	1994
El sexto sentido	1999
El show de Truman	1998
El silencio de los corderos	1991
Entrevista con el vampiro	1994
Forest Gump	1994
Hombres de negro	1997
La lista de Schindler	1993
La milla verde	1999
Matrix	1999
Mejor... imposible	1997
Parque Jurásico	1993
Pesadilla antes de navidad	1993
Pulp Fiction	1994
Salvar al soldado Ryan	1998
Seven	1995
Star Wars. Episodio I: La amenaza fantasma	1999
Terminator 2: el juicio final	1991
Titanic	1997
Toy Story	1995
Toy Story 2	1999
Trainspotting	1996
Uno de los nuestros	1990*/

--Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM peliculas;
/*Forest Gump	11
Titanic	7
El Padrino	10
Gladiator	9
El Señor de los anillos: El retorno del rey	43
El caballero oscuro	19
Cadena perpetua	15
Piratas del Caribe: La maldición de la Perla Negra	50
Braveheart	10
La lista de Schindler	21
Toy Story	9
Eduardo Manostijeras	20
El Señor de los anillos: La comunidad del anillo	48
Salvar al soldado Ryan	22
Regreso al futuro	17
Monstruos S.A.	14
Buscando a Nemo	15
El Señor de los anillos: Las dos torres	39
Harry Potter y el Prisionero de Azkaban	39
American History X	18
300	3
El sexto sentido	16
Pulp Fiction	12
V de Vendetta	13
El silencio de los corderos	27
Rocky	5
El club de la pelea	19
E.T	3
Parque Jurásico	15
Matrix	6
La milla verde	14
Ratatouille	11
Grease	6
El Padrino. Parte II	20
Wall-E	6
Iron Man	8
El exorcista	12
Piratas del Caribe: El cofre del hombre muerto	46
Seven	5
Terminator 2: el juicio final	29
El resplandor	13
Hombres de negro	16
Spider-Man	10
Regreso al futuro II	20
El show de Truman	17
Toy Story 2	11
Pesadilla antes de navidad	26
Star Wars. Episodio IV: Una nueva esperanza	43
Saw	3
Terminator	10
Kill Bill Vol. 1	16
Lo que el viento se llevó	25
El Laberinto del Fauno	22
Los increíbles	14
El viaje de Chihiro	19
El precio del poder	19
King Kong	9
Ben-Hur	7
Indiana Jones y la última cruzada	33
Infiltrados	11
Entrevista con el vampiro	25
Batman Begins	13
En busca del arca perdida	25
Star Wars. Episodio III: La venganza de los Sith	48
Alien	5
El bueno el feo y el malo	25
Star Wars. Episodio V: El imperio contraataca	45
El Padrino. Parte III	21
Star Wars. Episodio VI: El retorno del Jedi	43
Escuela de Rock	15
El planeta de los simios	24
Rambo	5
Full Metal Jacket	17
Tiburón	7
El profesional	14
American Beauty	15
Casablanca	10
Amélie	6
Trainspotting	13
axi driver	10
Alguien voló sobre el nido del cuco	35
Kill Bill Vol. 2	16
Spider-Man 2	12
X-Men 2	7
Transformers	12
Star Wars. Episodio I: La amenaza fantasma	42
Blade Runner	12
Apocalypse Now	14
Mejor... imposible	18
La vida de Brian	16
El libro de la selva	20
Los cazafantasmas	17
Sweeney Todd: El barbero diabólico de la calle Fleet	52
"Ocean's Eleven"	14
Blancanieves y los siete enanitos	33
Predator	8
Indiana Jones y el templo maldito	33
Uno de los nuestros	19
Mouling Rouge	13
Psicosis	8*/

--Consultar cual es la longitud más grande entre todos los títulos de las películas.
SELECT MAX(LENGTH(pelicula)) AS longitud_titulo FROM peliculas;-- la longitud mayor es 52

--truncate
TRUNCATE TABLE peliculas CASCADE;
