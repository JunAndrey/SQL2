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

INSERT INTO ListArtists (artist_id, artist_name)
VALUES
(1, 'Depeche Mode'),
(2, 'Pink'),
(3, 'Tiësto'),
(4, 'Flo Rida'),
(5, 'The Black Eyed Peas'),
(6, 'David Guetta'),
(7, 'Nickelback'),
(8, 'Calvin Harris');
INSERT INTO ListMusicalGenres (id, genre_name)
VALUES
(1, 'Electronic rock'),
(2, 'Pop'),
(3, 'Electro house'),
(4, 'Rap'),
(5, 'Dance music'),
(6, 'Alternative');
INSERT INTO ArtistsGenres(artist_id, genre_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 2),
(6, 5),
(7, 6),
(8, 5);

INSERT INTO AlbumList(id, Album_name, date_release)
VALUES
(1, 'Violator', '19-03-1990'),
(2, 'Songs of Faith and Devotion','22-03-1993'),
(3, 'Beautiful Trauma', '13-10-2017'),
(4, 'Kaleidoscope', '06-10-2009'),
(5, 'Wild Ones', '03-07-2013'),
(6, 'Monkey Business', '07-06-2005'),
(7, 'Nothing but the Beat', '26-08-2011'),
(8, 'Feed the Machine',  '16-06-2017'),
(9, 'Funk Wav Bounces Vol. 1', '30-06-2017'),
(10, 'Top of the Pop', '14-10-2017'),
(11, 'Electronic music hits', '24-11-2020'),
(12, 'Depeche Mode the Best', '12-04-1996'),
(13, 'Music Boom 2017', '03-11-2017'),
(14, 'Pop soul the best', '20-01-2018'),
(15, 'Hot dance', '04-02-2019'),
(16, 'Alternative rock hit parade', '04-04-2018'),
(17, 'Musical total towering 2017', '11-12-2017');

INSERT INTO Track(track_id, track_name, duration_track_sec)
VALUES
(1, 'World in My Eyes', '267'),
(2, 'Sweetest Perfection', '264'),
(3, 'Personal Jesus', '296'),
(4, 'Halo', '290'),
(5, 'Waiting for the Night', '417'),
(6, 'Enjoy the Silence', '413'),
(7, 'Policy of Truth', '295'),
(8, 'Blue Dress', '338'),
(9, 'Clean', '333'),
(10, 'I Feel You', '275'),
(11, 'Walking in My Shoes', '335'),
(12, 'Condemnation', '200'),
(13, 'Mercy in You', '257'),
(14,'Judas','314'),
(15, 'In Your Room', '386'),
(16,'Get Right with Me', '232'),
(17, 'Rush', '277'),
(18, 'One Caress', '212'),
(19, 'Higher Love', '356'),
(20, 'Beautiful Trauma', '250'),	
(21, 'Revenge', '226'),
(22, 'Whatever You Want', '242'),
(23, 'What About Us', '262'),
(24, 'But We Lost It', '207'),
(25, 'Barbies', '223'),
(26, 'Where We Go', '267'),
(27, 'For Now', '213'),
(28, 'Secrets', '210'),
(29, 'Better Life', '200'),
(30, 'I Am Here', '246'),
(31, 'Wild Hearts Can not Be Broken', '201'),
(32, 'You Get My Love', '311'),
(33, 'Kaleidoscope', '456'),
(34, 'Escape Me', '257'),
(35, 'You Are My Diamond', '250'),
(36, 'I Will Be Here', '206'),
(37, 'I Am Strong', '339'),
(38, 'Here On Earth', '295'),
(39, 'Always Near', '213'),
(40, 'It is Not The Things You Say', '282'),
(41, 'Fresh Fruit', '323'),
(42, 'Century','323'),
(43, 'Feel It In My Bones', '292'),
(44, 'Who Wants To Be Alone', '283'),
(45, 'La Ride', '253'),
(46, 'Bend It Like You Do not Care', '253'),
(47, 'Knock You Out', '305'),
(48, 'Louder Than Boom','250'),
(49, 'Surrounded By Light', '225'),
(50, 'Whistle', '219'),
(51, 'Wild Ones', '233'),
(52, 'Let It Roll', '194'),
(53, 'Good Feeling', '248'),
(54, 'In My Mind, Part 2', '243'),
(55, 'Sweet Spot', '228'),
(56, 'Thinking of You', '220'),
(57, 'I Cry', '223'),
(58, 'Run', '233'),
(59, 'Pump It', '213'),
(60, 'Do not Phunk with My Heart', '239'),
(61, 'My Style', '268'),
(62, 'Do not Lie', '219'),
(63, 'My Humps', '326'),
(64, 'Like That', '214'),
(65, 'Dum Diddly', '259'),
(66, 'Feel It', '259'),
(67, 'Gone Going','213'),
(68, 'They Don not Want Music', '406'),
(69, 'Disco Club', '228'),
(70, 'Bebot', '210'),
(71, 'Ba Bump', '236'),
(72, 'Audio Delite at Low Fidelity', '329'),
(73, 'Union', '304'),
(74, 'The Alphabeat', '209'),
(75, 'Lunar', '316'),
(76, 'Sunshine', '361'),
(77, 'Little Bad Girl', '202'),
(78, 'Metro Music', '213'),
(79, 'Toy Story', '224'),
(80, 'The Future', '256'),
(81, 'Dreams', '288'),
(82, 'Paris', '280'),
(83, 'Glasgow', '313'),
(84, 'Feed The Machine', '302'),
(85, 'Coin For The Ferryman', '290'),
(86, 'Song On Fire', '230'),
(87, 'Must Be Nice', '222'),
(88, 'After The Rain', '214'),
(89, 'For The River', '208'),
(90, 'Home', '232'),
(91, 'The Betrayal Act III', '200'),
(92, 'Silent Majority', '232'),
(93, 'Every Time We are Together', '232'),
(94, 'The Betrayal Act I', '162'),
(95, 'Slide', '230'),
(96, 'Cash Out', '235'),
(97, 'Heatstroke', '229'),
(98, 'Rollin', '222'),
(99, 'Prayers Up', '204'),
(100, 'Holiday', '229'),
(101, 'Skrt on Me', '228'),
(102, 'Feels', '223'),
(103, 'Faking It', '240'),
(104, 'Hard to Love', '230');

