SELECT nombre, peso, altura FROM pokemon WHERE peso > 150;

SELECT movimiento.nombre movimiento,  potencia, precision_mov FROM movimiento WHERE precision_mov >90;

SELECT movimiento.nombre movimiento, tipo.nombre tipo, potencia FROM movimiento
JOIN  tipo ON movimiento.id_tipo = tipo.id_tipo  WHERE potencia >=120;

SELECT tipo.nombre tipo_nombre, tipo_ataque.tipo ta_tipo, movimiento.potencia m_potencia FROM tipo, movimiento
JOIN tipo_ataque ON id_tipo = tipo_ataque.id_tipo_ataque WHERE potencia = 0;

SELECT numero_pokedex, nombre FROM pokemon order by nombre asc limit 10; 

SELECT pokemon.nombre, pokemon.altura, tipo.nombre FROM pokemon, tipo WHERE tipo.nombre LIKE "Electrico" ORDER BY pokemon.altura DESC;

SELECT SUM(defensa) Suma_defensa FROM estadisticas_base;

SELECT COUNT(*) Contador FROM pokemon_tipo, tipo WHERE tipo.nombre LIKE "Fuego"; 

SELECT  tipo.nombre, COUNT(numero_pokedex) FROM pokemon_tipo, tipo GROUP BY tipo.nombre;

SELECT  tipo.nombre, AVG(pokemon.peso) FROM tipo, pokemon GROUP BY tipo.nombre ORDER BY pokemon.peso desc;





SELECT * FROM pokemon, pokemon_tipo, tipo;
