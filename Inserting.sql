INSERT INTO genres (name)
VALUES
	('???'),
	('???'),
	('???'),
	('????'),
	('??????');

INSERT INTO artists (name)
VALUES
	('???? ?????'),
	('????? ???????'),
	('??-2'),
	('?????'),
	('????'),
	('??????'),
	('???? ????'),
	('?????'),
	('??????? ???????'),
	('???????'),
	('???????');

INSERT INTO performing (genre_id, artist_id)
VALUES
	(1, 1),
	(1, 2),
	(1, 5),
	(1, 6),
	(2, 3),
	(2, 4), 
	(2, 5),
	(2, 8),
	(3, 6),
	(3, 7),
	(3, 8),
	(4, 9),
	(5, 10),
	(5, 11);

INSERT INTO albums (name, year)
VALUES
	('?????? ?????', 2020),
	('??????', 2018),
	('SORRY', 2022),
	('?????', 2020),
	('? ?????? ?? ????', 2022),
	('? ??????? ??????', 2016),
	('????????', 2019),
	('?????', 2005),
	('?????????', 1999),
	('??????? ?????', 2002),
	('????????????', 2006),
	('????? ???????? ? ???', 2021),
	('????? ??????????', 2018),
	('40', 2020),
	('??? ?? ?????', 2021),
	('?????????', 1995),
	('?????????', 2022);

INSERT INTO records (album_id, artist_id)
VALUES
	(1, 1),
	(2, 1),
	(2, 2),
	(3, 2),
	(4, 3),
	(5, 3),
	(5, 4),
	(6, 3),
	(7, 4),
	(8, 4),
	(8, 5),
	(9, 5),
	(10, 5),
	(11, 6),
	(12, 7),
	(13, 7),
	(13, 8),
	(14, 8),
	(15, 9),
	(16, 10),
	(17, 11);
	
INSERT INTO tracks (name, duration, album_id)
VALUES
	('??? ???', '00:03:42', 1),
	('????????', '00:03:25', 1),
	('?????? ?????', '00:06:41', 1),
	('?????', '00:03:40', 2),
	('??????', '00:03:42', 2),
	('??????', '00:04:06', 2),
	('??????? ????', '00:03:33', 3),
	('???????', '00:03:50', 3),
	('Sorry', '00:03:12', 3),
	('???? ????', '00:03:46', 4),
	('׸???? ??????', '00:04:49', 4),
	('˸????', '00:05:36', 4),
	('The Roots', '00:06:01', 5),
	('Broken', '00:06:03', 5),
	('? ?????? ?? ????', '00:06:08', 5),
	('???????', '00:05:02', 6),
	('??? ????', '00:04:52', 6),
	('? ??????? ??????', '00:03:52', 6),
	('???? ?????? ?? ?????', '00:04:39', 7),
	('??? ??????', '00:05:43', 7),
	('????????', '00:04:37', 7),
	('?????? ?? ????? ???', '00:04:13', 8),
	('?????', '00:04:15', 8),
	('??? ?????', '00:04:25', 8),
	('?????????', '00:03:47', 9),
	('??????? ???', '00:02:24', 9),
	('????????', '00:03:15', 9),
	('???????', '00:03:15', 10),
	('??????? ??? ???????', '00:03:00', 10),
	('??????? ?????', '00:02:45', 10),
	('??? ??', '00:03:09', 11),
	('???????', '00:03:24', 11),
	('????????????', '00:03:48', 11),
	('???????', '00:02:54', 12),
	('?????', '00:02:59', 12),
	('????????', '00:03:22', 12),
	('??? ????', '00:03:32', 13),
	('????? ??????????', '00:03:27', 13),
	('???? ??????', '00:03:55', 13),
	('????? ??????? ???', '00:06:06', 14),
	('????? ??????', '00:05:44', 14),
	('? ????? ?????', '00:05:39', 14),
	('Welcome to Russia', '00:03:11', 15),
	('??? ?? ??? ????????', '00:03:07', 15),
	('???? ????????', '00:03:22', 15),
	('???????? ???????', '00:04:06', 16),
	('?????', '00:03:59', 16),
	('?????????', '00:03:43', 16),
	('??????', '00:03:55', 17),
	('??????? ?????', '00:04:43', 17),
	('?????????', '00:04:43', 17);

INSERT INTO collections (name, year)
VALUES
	('??????? 1', 2015),
	('??????? 2', 2016),
	('??????? 3', 2017),
	('??????? 4', 2018),
	('??????? 5', 2019),
	('??????? 6', 2020),
	('??????? 7', 2021),
	('??????? 8', 2022);
	
INSERT INTO listing (track_id, collection_id)
VALUES
	(1, 1),
	(14, 1),
	(31, 1),
	(33, 1),
	(46, 1),
	(3, 2),
	(9, 2),
	(22, 2),
	(39, 2),
	(40, 2),
	(5, 3),
	(11, 3),
	(21, 3),
	(33, 3),
	(51, 3),
	(3, 4),
	(12, 4),
	(20, 4),
	(30, 4),
	(44, 4),
	(49, 4),
	(5, 5),
	(6, 5),
	(15, 5),
	(31, 5),
	(38, 5),
	(40, 6),
	(47, 6),
	(50, 6),
	(7, 6),
	(19, 6),
	(8, 7),
	(19, 7),
	(27, 7),
	(36, 7),
	(35, 7),
	(9, 8),
	(16, 8),
	(19, 8),
	(22, 8),
	(30, 8);
	