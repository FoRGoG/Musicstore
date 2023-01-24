CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreArtist (
	id SERIAL PRIMARY KEY,
	artist_id INTEGER NOT NULL REFERENCES Artist(id),
	genre_id INTEGER NOT NULL REFERENCES Genre(id)
);

CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	nickname VARCHAR(40) NOT NULL
);

create table if not exists ArtistAlbum (
	id SERIAL PRIMARY KEY,
	artist_id INTEGER NOT NULL REFERENCES Artist(id),
	album_id INTEGER NOT NULL REFERENCES Album(id)
);

create table if not exists Album (
	id SERIAL PRIMARY KEY,
	title varchar(40) not null,
	year integer not null,
	collection_id INTEGER NOT NULL REFERENCES Collection(id)	
);

create table if not exists Collection (
	id SERIAL PRIMARY KEY,
	name varchar(40) not null,
	year integer not null
);

create table if not exists CollectionTrack (
	id SERIAL PRIMARY KEY,
	collection_id INTEGER NOT NULL REFERENCES Collection(id),
	track_id integer not null references Track(id)
);

create table if not exists Track (
	id SERIAL PRIMARY KEY,
	name varchar(40) not null,
	duration integer not null,
	album_id integer not null references Album(id)	
);


