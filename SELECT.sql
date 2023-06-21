--Задание 2--------------------------------------------------------------------
--Название и продолжительность самого длительного трека.
SELECT name, duration 
FROM Track
WHERE duration = (SELECT max(duration) FROM Track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name, duration
FROM Track
WHERE duration >= '00:03:30'
ORDER BY duration;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT DISTINCT name, release_coll
FROM Collection
WHERE EXTRACT (YEAR FROM release_coll) BETWEEN '2018' AND '2020'
ORDER BY release_coll;

--Исполнители, чьё имя состоит из одного слова.
SELECT name
FROM Artist
WHERE name = TRANSLATE(name, ' ', 'n')
ORDER BY name;

--Название треков, которые содержат слово «мой» или «my».
SELECT name
FROM Track
WHERE name LIKE '% my %' OR name LIKE '% My %' OR name LIKE '% мой %' OR name LIKE '% Мой %' OR
	name LIKE 'my %' OR name LIKE 'My %' OR name LIKE 'мой %' OR name LIKE 'Мой %' OR
	name LIKE '% my' OR name LIKE '% My' OR name LIKE '% мой' OR name LIKE '% Мой'
ORDER BY name;


--Задание 3--------------------------------------------------------------------
--Количество исполнителей в каждом жанре.
SELECT g.name, count(ga.artist_id) FROM Genre g
JOIN GenreArtist ga ON g.id = ga.genre_id
GROUP BY g.name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT count(t.id) FROM Track t
JOIN Album a ON t.album_id = a.id
WHERE EXTRACT(YEAR FROM a.release_alb) BETWEEN '2019' AND '2020'; 

--Средняя продолжительность треков по каждому альбому.
SELECT a.name, date_trunc('milliseconds', avg(t.duration)) FROM Track t
JOIN Album a ON t.album_id = a.id
GROUP BY a.name
ORDER BY avg(t.duration);

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT ar.name FROM Artist ar
JOIN ArtistAlbum aa ON ar.id = aa.artist_id 
JOIN Album al ON aa.album_id = al.id
WHERE EXTRACT(YEAR FROM al.release_alb) != '2020'
ORDER BY ar.name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.name FROM Collection c
JOIN Track t ON c.track_id = t.id
JOIN Album al ON t.album_id = al.id
JOIN ArtistAlbum aa ON al.id = aa.album_id
JOIN Artist ar ON aa.artist_id = ar.id
WHERE ar.name = 'Linkin Park'
ORDER BY c.name;


--Задание 4--------------------------------------------------------------------
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT al.name, count(ar.id) FROM Album al
JOIN ArtistAlbum aa ON al.id = aa.album_id 
JOIN Artist ar ON aa.artist_id = ar.id 
--JOIN GenreArtist ga ON ar.id = ga.artist_id 
GROUP BY al.name;

--Наименования треков, которые не входят в сборники.


--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.


--Названия альбомов, содержащих наименьшее количество треков.



