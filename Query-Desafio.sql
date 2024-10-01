--1
SELECT
	Nome,
	Ano
FROM Filmes

--2
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

--3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes

WHERE nome ='De Volta para o Futuro'

--4
SELECT
	*
FROM Filmes

WHERE Ano = '1997'

--5
SELECT
	*
FROM Filmes

WHERE Ano > '2000'

--6
SELECT
	*
FROM Filmes

WHERE Duracao > 100 AND Duracao < 150

ORDER BY Duracao ASC

--7
SELECT
	Ano,
	COUNT(Id) as Quantidade
FROM Filmes

GROUP BY Ano

ORDER BY COUNT(Id) DESC


--8
SELECT
	*
FROM Atores

WHERE Genero = 'M'

--9
SELECT
	*
FROM Atores

WHERE Genero = 'F'

ORDER BY PrimeiroNome

--10
SELECT
	Filmes.Nome,
	Generos.Genero
FROM Filmes

INNER JOIN
Generos ON Filmes.Id = Generos.Id

--11
SELECT
	Filmes.Nome,
	Generos.Genero
FROM Filmes

INNER JOIN
Generos ON Filmes.Id = Generos.Id

WHERE Genero = 'Mistério'

--12

SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM 
	Filmes F

INNER JOIN
	Atores A ON F.Id = A.Id
INNER JOIN
	ElencoFilme E ON F.Id = E.Id


