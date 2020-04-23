-- how many artists have 2 or more albums
SELECT
	COUNT(*)
FROM
	(SELECT
		Artist.Name,
		COUNT(Album.AlbumId) as `Album Count`
	FROM
		Artist
	JOIN
		Album
	ON
		Album.ArtistId = Artist.ArtistId
	GROUP BY
		Artist.Name
	HAVING
		`Album Count` >= 2)