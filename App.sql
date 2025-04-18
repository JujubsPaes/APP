CREATE  DATABASE APP

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_nasc DATE(100) NOT NULL,
    idade INTEGER(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    genero VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_curtidas) REFERENCES curtidas(id) ON DELETE SET NULL
);

CREATE TABLE usuarios_interesses (
    id SERIAL PRIMARY KEY,
    FOREIGN KEY (id_usuarios) REFERENCES usuarios(id) ON DELETE SET NULL
);

CREATE TABLE curtidas (
    id SERIAL PRIMARY KEY,
    data_curtidas DATE(10) NOT NULL,
    FOREIGN KEY (id_usuarios) REFERENCES usuarios(id) ON DELETE SET NULL,
    FOREIGN KEY (id_usuarios_interesses) REFERENCES usuarios_interesses(id) ON DELETE SET NULL
);

CREATE TABLE interesses (
    id SERIAL PRIMARY KEY,
    descricao VARCHAR(500) NOT NULL,
);