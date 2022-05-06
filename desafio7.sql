SELECT
  art.artist AS artista,
  alb.album AS album,
  COUNT(af.artist_id) AS seguidores
FROM SpotifyClone.artists art
INNER JOIN SpotifyClone.albums alb
  ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.artists_followers af
  ON art.artist_id = af.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
