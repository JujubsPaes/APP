TRUNCATE TABLE usuarios RESTART IDENTITY CASCADE;
INSERT INTO usuarios(genero, nome, email, data_nasc, idade, cidade) VALUES
('Feminino', 'Jussara Aldemar de Castro', 'jussarinha@gmail.com', '10/04/2000', '25', 'sorocaba'),
('Masculino', 'Gustavo Silveira', 'gustavinho@gmail.com', '17/01/2007', '18', 'sorocaba'),
('Feminino', 'Aline Santos Dumount', 'alininha@gmail.com', '18/03/2005', '20', 'votorantim'),
('Masculino', 'Roberto Carlos', 'robertinho@gmail.com', '01/06/2000', '24', 'sorocaba'),
('Masculino', 'Guilherme Pereira Santos', 'guilherminho@gmail.com', '07/07/2007', '17', 'votorantim'),
('Feminino', 'Karla Loureiro Senna', 'karlinha@gmail.com', '12/02/2000', '25', 'sorocaba');

TRUNCATE TABLE interesses RESTART IDENTITY CASCADE;
INSERT INTO interesses (descricao) VALUES 
('Musica'),
('Leitura'),
('Jogos'),
('Esportes');

TRUNCATE TABLE usuarios RESTART IDENTITY CASCADE;
INSERT INTO usuarios_interesses (id_usuarios, id_interesses)
('Jussara Aldemar de Castro', (SELECT id FROM interesses WHERE descricao = 'Musica', 'Leitura')),
('Gustavo Silveira', (SELECT id FROM interesses WHERE descricao = 'Musica', 'Jogos', 'Esportes')),
('Aline Santos Dumount', (SELECT id FROM interesses WHERE descricao = 'Musica', 'Esportes')),
('Roberto Carlos', (SELECT id FROM interesses WHERE descricao = 'Musica', 'Esportes')),
('Guilherme Pereira Santos', (SELECT id FROM interesses WHERE descricao = 'Musica', 'Leitura', 'Jogos', 'Esportes')),
('Karla Roberta Senna', (SELECT id FROM interesses WHERE descricao = 'Musica', 'Leitura', 'Jogos'));

TRUNCATE TABLE curtidas RESTART IDENTITY CASCADE;
INSERT INTO curtidas (id_usuarios, id_usuarios_interesses, data_curtidas)
VALUES
(1, 10, '2025-04-17'),
(1, 11, '2025-04-17'),
(1, 12, '2025-04-17'),
(1, 13, '2025-04-17');
