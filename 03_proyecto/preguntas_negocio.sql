-- Proyecto 3: Responder a preguntas de negocio
-- Seleccionamos la BD correcta
USE netflixdb;

-- Paso 1: ¿Quién ha aparecido en el mayor número de series?
SELECT
    actor_id,
    COUNT(actor_id) AS total_apariciones
FROM actuaciones
GROUP BY actor_id
ORDER BY 2 DESC;

-- Sabemos con la anterior consulta que el actor con id 18 ha aparecido más de una vez
SELECT
    *
FROM actores
WHERE actor_id = 18;

-- Paso 2: ¿Cuál es la serie con el mejor rating promedio según IMDB?
SELECT
    serie_id,
    AVG(rating_imdb) AS rating_promedio
FROM episodios
GROUP BY serie_id
ORDER BY 2 DESC;

-- La serie con el id 8 es la que tiene el rating promedio más alto
SELECT
    *
FROM series
WHERE serie_id = 8;

-- Paso 3: 
-- ¿Cuál es el episodio con la mayor duración (el más largo)?
SELECT
    titulo,
    duracion,
    descripcion
FROM episodios
ORDER BY duracion DESC
LIMIT 3; -- Usamos un LIMIT 3 ya que no sabemos si hay episodios con la misma duración
