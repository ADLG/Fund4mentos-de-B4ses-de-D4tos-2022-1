set search_path to discografica;

--1. Seleccionar el nombre de los artistas1 que no sean de México.
select nombre 
from artista natural join pertenece natural join interprete
where pais <> 'México'

--2. Obtener el título de las canciones con más de 5 minutos de duración.
select titulo, duracion  from cancion
where duracion > '05.00'
ORDER BY titulo

--3. Obtener la lista de las distintas funciones que pueden realizar los artistas.
select a.nombre, b.funcion from artista a
join pertenece b on a.curp = b.curp
order by funcion

--4. Seleccionar el nombre y el lugar de origen de los clubes con más de 500 fans.
select nombre, lugarorigen from club
where club.numfans > 500
order by nombre

--5. Obtener el nombre y el lugar de origen de cada club de fans de intérpretes de México así como el nombre del intérprete al que admiran.
select a.nombre, a.lugarorigen, a.nombreint, b.pais from club a
join interprete b on a.nombreint = b.nombreint
where pais = 'México'
order by nombreint

--6. Obtener el nombre de los discos que contienen alguna canción que dure más de 5 minutos y decir cuantas canciones del disco cumplen esto.
select a.titulo, a.duracion, b.nombre from cancion a
join artista b on a.curpc = b.curp
where duracion > '05.00'
order by titulo

--7. Obtener los nombres de las canciones que dan nombre al disco en el que aparecen.
select a.titulo, b.album from cancion a
join disco b on a.titulo = b.album
order by titulo;

--8. Obtener los nombres de las disqueras y direcciones de aquellas compañías disqueras que han grabado algún disco que empiece con ’T’.
select a.disquera, a.album, b.direccion from disco a
join disquera b on a.disquera = b.disquera
where album like 'T%'
order by disquera

--9. Obtener el nombre de los discos de los intérpretes registrados en el año 1996.
select a.album, a.nombreint, b.fechacreacion from disco a
join interprete b on a.nombreint = b.nombreint
where fechacreacion > '1995-12-30' and fechacreacion < '1997-01-01'

--10. El dúo dinámico por fin se jubila; para sustituirlos se pretende hacer una selección sobre todos los pares de artistas españoles distintos tales que el primero sea voz y el segundo guitarra. Obtener dicha selección.
select '(' || a.nombre || ' , ' || B.nombre ||')' ArtistayFuncion FROM 
(select nombre
from artista natural join pertenece natural join interprete
where pais = 'España' and funcion = 'Voz')  A ,
(select nombre
from artista natural join pertenece natural join interprete
where pais = 'España' and funcion = 'Guitarra') B;

--11. Obtener el título de las canciones de todos los discos del grupo U2
select c.titulo, a.album, a.nombreint from disco a
join esta b on a.album = b.album join cancion c on b.codcan = c.codcan
where nombreint = 'U2'

--12. Obtener el nombre del club con mayor número de fans indicando ese número.
select nombre, numfans from club
where numfans = (select max(numfans) from club)

--13. Obtener el género de los primeros 3 discos con mayor número de fans.
select b.genero, a.numfans from club a
join disco b on a.nombreint=b.nombreint
order by numfans desc
fetch first 3 rows only;

--14. Obtener el número de discos de cada intérprete.
select nombreint, count(album)numero_de_discos from disco
group by nombreint;

--15. Obtener el número de canciones que ha grabado cada compañía discográfica y su dirección.
select c.disquera, d.direccion, count(a.codcan)numero_de_canciones from cancion a
join esta b on a.codcan = b.codcan join disco c on c.numref=b.numref
join disquera d on d.disquera = c.disquera
group by d.direccion, c.disquera

--16. Obtener los nombre de los artistas de grupos con clubes de fans de más de 500 personas y que el grupo sea de Inglaterra.
select a.nombre, c.lugarorigen from artista a
join pertenece b on a.curp = b.curp join club c on c.nombreint=b.nombreint
where lugarorigen = 'Inglaterra' and numfans > 500

--17. Obtener el nombre de los artistas que pertenezcan a un grupo de México.
select a.nombre, c.pais, c.nombreint  from artista a
join pertenece b on a.curp = b.curp join interprete c on c.nombreint=b.nombreint
where c.pais = 'México'

--18. Obtener el décimo (Debe haber sólo 9 por encima de el) club con mayor número de fans indicando este número).
select * from
(select row_number() over (order by numfans desc) as lugar, nombre, numfans from club) T
where lugar = 10

-- 20. Indica el nombre del compositor que más canciones ha creado y el título de estas.
select t1.nombrec, max(t1.curpc) from
(select b.nombrec, count(b.curpc)curpc from compositor b
join cancion a on a.curpc=b.curpc
group by b.nombrec) T1
group by t1.nombrec

select b.nombrec, a.titulo, count(a.curpc) from cancion a
join compositor b on a.curpc = b.curpc
where b.curpc = 'EIRE20051975'
group by b.nombrec, a.titulo

-- 21. Obtener el año en el que hubo mayor lanzamientos de discos.
select fechal, count(fechal)fechas from disco
group by 1

select distinct fechal as mayorlanzamiento_discos from disco
where fechal = '2006-01-01'

-- 22. Obtener para cada grupo con más de dos integrantes, el nombre y el número de componentes del grupo.
select nombreint ,count(nombreint)numero_componentes from pertenece
group by nombreint
having count(nombreint) > 2

-- 23. Obtener para cada artista el nombre de sus álbumes y las canciones de cada álbum.
select a.nombre as nombre_artista, c.album from artista a
join pertenece b on a.curp=b.curp join interprete d on d.nombreint=b.nombreint
join disco c on c.nombreint=d.nombreint

-- 25. Obtener los Clubs que sean fanáticos de grupos que tengan al menos un integrante que tenga la función de bajo.
select a.nombre as nombre_de_club, b.nombreint, b.funcion from club a
join pertenece b on a.nombreint=b.nombreint
where b.funcion = 'Bajo'

-- 26. Se desea saber cuales son las funciones que desempeñan los artistas y cuantos hay por cada funciones dentro de la base de datos.
select b.funcion, a.nombre as nombre_artista from artista a
join pertenece b on a.curp=b.curp
order by funcion