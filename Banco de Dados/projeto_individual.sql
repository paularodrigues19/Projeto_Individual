CREATE DATABASE PROJETO_INDIVIDUAL;
USE PROJETO_INDIVIDUAL;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(50),
    senha VARCHAR(50)
);

CREATE TABLE avaliacao (
    idAvaliacao INT PRIMARY KEY AUTO_INCREMENT,
    dtaAvaliacao DATE,
    personalidade INT,
    danca INT,
    trabalhoGrupo INT,
    vocal INT,
    idiomas INT,
    atuacao INT,
    fkUsuario INT,
    FOREIGN KEY (fkUsuario)
        REFERENCES usuario (id)
);

SELECT * FROM usuario;
SELECT * FROM avaliacao;
    
SELECT * FROM usuario
	LEFT JOIN avaliacao
		ON fkUsuario = id;
        
drop table usuario;
drop table avaliacao;
