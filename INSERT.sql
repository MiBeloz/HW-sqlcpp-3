--Fill---------------------------------------------------------

INSERT INTO Artist(name)
VALUES ('Linkin Park'), ('Eminem'), ('Metallica'), ('Thirty Seconds to Mars'), ('Katy Perry');

INSERT INTO Genre(name)
VALUES ('Hip-hop'), ('Alternative rock'), ('Pop'), ('Metal');

INSERT INTO GenreArtist(genre_id, artist_id)
VALUES (2, 1), (1, 1), (1, 2), (4, 3), (2, 4), (3, 5);

INSERT INTO Album(name, release_alb)
VALUES ('Living Things', '2012-06-26'), ('Kamikaze', '2018-08-31'), ('Music to Be Murdered By', '2020-01-17'),
	('72 Seasons', '2023-04-14'), ('Hardwired… To Self-Destruct', '2016-11-18'), ('America', '2018-04-06'),
	('Smile', '2020-08-28');

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES (1, 1), (2, 2), (2, 3), (3, 4), (3, 5), (4, 6), (5, 7);

--Living Things
INSERT INTO Track(name, duration, album_id)
VALUES ('Lost in the Echo', '00:03:25', 1), ('In My Remains', '00:03:20', 1), ('Burn It Down', '00:03:52', 1),
	('Lies Greed Misery', '00:02:27', 1), ('I`ll Be Gone', '00:03:31', 1), ('Castle of Glass', '00:03:25', 1), 
	('Victimized', '00:01:46', 1), ('Roads Untraveled', '00:03:49', 1), ('Skin to Bone', '00:02:48', 1), 
	('Until It Breaks', '00:03:43', 1), ('Tinfoil', '00:01:11', 1),  ('Powerless', '00:03:43', 1);

--Kamikaze
INSERT INTO Track(name, duration, album_id)
VALUES ('The Ringer', '00:05:37', 2), ('Greatest', '00:03:46', 2), ('Lucky You', '00:04:04', 2), ('Normal', '00:03:42', 2),
	('Stepping Stone', '00:05:09', 2), ('Not Alike', '00:04:48', 2), ('Kamikaze', '00:03:36', 2), ('Fall', '00:04:22', 2),
	('Nice Guy', '00:02:30', 2), ('Good Guy', '00:02:22', 2), ('Venom', '00:04:29', 2);
	
--Music to Be Murdered By
INSERT INTO Track(name, duration, album_id)
VALUES ('Premonition', '00:02:54', 3), ('Unaccommodating', '00:03:37', 3), ('You Gon` Learn', '00:03:55', 3),
	('Those Kinda Nights', '00:02:58', 3), ('In Too Deep', '00:03:15', 3), ('Godzilla', '00:03:31', 3),
	('Darkness', '00:05:37', 3), ('Leaving Heaven', '00:04:26', 3), ('Yah Yah', '00:04:47', 3), ('Stepdad', '00:03:33', 3),
	('Marsh', '00:03:21', 3), ('Never Love Again', '00:02:58', 3), ('Little Engine', '00:02:57', 3),
	('Lock It Up', '00:02:50', 3), ('Farewell', '00:04:08', 3), ('No Regrets', '00:03:20', 3), ('I Will', '00:05:03', 3);
	
--72 Seasons
INSERT INTO Track(name, duration, album_id)
VALUES ('72 Seasons', '00:07:39', 4), ('Shadows Follow', '00:06:12', 4), ('Screaming Suicide', '00:05:30', 4),
	('Sleepwalk My Life Away', '00:06:56', 4), ('You Must Burn!', '00:07:03', 4), ('Lux Aeterna', '00:03:22', 4),
	('Crown of Barbed Wire', '00:05:49', 4), ('Chasing Light', '00:06:45', 4), ('If Darkness Had a Son', '00:06:36', 4),
	('Too Far Gone?', '00:04:34', 4), ('Room of Mirrors', '00:05:34', 4), ('Inamorata', '00:11:10', 4);
	
