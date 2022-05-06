SELECT 
  COUNT(DISTINCT(alb.album)) as albuns,
  COUNT(DISTINCT(art.artist)) as artistas,
  COUNT(son.song) as cancoes
FROM SpotifyClone.albums alb
INNER JOIN SpotifyClone.artists art
  ON alb.artist_id = art.artist_id
INNER JOIN SpotifyClone.songs son
  ON alb.album_id = son.album_id;
