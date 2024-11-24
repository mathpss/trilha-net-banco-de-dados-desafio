--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano,Duracao FROM Filmes ORDER BY Ano -- SELECT Nome, Ano FROM Filmes ORDER BY Ano -- Deixei mais esse select pois o enunciado diz para buscar o nome e ano, não fazendo referencia a duração

--3
SELECT Nome, Ano,Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano,Duracao FROM Filmes WHERE Ano = 1997

--5
SELECT Nome, Ano,Duracao FROM Filmes WHERE Ano > 2000

--6
SELECT Nome, Ano,Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

--7
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--8
SELECT * FROM Atores WHERE Genero = 'M' -- SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M' -- Deixei esse select devido o enunciado pedir o primeiro nome e ultimo nome

--9
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome -- SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome -- Mesmo caso do 8° enunciado

--10
SELECT f.Nome, g.Genero FROM Filmes f INNER JOIN FilmesGenero fg ON(f.id = fg.idFilme) 
							    JOIN Generos g ON(fg.idGenero = g.id)

--11
SELECT f.Nome, g.Genero FROM Filmes f INNER JOIN FilmesGenero fg ON(f.id = fg.idFilme) 
							    JOIN Generos g ON(fg.idGenero = g.id)
								WHERE g.Genero = 'Mistério'

--12

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes f INNER JOIN ElencoFilme ef ON(f.id = ef.idAtor)
												INNER JOIN Atores a ON(ef.IdFilme = a.id)