--Hardwired… To Self-Destruct
INSERT INTO Track(name, duration, album_id)
VALUES ('Hardwired', '00:03:09', 5), ('Atlas, Rise!', '00:06:28', 5), ('Now That We`re Dead', '00:06:59', 5),
	('Moth into Flame', '00:05:50', 5), ('Dream No More', '00:06:29', 5), ('Halo on Fire', '00:08:15', 5),
	('Confusion', '00:06:41', 5), ('ManUNkind', '00:06:55', 5), ('Here Comes Revenge', '00:07:17', 5),
	('Am I Savage?', '00:06:29', 5), ('Murder One', '00:05:45', 5), ('Spit Out the Bone', '00:07:09', 5);
	
--America
INSERT INTO Track(name, duration, album_id)
VALUES ('Walk on Water', '00:03:05', 6), ('Dangerous Night', '00:03:19', 6), ('Rescue Me', '00:03:37', 6),
	('One Track Mind', '00:04:20', 6), ('Monolith', '00:01:38', 6), ('Love Is Madness', '00:03:54', 6),
	('Great Wide Open', '00:04:49', 6), ('Hail to the Victor', '00:03:22', 6), ('Dawn Will Rise', '00:03:57', 6),
	('Remedy', '00:03:17', 6), ('Live Like a Dream', '00:04:06', 6), ('Rider', '00:02:58', 6);
	
--Smile
INSERT INTO Track(name, duration, album_id)
VALUES ('Never Really Over', '00:03:43', 7), ('Cry About It Later', '00:03:09', 7), ('Teary Eyes', '00:03:02', 7), ('Daisies', '00:02:54', 7),
	('Resilient', '00:03:07', 7), ('Not The End Of The World', '00:02:58', 7), ('Smile', '00:02:46', 7), ('Champagne Problems', '00:03:16', 7),
	('Tucked', '00:03:07', 7), ('Harleys in Hawaii', '00:03:05', 7), ('Only Love', '00:03:18', 7), ('What Makes A Woman', '00:02:11', 7);
	

--Collections---------------------------------------------------------
--Alternative rock collection
INSERT INTO Collection(track_id, name, release_coll)
VALUES (1, 'Alternative rock collection', '2018-08-23'), (2, 'Alternative rock collection', '2018-08-23'), 
	(3, 'Alternative rock collection', '2018-08-23'), (4, 'Alternative rock collection', '2018-08-23'), 
	(5, 'Alternative rock collection', '2018-08-23'), (6, 'Alternative rock collection', '2018-08-23'), 
	(7, 'Alternative rock collection', '2018-08-23'), (8, 'Alternative rock collection', '2018-08-23'), 
	(9, 'Alternative rock collection', '2018-08-23'), (10, 'Alternative rock collection', '2018-08-23'), 
	(11, 'Alternative rock collection', '2018-08-23'), (12, 'Alternative rock collection', '2018-08-23'), 
	(53, 'Alternative rock collection', '2018-08-23'), (54, 'Alternative rock collection', '2018-08-23'), 
	(55, 'Alternative rock collection', '2018-08-23'), (56, 'Alternative rock collection', '2018-08-23'), 
	(57, 'Alternative rock collection', '2018-08-23'), (58, 'Alternative rock collection', '2018-08-23'), 
	(59, 'Alternative rock collection', '2018-08-23'), (60, 'Alternative rock collection', '2018-08-23'), 
	(61, 'Alternative rock collection', '2018-08-23'), (62, 'Alternative rock collection', '2018-08-23'), 
	(63, 'Alternative rock collection', '2018-08-23'), (64, 'Alternative rock collection', '2018-08-23');

