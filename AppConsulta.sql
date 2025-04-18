-- 1 -- 
SELECT 
    u.nome AS nome_usuario, 
    i.descricao AS interesses
FROM usuarios u
INNER JOIN usuarios_interesses ui ON u.id = ui.id_usuario
INNER JOIN interesses i ON ui.id_interesse = i.id;

-- 2 --
SELECT 
    u.nome AS nome_usuario, 
    i.descricao AS interesse
FROM usuarios u
LEFT JOIN usuarios_interesses ui ON u.id = ui.id_usuario
LEFT JOIN interesses i ON ui.id_interesse = i.id;

-- 3 --
SELECT 
    u1.nome AS usuario_1, 
    u2.nome AS usuario_2
FROM curtidas c1
JOIN curtidas c2 
    ON c1.id_usuario = c2.id_usuarios_interesses
    AND c1.id_usuarios_interesses = c2.id_usuario
JOIN usuarios u1 ON c1.id_usuario = u1.id
JOIN usuarios u2 ON c1.id_usuarios_interessesio = u2.id
WHERE u1.id < u2.id;

-- 4 --
SELECT 
    u.nome AS usuario, 
    COUNT(c.id) AS curtidas_recebidas
FROM usuarios u
LEFT JOIN curtidas c ON u.id = c.id_usuarios_interesses
GROUP BY u.nome
ORDER BY curtidas_recebidas DESC;

-- 5 --
SELECT 
    cidade, 
    COUNT(*) AS total_usuarios
FROM usuarios
GROUP BY cidade
ORDER BY total_usuarios DESC;
