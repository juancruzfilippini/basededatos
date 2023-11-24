SELECT CONCAT(first_name, " ", last_name) Nombre_Apellido  FROM actor LIMIT 5;

SELECT CONCAT(first_name, " ", last_name) Nombre_Apellido, email Correo_Electronico  FROM customer WHERE active LIKE 0;

SELECT title Titulo, release_year Año, description Descripcion, rental_duration FROM film WHERE rental_duration > 5
ORDER BY rental_duration DESC;

SELECT * FROM rental WHERE rental_date LIKE "2005-05%";

SELECT COUNT(rental_id) cantidad FROM rental;

SELECT SUM(amount) TOTAL, COUNT(rental_id) Cantidad, AVG(amount) Importe_Promedio  FROM payment;

SELECT * FROM payment;

SELECT  customer_id Cliente, SUM(amount) Total, COUNT(rental_id) Rentas FROM payment GROUP BY customer_id ORDER BY Total DESC LIMIT 10;

