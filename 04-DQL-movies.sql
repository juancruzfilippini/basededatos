
USE movies_db;
#-------
SELECT series.title nombre_serie, genres.name genero FROM series, genres WHERE series.genre_id = genres.id;

SELECT episodes.title nombre_episodio, actors.first_name nombre, actors.last_name apellido FROM episodes, actor_episode, actors;

SELECT DISTINCT actors.first_name Nombre, actors.last_name Apellido, movies.title Nombre_Pelicula
FROM actors 
INNER JOIN  movies ON title LIKE "La Guerra%";

SELECT COUNT(*), genres.name
FROM genres 
INNER JOIN movies
ON movies.id = movies.genre_id
GROUP BY movies.title
HAVING  COUNT(*)>=0;



