CREATE DATABASE test2;
12:22:30
SELECT * FROM public.albums ORDER BY album_name ASC
01:36:24
SELECT * FROM public.artists ORDER BY artist_name ASC
01:36:24
SELECT * FROM public.disc ORDER BY album_name ASC
01:36:23
SELECT * FROM public.disc ORDER BY album_name ASC
01:30:49
SELECT * FROM public.albums ORDER BY album_name ASC
01:30:49
SELECT * FROM public.artists ORDER BY artist_name ASC
01:30:49
SELECT * FROM public.disc ORDER BY album_name ASC
01:22:02
SELECT * FROM public.albums ORDER BY album_name ASC
01:22:02
SELECT * FROM public.disc ORDER BY album_name ASC
19:27:11
SELECT * FROM public.albums ORDER BY album_name ASC
19:27:11
SELECT * FROM public.music_tracks ORDER BY track_name ASC
23:03:58
SELECT * FROM public.disc ORDER BY album_name ASC
23:03:39
SELECT * FROM public.artists ORDER BY artist_name ASC
23:03:33
SELECT * FROM public.albums ORDER BY album_name ASC
23:03:26
ALTER TABLE disc ADD CONSTRAINT fk_disc_album FOREIGN KEY (album_name) REFERENCES albums(album_name);
23:02:08
UPDATE disc SET album_name = 'brat' WHERE album_name = 'BRAT';
23:02:03
select * from disc;
23:01:33
select * from albums;
23:01:24
ALTER TABLE disc ADD CONSTRAINT fk_disc_album FOREIGN KEY (album_name) REFERENCES albums(album_name);
23:00:56
CREATE DATABASE test2;
Total rows:
CRLF
Ln 1, Col 1