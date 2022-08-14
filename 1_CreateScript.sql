CREATE TABLE IF NOT EXISTS ListMusicalGenres (
	id INTEGER PRIMARY KEY,
	genre_name VARCHAR(36) NOT NULL
	);

CREATE TABLE IF NOT EXISTS ListArtists (
	artist_id INTEGER PRIMARY KEY,
	artist_name VARCHAR(36) UNIQUE NOT NULL
	);

CREATE TABLE IF NOT EXISTS ArtistsGenres (
	artist_id INTEGER NOT NULL REFERENCES ListArtists(artist_id),
	genre_id INTEGER NOT NULL REFERENCES ListMusicalGenres(id),
	CONSTRAINT pk PRIMARY KEY (artist_id, genre_id)
	);

CREATE TABLE IF NOT EXISTS AlbumList (
	id INTEGER PRIMARY KEY,
	Album_name VARCHAR,
  	date_release DATE
	);

CREATE TABLE IF NOT EXISTS AlbumsArtists (
	ArtistId INTEGER REFERENCES ListArtists(artist_id),
	albumid INTEGER REFERENCES AlbumList(id),
	CONSTRAINT pk1 PRIMARY KEY (ArtistId, AlbumId)
	);

CREATE TABLE IF NOT EXISTS Track (
	track_id INTEGER PRIMARY KEY, 
	track_name VARCHAR(36) UNIQUE,
	duration_track_sec INTEGER
	);

CREATE TABLE IF NOT EXISTS AlbumTrack (
	track_id INTEGER REFERENCES Track(track_id),
	album_id INTEGER REFERENCES AlbumList(id),
	artist_id INTEGER REFERENCES ListArtists(artist_id),
	CONSTRAINT tr_al PRIMARY KEY (track_id, album_id, artist_id)
	);


