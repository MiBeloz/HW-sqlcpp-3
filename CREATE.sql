--Create-----------------------------------------------------------

CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreArtist (
	genre_id INTEGER REFERENCES Genre(id),
	artist_id INTEGER REFERENCES Artist(id),
	CONSTRAINT pk_GenreArtist PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	release_alb date NOT NULL 
);

CREATE TABLE IF NOT EXISTS ArtistAlbum (
	artist_id INTEGER REFERENCES Artist(id),
	album_id INTEGER REFERENCES Album(id),
	CONSTRAINT pk_ArtistAlbum PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration time NOT NULL,
	album_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	track_id INTEGER REFERENCES Track(id),
	name VARCHAR(80) NOT NULL,
	release_coll date NOT NULL 
);
