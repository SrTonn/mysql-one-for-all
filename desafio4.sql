SELECT 
  DISTINCT(u.user) as usuario,
  IF(MAX(YEAR(h.reproduction_history)) = 2021, 'Usuário ativo', 'Usuário inativo') as condicao_usuario
FROM SpotifyClone.history h
INNER JOIN SpotifyClone.users u
  ON h.user_id = u.user_id
GROUP BY u.user;