--Eminem collection
INSERT INTO Collection(track_id, name, release_coll)
VALUES (13, 'Eminem collection', '2020-05-05'), (14, 'Eminem collection', '2020-05-05'), (15, 'Eminem collection', '2020-05-05'),
(16, 'Eminem collection', '2020-05-05'), (17, 'Eminem collection', '2020-05-05'), (18, 'Eminem collection', '2020-05-05'),
(19, 'Eminem collection', '2020-05-05'), (20, 'Eminem collection', '2020-05-05'), (21, 'Eminem collection', '2020-05-05'),
(22, 'Eminem collection', '2020-05-05'), (23, 'Eminem collection', '2020-05-05'), (24, 'Eminem collection', '2020-05-05'),
(25, 'Eminem collection', '2020-05-05'), (26, 'Eminem collection', '2020-05-05'), (27, 'Eminem collection', '2020-05-05'),
(28, 'Eminem collection', '2020-05-05'), (29, 'Eminem collection', '2020-05-05'), (30, 'Eminem collection', '2020-05-05'),
(31, 'Eminem collection', '2020-05-05'), (32, 'Eminem collection', '2020-05-05'), (33, 'Eminem collection', '2020-05-05'),
(34, 'Eminem collection', '2020-05-05'), (35, 'Eminem collection', '2020-05-05'), (36, 'Eminem collection', '2020-05-05'),
(37, 'Eminem collection', '2020-05-05'), (38, 'Eminem collection', '2020-05-05'), (39, 'Eminem collection', '2020-05-05'),
(40, 'Eminem collection', '2020-05-05');
	
--Katy Perry and Linkin Park collection
INSERT INTO Collection(track_id, name, release_coll)
VALUES  (77, 'Katy Perry and Linkin Park collection', '2020-10-12'), (78, 'Katy Perry and Linkin Park collection', '2020-10-12'), 
	(79, 'Katy Perry and Linkin Park collection', '2020-10-12'), (80, 'Katy Perry and Linkin Park collection', '2020-10-12'), 
	(81, 'Katy Perry and Linkin Park collection', '2020-10-12'), (82, 'Katy Perry and Linkin Park collection', '2020-10-12'), 
	(83, 'Katy Perry and Linkin Park collection', '2020-10-12'), (84, 'Katy Perry and Linkin Park collection', '2020-10-12'), 
	(85, 'Katy Perry and Linkin Park collection', '2020-10-12'), (86, 'Katy Perry and Linkin Park collection', '2020-10-12'), 
	(87, 'Katy Perry and Linkin Park collection', '2020-10-12'), (88, 'Katy Perry and Linkin Park collection', '2020-10-12'), 
	(1, 'Katy Perry and Linkin Park collection', '2020-10-12'), (2, 'Katy Perry and Linkin Park collection', '2020-10-12'),
	(3, 'Katy Perry and Linkin Park collection', '2020-10-12'), (4, 'Katy Perry and Linkin Park collection', '2020-10-12'),
	(5, 'Katy Perry and Linkin Park collection', '2020-10-12'), (6, 'Katy Perry and Linkin Park collection', '2020-10-12'),
	(7, 'Katy Perry and Linkin Park collection', '2020-10-12'), (8, 'Katy Perry and Linkin Park collection', '2020-10-12'),
	(9, 'Katy Perry and Linkin Park collection', '2020-10-12'), (10, 'Katy Perry and Linkin Park collection', '2020-10-12'),
	(11, 'Katy Perry and Linkin Park collection', '2020-10-12'), (12, 'Katy Perry and Linkin Park collection', '2020-10-12');
	
--Hits collection
INSERT INTO Collection(track_id, name, release_coll)
VALUES (1, 'Hits collection', '2023-06-10'), (3, 'Hits collection', '2023-06-10'),
	(19, 'Hits collection', '2023-06-10'), (23, 'Hits collection', '2023-06-10'), 
	(30, 'Hits collection', '2023-06-10'), (41, 'Hits collection', '2023-06-10'), 
	(46, 'Hits collection', '2023-06-10'), (53, 'Hits collection', '2023-06-10'), 
	(65, 'Hits collection', '2023-06-10'), (83, 'Hits collection', '2023-06-10');
