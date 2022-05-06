SELECT
  s.song AS nome,
  COUNT(s.song) AS reproducoes
FROM SpotifyClone.history h
INNER JOIN SpotifyClone.songs s
  ON s.song_id = h.song_id
INNER JOIN SpotifyClone.users u
  ON u.user_id = h.user_id
WHERE u.plan_id REGEXP '1|3'
GROUP BY s.song
ORDER BY s.song;
