SELECT * FROM bd2.usuarios_lenguajes;

-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
SELECT nombre, lenguaje FROM bd2.usuarios_lenguajes;

-- Ejercicio 2: Contar cuántos usuarios hay en total.
SELECT COUNT(*) FROM bd2.usuarios_lenguajes;

-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
SELECT COUNT(*) FROM bd2.usuarios_lenguajes WHERE edad>30;

-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
SELECT COUNT(*) FROM bd2.usuarios_lenguajes WHERE lenguaje="JavaScript";

-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
SELECT * FROM bd2.usuarios_lenguajes WHERE edad=28;

-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
SELECT * FROM bd2.usuarios_lenguajes WHERE email="juan.gomez@example.com";

-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
SELECT * FROM bd2.usuarios_lenguajes WHERE lenguaje="Java" AND edad<25;

-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
SELECT COUNT(DISTINCT edad) FROM bd2.usuarios_lenguajes WHERE lenguaje="Java";

-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
SELECT * FROM bd2.usuarios_lenguajes WHERE lenguaje IS NULL;

-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
SELECT nombre, edad FROM bd2.usuarios_lenguajes WHERE edad = (SELECT MIN(edad) FROM bd2.usuarios_lenguajes);

-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
SELECT id_usuario, edad FROM bd2.usuarios_lenguajes ORDER BY edad DESC;

-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
SELECT COUNT(*) FROM bd2.usuarios_lenguajes WHERE edad>28;

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
SELECT * FROM bd2.usuarios_lenguajes WHERE apellido LIKE "%a%";

-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
SELECT lenguaje, COUNT(*) AS usuarios FROM bd2.usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje ORDER BY usuarios DESC LIMIT 1;

-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
SELECT * FROM bd2.usuarios_lenguajes WHERE edad>25 AND lenguaje="TypeScript";

-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
SELECT COUNT(*) FROM bd2.usuarios_lenguajes WHERE lenguaje="Python";

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
SELECT nombre, lenguaje FROM bd2.usuarios_lenguajes ORDER BY nombre;

-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
SELECT * FROM bd2.usuarios_lenguajes ORDER BY nombre;

-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
SELECT * FROM bd2.usuarios_lenguajes WHERE lenguaje IS NOT NULL AND edad>25 AND edad<35;

-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
SELECT COUNT(*) FROM bd2.usuarios_lenguajes WHERE lenguaje="CSS" AND edad>29;

-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
SELECT *, COUNT(*) as cantidad_lenguajes FROM bd2.usuarios_lenguajes WHERE lenguaje IS NOT NULL GROUP BY id_usuario;

-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
SELECT lenguaje FROM bd2.usuarios_lenguajes ORDER BY length(lenguaje) DESC LIMIT 1;

-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
SELECT CONCAT(nombre, " ", apellido) AS nombre_completo FROM bd2.usuarios_lenguajes;

-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
SELECT *, COUNT(*) as cantidad_lenguajes FROM bd2.usuarios_lenguajes WHERE lenguaje IS NOT NULL AND edad>25 GROUP BY id_usuario;

-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
SELECT * FROM bd2.usuarios_lenguajes WHERE edad IN ( SELECT edad FROM bd2.usuarios_lenguajes GROUP BY edad HAVING COUNT(*) > 1 );

-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
SELECT * FROM bd2.usuarios_lenguajes WHERE edad<30 ORDER BY length(lenguaje) DESC LIMIT 1;

-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
SELECT email FROM bd2.usuarios_lenguajes WHERE lenguaje IS NOT NULL;

-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
SELECT COUNT(*) FROM bd2.usuarios_lenguajes WHERE apellido LIKE "g%";

-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
SELECT * FROM bd2.usuarios_lenguajes WHERE lenguaje LIKE "j%" ORDER BY length(lenguaje) LIMIT 1;

-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
SELECT * FROM bd2.usuarios_lenguajes WHERE edad>30 ORDER BY length(lenguaje) LIMIT 1;

-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
SELECT * FROM bd2.usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY (lenguaje);

-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
SELECT COUNT(*) FROM bd2.usuarios_lenguajes WHERE lenguaje IS NOT NULL AND edad>20 AND edad<25;

-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
SELECT * FROM bd2.usuarios_lenguajes WHERE lenguaje!="SQL";

-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
SELECT lenguaje FROM bd2.usuarios_lenguajes WHERE edad>29 ORDER BY length(lenguaje) DESC LIMIT 1;

-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
SELECT *, edad - (SELECT AVG(edad) FROM bd2.usuarios_lenguajes) AS diferencia_edad FROM bd2.usuarios_lenguajes ;

-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
SELECT COUNT(*) FROM bd2.usuarios_lenguajes WHERE lenguaje LIKE "%script%";

-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
SELECT *, length(nombre) FROM bd2.usuarios_lenguajes WHERE lenguaje IS NOT NULL;

-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
SELECT lenguaje FROM bd2.usuarios_lenguajes ORDER BY id_usuario DESC LIMIT 1;

-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
SELECT SUM(edad) AS suma_edades_totales FROM bd2.usuarios_lenguajes;

-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
SELECT COUNT(*) FROM bd2.usuarios_lenguajes WHERE lenguaje LIKE "p%" AND edad<28;