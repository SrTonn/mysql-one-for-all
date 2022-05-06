SELECT
  COUNT(h.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.history h
  ON u.user_id = h.user_id
WHERE h.user_id = (
  SELECT
    user_id
  FROM users
  WHERE user = 'Bill'
);
