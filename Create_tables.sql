CREATE TABLE IF NOT EXISTS genres (
	id   serial      PRIMARY KEY,
	name VARCHAR(60) NOT NULL
					 UNIQUE
);

CREATE TABLE IF NOT EXISTS artists (
	id   serial      PRIMARY KEY,
    name VARCHAR(60) NOT NULL 
);

CREATE TABLE IF NOT EXISTS performing (
	genre_id  INTEGER REFERENCES genres(id),
	artist_id INTEGER REFERENCES artists(id),
	          CONSTRAINT genres_pk PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS albums (
	id   serial      PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year SMALLINT    CHECK (year BETWEEN 1890 and 2023)
);

CREATE TABLE IF NOT EXISTS records (
	album_id  INTEGER REFERENCES albums(id),
	artist_id INTEGER REFERENCES artists(id),
	          CONSTRAINT records_pk PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS tracks (
	id       serial      PRIMARY KEY,
	name     VARCHAR(60) NOT NULL,
	duration TIME        NOT NULL,
	album_id INTEGER     NOT NULL 
					     REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS collections (
	id   serial      PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year SMALLINT    CHECK (year BETWEEN 1890 AND 2023)
);

CREATE TABLE IF NOT EXISTS listing (
	track_id      INTEGER REFERENCES tracks(id),
	collection_id INTEGER REFERENCES collections(id),
	              CONSTRAINT collection_pk PRIMARY KEY (track_id, collection_id)
);
	