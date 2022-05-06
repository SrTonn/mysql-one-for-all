
SELECT
  art.artist AS artista,
  alb.album AS album
FROM SpotifyClone.artists art
INNER JOIN SpotifyClone.albums alb
  ON art.artist_id = alb.artist_id
WHERE art.artist = 'Walter Phoenix'
ORDER BY alb.album;
