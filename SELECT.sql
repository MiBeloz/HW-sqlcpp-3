--Задание 2--------------------------------------------------------------------
--Название и продолжительность самого длительного трека.
SELECT name, duration FROM Track
WHERE duration = (SELECT max(duration) FROM Track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name, duration FROM Track
WHERE duration >= '00:03:30'
ORDER BY duration;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT DISTINCT name, release_coll FROM Collection
WHERE EXTRACT(YEAR FROM release_coll) BETWEEN '2018' AND '2020'
ORDER BY release_coll;

--Исполнители, чьё имя состоит из одного слова.
SELECT name FROM Artist
WHERE name = TRANSLATE(name, ' ', 'n')
ORDER BY name;

--Название треков, которые содержат слово «мой» или «my».
SELECT name FROM Track
WHERE name LIKE '% my %' OR name LIKE '% My %' OR name LIKE '% мой %' OR name LIKE '% Мой %' OR
	name LIKE 'my %' OR name LIKE 'My %' OR name LIKE 'мой %' OR name LIKE 'Мой %' OR
	name LIKE '% my' OR name LIKE '% My' OR name LIKE '% мой' OR name LIKE '% Мой'
ORDER BY name;


--Задание 3--------------------------------------------------------------------
--Количество исполнителей в каждом жанре.
SELECT g.name, count(ga.artist_id) FROM Genre g
LEFT JOIN GenreArtist ga ON g.id = ga.genre_id
GROUP BY g.name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT count(t.id) FROM Track t
LEFT JOIN Album a ON t.album_id = a.id
WHERE EXTRACT(YEAR FROM a.release_alb) BETWEEN '2019' AND '2020'; 

--Средняя продолжительность треков по каждому альбому.
SELECT a.name, date_trunc('milliseconds', avg(t.duration)) FROM Track t
LEFT JOIN Album a ON t.album_id = a.id
GROUP BY a.name
ORDER BY avg(t.duration);

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT ar.name FROM Artist ar
LEFT JOIN ArtistAlbum aa ON ar.id = aa.artist_id 
LEFT JOIN Album al ON aa.album_id = al.id
WHERE EXTRACT(YEAR FROM al.release_alb) != '2020'
ORDER BY ar.name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.name FROM Collection c
LEFT JOIN Track t ON c.track_id = t.id
LEFT JOIN Album al ON t.album_id = al.id
LEFT JOIN ArtistAlbum aa ON al.id = aa.album_id
LEFT JOIN Artist ar ON aa.artist_id = ar.id
WHERE ar.name = 'Linkin Park'
ORDER BY c.name;


--Задание 4--------------------------------------------------------------------
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT al.name FROM Album al
LEFT JOIN ArtistAlbum aa ON al.id = aa.album_id 
LEFT JOIN Artist ar ON aa.artist_id = ar.id 
LEFT JOIN GenreArtist ga ON ar.id = ga.artist_id 
LEFT JOIN Genre g ON ga.genre_id = g.id 
GROUP BY al.name
HAVING count(g.name) > 1
ORDER BY al.name;

--Наименования треков, которые не входят в сборники.
SELECT t.name FROM Track t
LEFT JOIN Collection c ON t.id = c.track_id 
WHERE c.track_id IS NULL
ORDER BY t.name;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT DISTINCT ar.name, t.name, t.duration  FROM Artist ar
LEFT JOIN ArtistAlbum aa ON ar.id = aa.artist_id 
LEFT JOIN Album al ON aa.album_id = al.id 
LEFT JOIN Track t ON al.id = t.album_id 
WHERE t.duration = (SELECT min(duration) FROM Track);

--Названия альбомов, содержащих наименьшее количество треков.
SELECT al.name, count(t.id), ar.name FROM Album al
LEFT JOIN Track t ON al.id = t.album_id 
LEFT JOIN ArtistAlbum aa ON t.album_id = aa.album_id
LEFT JOIN Artist ar ON aa.artist_id = ar.id 
WHERE t.album_id IN (SELECT album_id FROM Track 
    GROUP BY album_id
    HAVING count(id) = (SELECT count(id) FROM Track
        GROUP BY album_id
        ORDER BY count
        LIMIT 1
    )
)
GROUP BY al.name, ar.name
ORDER BY al.name;