INSERT INTO AlbumsArtists(ArtistId, Albumid)
VALUES
(1, 1),
(1, 2),
(1, 11),
(1, 12),
(1, 16),
(2, 3),
(2, 10),
(2, 13),
(2, 17),
(3, 4),
(3, 11),
(3, 13),
(3, 14),
(3, 15),
(4, 5),
(4, 14),
(5, 6),
(5, 14),
(5, 15),
(6, 7),
(6, 10),
(6, 11),
(6, 15),
(6, 17),
(7, 8),
(7, 16),
(8, 9),
(8, 10),
(8, 13),
(8, 14),
(8, 15),
(8, 17);

INSERT INTO AlbumTrack(track_id, album_id, artist_id)
VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(10, 2, 1),
(11, 2, 1),
(12, 2, 1),
(13, 2, 1),
(14, 2, 1),
(15, 2, 1),
(16, 2, 1),
(17, 2, 1),
(18, 2, 1),
(19, 2, 1),
(20, 3, 2),
(21, 3, 2),
(22, 3, 2),
(23, 3, 2),
(24, 3, 2),
(25, 3, 2),
(26, 3, 2),
(27, 3, 2),
(28, 3, 2),
(29, 3, 2),
(30, 3, 2),
(31, 3, 2),
(32, 3, 2),
(33, 4, 3),
(34, 4, 3),
(35, 4, 3),
(36, 4, 3),
(37, 4, 3),
(38, 4, 3),
(39, 4, 3),
(40, 4, 3),
(41, 4, 3),
(42, 4, 3),
(43, 4, 3),
(44, 4, 3),
(45, 4, 3),
(46, 4, 3),
(47, 4, 3),
(48, 4, 3),
(49, 4, 3),
(50, 5, 4),
(51, 5, 4),
(52, 5, 4),
(53, 5, 4),
(54, 5, 4),
(55, 5, 4),
(56, 5, 4),
(57, 5, 4),
(58, 5, 4),
(59, 6, 5),
(60, 6, 5),
(61, 6, 5),
(62, 6, 5),
(63, 6, 5),
(64, 6, 5),
(65, 6, 5),
(66, 6, 5),
(67, 6, 5),
(68, 6, 5),
(69, 7, 6),
(70, 7, 6),
(71, 7, 6),
(72, 7, 6),
(73, 7, 6),
(74, 7, 6),
(75, 7, 6),
(76, 7, 6),
(77, 7, 6),
(78, 7, 6),
(79, 7, 6),
(80, 7, 6),
(81, 7, 6),
(82, 7, 6),
(83, 7, 6),
(84, 8, 7),
(85, 8, 7),
(86, 8, 7),
(87, 8, 7),
(88, 8, 7),
(89, 8, 7),
(90, 8, 7),
(91, 8, 7),
(92, 8, 7),
(93, 9, 8),
(94, 9, 8),
(95, 9, 8),
(96, 9, 8),
(97, 9, 8),
(98, 9, 8),
(99, 9, 8),
(100, 9, 8),
(101, 9, 8),
(102, 9, 8),
(103, 9, 8),
(104, 9, 8),
(20, 10, 2),
(77, 10, 6),
(69, 10, 6),
(25, 10, 2),
(102, 10, 8),
(74, 10, 6),
(70, 11, 6),
(33, 11, 3),
(69, 11, 6),
(37, 11, 3),
(7, 11, 1),
(6, 12, 1),
(8, 12, 1),
(10, 12, 1),
(15, 12, 1),
(19, 12, 1),
(29, 13, 2),
(44, 13, 3),
(31, 13, 2),
(95, 13, 8),
(101, 13, 8),
(20, 14, 3),
(63, 14, 5),
(51, 14, 4),
(95, 14, 8),
(55, 14, 4),
(68, 15, 5),
(93, 15, 8),
(33, 15, 3),
(70, 15, 6),
(82, 15, 6),
(84, 16, 7),
(15, 16, 1),
(10, 16, 1),
(92, 16, 7),
(69, 17, 6),
(77, 17, 6),
(98, 17, 8),
(22, 17, 2);