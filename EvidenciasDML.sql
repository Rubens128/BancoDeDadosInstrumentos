USE musica;

-- SELECTS

SELECT * FROM instrumento;

SELECT i.nome, i.descricao, i.classificacao_sonoridade, f.nome as nomeFamilia
FROM instrumento i
LEFT JOIN familia_instrumento f
ON i.familia_id = f.ID
ORDER BY i.nome;

SELECT f.nome, COUNT(f.ID) as QuantidadeInstrumento 
FROM familia_instrumento f
LEFT JOIN instrumento i
ON i.familia_id = f.ID
GROUP BY f.nome
ORDER BY QuantidadeInstrumento;

SELECT COUNT(h.instrumento_id) AS QTDharmonico, COUNT(m.instrumento_id) AS QTDmelodico, COUNT(r.instrumento_id) AS QTDritmico
FROM instrumento i
LEFT JOIN instrumento_harmonico h
ON i.ID = h.instrumento_id
LEFT JOIN instrumento_melodico m
ON i.ID = m.instrumento_id
LEFT JOIN instrumento_ritmico r 
ON i.ID = r.instrumento_id; 

SELECT i.nome, a.apelido
FROM instrumento i
RIGHT JOIN apelidos a
ON i.ID = a.instrumento_id;

SELECT i.nome, a.titulo, a.descricao, t.nome as tecnica
FROM instrumento i
LEFT JOIN audio a
ON i.ID = a.instrumento_id
LEFT JOIN audio_tecnica a_t
ON a.ID = a_t.audio_id
LEFT JOIN tecnica t
ON a_t.tecnica_id = t.ID
WHERE a.titulo IS NOT NULL;

SELECT i.nome, m.nome, imp.parte_nome
FROM instrumento i
LEFT JOIN instrumento_material_parte imp
ON i.ID = imp.instrumento_id
LEFT JOIN material m
ON m.ID = imp.instrumento_id
WHERE imp.parte_nome IS NOT NULL;
-- -------------------------------------------------------------

-- UPDATE

UPDATE instrumento
SET historia = 'O piano surgiu no início do século XVIII, inventado pelo italiano Bartolomeo Cristofori por volta de 1700, em Florença. Ele buscava criar um instrumento que unisse a delicadeza do cravo com a possibilidade de controlar a intensidade do som — daí o nome original gravicembalo col piano e forte (“cravo com suave e forte”), abreviado depois para pianoforte e, finalmente, piano.
 
Ao longo do século XVIII e XIX, o piano se tornou o principal instrumento da música ocidental, especialmente no período romântico, quando compositores como Beethoven, Chopin e Liszt exploraram sua expressividade. No século XX, ganhou novas formas e usos, desde o piano de cauda nas salas de concerto até o piano vertical, mais compacto, popular em casas e escolas.
 
Hoje, é um dos instrumentos mais difundidos do mundo, tanto na música clássica quanto no jazz, no pop e em muitos outros estilos.'
WHERE id = 3;
 
UPDATE instrumento
SET historia = 'O violão tem origem nos antigos instrumentos de corda dedilhada do Oriente Médio, trazidos para a Europa pelos árabes na Idade Média. No século XV–XVI, na Espanha, evoluiu para a “vihuela” e depois para a guitarra renascentista. O violão moderno de seis cordas, como conhecemos hoje, foi padronizado no século XIX pelo espanhol Antonio de Torres, que definiu seu formato e acústica.

Atualmente, é um dos instrumentos mais populares do mundo, presente em estilos que vão da música erudita ao samba, flamenco, rock e MPB.'
WHERE id = 1;
 
UPDATE apelidos
SET apelido = 'braguinha'
WHERE instrumento_id = 9;
 
UPDATE audio
SET credito_gravacao = 'estudantes'
WHERE id > 7;

-- -----------------------------------------------------------

