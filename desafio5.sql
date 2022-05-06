SELECT 
  DISTINCT(s.song) AS cancao,
  COUNT(s.song) AS reproducoes
FROM SpotifyClone.history h
INNER JOIN SpotifyClone.songs s
  ON h.song_id = s.song_id
GROUP BY s.song
ORDER BY COUNT(s.song) DESC, s.song LIMIT 2;
