#¿Cuántas películas hay?
SELECT COUNT(*) FROM movies;
#¿Cuántas películas tienen entre 3 y 7 premios?
SELECT COUNT(*) FROM movies WHERE awards BETWEEN 3 AND 7;
#¿Cuántas películas tienen entre 3 y 7 premios y un rating mayor a 7?
SELECT COUNT(*) FROM movies WHERE rating>7 and awards BETWEEN 3 AND 7;
#Encuentra la cantidad de actores en cada película.
SELECT movie_id, count(*) FROM actor_movie GROUP BY movie_id;
#Crear un listado a partir de la tabla de películas, mostrar un reporte de la cantidad de películas por id. de género.
SELECT genre_id, count(*) FROM movies GROUP BY genre_id;
#De la consulta anterior, listar sólo aquellos géneros que tengan como suma de premios un número mayor a 5.
SELECT genre_id, count(*) FROM movies GROUP BY genre_id HAVING SUM(awards) > 5;
#Encuentra los géneros que tienen las películas con un promedio de calificación mayor a 6.0.
SELECT genre_id, COUNT(*) FROM movies GROUP BY genre_id HAVING AVG(rating) > 6;
#Encuentra los géneros que tienen al menos 3 películas.
SELECT genre_id, COUNT(*) FROM movies GROUP BY genre_id HAVING COUNT(*)>=3;

