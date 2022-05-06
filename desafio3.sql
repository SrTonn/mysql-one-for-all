SELECT 
  u.user as usuario,
  COUNT(h.user_id) as qtde_musicas_ouvidas,
  ROUND(SUM(s.duration_seconds / 60), 2) as total_minutos
FROM SpotifyClone.history h
INNER JOIN SpotifyClone.users u
  ON h.user_id = u.user_id
INNER JOIN SpotifyClone.songs s
  ON h.song_id = s.song_id
GROUP BY h.user_id
ORDER BY u.user;
