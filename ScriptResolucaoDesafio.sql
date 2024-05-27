--1
SELECT Nome,
Ano
FROM Filmes;

--2
SELECT * FROM Filmes ORDER BY Ano ASC;

--3
SELECT
Nome,
Ano,
Duracao
FROM Filmes WHERE Nome = 'De Volta para o Futuro';

--4
SELECT * FROM Filmes WHERE Ano = 1997;

--5
SELECT * FROM Filmes WHERE Ano > 2000;

--6
SELECT * 
FROM Filmes 
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8
SELECT *
FROM Atores
WHERE Genero = 'M';

--9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10
SELECT Nome, Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

--11
SELECT F.Nome AS Filme, G.Genero AS Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
INNER JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM Atores
INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON Atores.Id = Filmes.Id;