CREATE DATABASE LIVRARIA;
USE LIVRARIA;
CREATE TABLE LIVROS(
    NOME_LIVRO VARCHAR(40),
    NOME_AUTOR VARCHAR(40),
    SEXO VARCHAR(10),
    NUMERO_PAGINAS VARCHAR(5),
    NOME_EDITORA VARCHAR(40),
    VALOR FLOAT(6,2),
    ESTADO_EDITORA CHAR(2),
    ANO_PUBLICACAO INT(4)
);

INSERT INTO LIVROS(NOME_LIVRO, NOME_AUTOR, SEXO, NUMERO_PAGINAS, NOME_EDITORA, VALOR, ESTADO_EDITORA, ANO_PUBLICACAO) VALUES
('Cavaleiro Real', 'Ana Claudia', 'Feminino', '465', 'Atlas', 49.9, 'RJ', 2009),

('SQL para leigos', 'João Nunes', 'Masculino', '450', 'Addisson', 98, 'SP', 2018),

('Receitas Caseiras', 'Celia Tavares', 'Feminino', '210', 'Atlas', 45, 'RJ', 2008),

('Pessoas Efetivas', 'Eduardo Santos', 'Masculino', '390', 'Beta', 78.99, 'RJ', 2018),

('Hábitos Saudáveis', 'Eduardo Santos', 'Masculino', '630', 'Beta', 150.98, 'RJ', 2019),

('A Casa Marrom', 'Hermes Macedo', 'Masculino', '250', 'Bubba', 60, 'MG', 2016),

('Estacio Querido', 'Geraldo Francisco', 'Masculino', '310', 'Insignia', 100, 'ES', 2015), 

('Para sempre amigas', 'Leda Silva', 'Feminino', '510', 'Insignia', 78.98, 'ES', 2011), 

('Copas Inesqueciveis', 'Marco Alcantara', 'Masculino', '200', 'Larson', 130.98, 'RS', 2018), 

('O poder da mente', 'Clara Mafra', 'Feminino', '120', 'Continental', 56.58, 'SP', 2017);


/* 1 - Trazer todos os dados */
SELECT * FROM LIVROS;

/* 2 - Trazer o nome do livro e o nome da editora */
SELECT NOME_LIVRO, NOME_EDITORA FROM LIVROS;

/* 3 - Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino */
SELECT NOME_LIVRO, ESTADO_EDITORA FROM LIVROS WHERE SEXO = 'Masculino';

/* 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino */
SELECT NOME_LIVRO, NUMERO_PAGINAS FROM LIVROS WHERE SEXO = 'Feminino';

/* 5 - Trazer os valores dos livros das editoras de SP */
SELECT VALOR FROM LIVROS WHERE ESTADO_EDITORA = 'SP';

/*   *****6 - Trazer os dados dos autores do sexo masculino que tiveram livros publicados por SP ou RJ*****  */
SELECT NOME_AUTOR, NOME_LIVRO, ANO_PUBLICACAO FROM LIVROS WHERE SEXO = 'Masculino' AND ESTADO_EDITORA = 'SP';