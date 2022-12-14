CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	title VARCHAR(80) NOT NULL,
	years INTEGER NOT NULL CHECK (years>0)
);

CREATE TABLE IF NOT EXISTS Song (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	years INTEGER NOT NULL CHECK (years>0)
);

CREATE TABLE IF NOT EXISTS Artist_Genre (
	genre_id INTEGER REFERENCES Genre(id),
	artist_id INTEGER REFERENCES Artist(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Artist_Album (
	album_id INTEGER REFERENCES Album(id),
	artist_id INTEGER REFERENCES Artist(id),
	CONSTRAINT pk2 PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Collection_song (
	song_id INTEGER REFERENCES song(id),
	collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk3 PRIMARY KEY (song_id, collection_id)
);