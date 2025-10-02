insert into familia_instrumento (nome, descricao) values
('Cordas dedilhadas','Violão, guitarra, harpa, etc.'),
('Cordas friccionadas','Violino, viola, cello…'),
('Teclados','Piano, órgão, teclados eletrônicos'),
('Sopros (Madeiras)','Flauta, clarinete, oboé, fagote…'),
('Sopros (Metais)','Trompete, trombone…'),
('Percussão (Membranofones)','Caixa, surdo, bumbo, conga…'),
('Percussão (Idiofones)','Xilofone, vibrafone…'),
('Palheta livre (Free reed)','Acordeon, gaita (harmônica)'),
('Eletrônicos','Sintetizadores, teclados digitais'),
('Outras cordas','Diversos de cordas');

insert into instrumento (familia_id, nome, descricao, historia, classificacao_sonoridade) values
(1, 'Violão clássico', 'Violão nylon 6 cordas', NULL, 'com_altura'),
(1, 'Guitarra elétrica', 'Modelo sólido 6 cordas', NULL, 'com_altura'),
(3, 'Piano', 'Piano de concerto', NULL, 'com_altura'),
(1, 'Harpa', 'Harpa de concerto', NULL, 'com_altura'),
(8, 'Acordeon', 'Acordeon 120 baixos', NULL, 'com_altura'),
(3, 'Órgão de tubos', 'Órgão sinfônico', NULL, 'com_altura'),
(1, 'Ukulele', 'Ukulele soprano', NULL, 'com_altura'),
(1, 'Bandolim', 'Bandolim 8 cordas', NULL, 'com_altura'),
(1, 'Cavaquinho', 'Cavaquinho brasileiro', NULL, 'com_altura'),
(9, 'Teclado (sintetizador)', 'Teclado eletrônico', NULL, 'com_altura'),
(4, 'Flauta transversal', 'Flauta em Dó', NULL, 'com_altura'),
(4, 'Clarinete', 'Clarinete em Si♭', NULL, 'com_altura'),
(4, 'Saxofone alto', 'Sax alto em Mi♭', NULL, 'com_altura'),
(5, 'Trompete', 'Trompete em Si♭', NULL, 'com_altura'),
(4, 'Oboé', 'Oboé em Dó', NULL, 'com_altura'),
(4, 'Fagote', 'Fagote em Dó', NULL, 'com_altura'),
(5, 'Trombone', 'Trombone tenor', NULL, 'com_altura'),
(2, 'Violino', 'Violino orquestral', NULL, 'com_altura'),
(2, 'Viola (de arco)', 'Viola orquestral', NULL, 'com_altura'),
(8, 'Gaita (harmônica)', 'Harmônica diatônica', NULL, 'com_altura'),
(6, 'Cajón', 'Cajón peruano', NULL, 'sem_altura'),
(6, 'Pandeiro', 'Pandeiro popular', NULL, 'sem_altura'),
(6, 'Tamborim', 'Tamborim de escola de samba', NULL, 'sem_altura'),
(6, 'Caixa', 'Caixa de bateria 14"', NULL, 'sem_altura'),
(6, 'Bumbo', 'Bumbo de bateria 22"', NULL, 'sem_altura'),
(6, 'Surdo', 'Surdo de samba', NULL, 'sem_altura'),
(6, 'Conga', 'Conga média', NULL, 'sem_altura'),
(6, 'Tímpano', 'Conjunto de tímpanos', NULL, 'com_altura'),
(7, 'Xilofone', 'Xilofone orquestral', NULL, 'com_altura'),
(7, 'Vibrafone', 'Vibrafone com pedal', NULL, 'com_altura');

insert into tecnica (nome, descricao) values
('Legato','Notas ligadas'),
('Staccato','Notas destacadas'),
('Pizzicato','Dedilhado nas cordas friccionadas'),
('Arpeggio','Quebra de acorde em sequência'),
('Vibrato','Oscilação de altura'),
('Bend','Infletir a nota (cordas/sopros)'),
('Palm muting','Abafar com a mão (guitarra)'),
('Tremolo picking','Ataques rápidos repetidos'),
('Glissando','Deslize contínuo entre notas'),
('Ghost note','Nota fantasma suave');

insert into afinacao (nome, descricao, referencia) values
('EADGBE (violão/guitarra)','Afinação padrão 6 cordas','A4=440Hz'),
('Drop D (DADGBE)','Queda da 6ª corda em D','A4=440Hz'),
('DADGAD','Afinação alternada céltica','A4=440Hz'),
('GDAE (violino)','Afinação padrão do violino','A4=440Hz'),
('Piano temperado (A440)','Temperamento igual','A4=440Hz'),
('Sax alto em Eb','Instrumento transpositor','Eb'),
('Trompete em Bb','Instrumento transpositor','Bb'),
('Flauta em C','Instrumento não-transpositor','C'),
('Harpa diatônica em C','Configuração diatônica','C'),
('Xilofone A=442','Afinação de orquestra','A4=442Hz');

insert into material (nome, descricao) values
('Mogno','Madeira densa para corpo'),
('Ébano','Madeira escura para escala'),
('Abeto (spruce)','Tampo sonoro'),
('Bordo (maple)','Braços/tampo/corpo'),
('Latão','Liga de cobre e zinco'),
('Aço','Ligas de aço'),
('Alumínio','Ligas leves'),
('Feltro','Cobertura de martelos'),
('Jacarandá','Madeira para escalas/barras'),
('Plástico ABS','Boquilhas/peças');

insert into apelidos (instrumento_id, apelido) values
(1,'Guitarra clássica'),
(2,'Electric guitar'),
(3,'Pianoforte'),
(5,'Sanfona'),
(6,'Órgão'),
(7,'Uke'),
(8,'Mandolin'),
(9,'Cava'),
(13,'Alto sax'),
(14,'Trumpet');

insert into parte (instrumento_id, nome, descricao) values
(1,'Corpo','Caixa de ressonância'),
(1,'Braço','Braço do instrumento'),
(1,'Escala','Escala de madeira'),
(2,'Corpo','Corpo sólido'),
(2,'Escala','Escala de madeira'),
(3,'Tampa','Tampa/lid do piano'),
(3,'Caixa','Estrutura/case'),
(29,'Barras','Barras sonoras'),
(30,'Barras','Barras de liga'),
(24,'Casco','Shell da caixa');

insert into instrumento_material_parte (instrumento_id, material_id, parte_nome) values
(1,3,'Corpo'),
(1,9,'Escala'),
(1,4,'Braço'),
(2,4,'Corpo'),
(2,2,'Escala'),
(3,3,'Tampa'),
(3,4,'Caixa'),
(29,9,'Barras'),
(30,7,'Barras'),
(24,6,'Casco');

insert into alcance_instrumento (instrumento_id, tipo, nota_min, nota_max) values
(3,'padrao','A0','C8'),
(1,'padrao','E2','E6'),
(2,'padrao','E2','E6'),
(2,'drop_d','D2','E6'),
(18,'padrao','G3','E7'),
(11,'padrao','C4','D7'),
(13,'padrao','Db3','Ab5'),
(14,'padrao','F#3','D6'),
(28,'padrao','D2','A3'),
(29,'padrao','F3','C7');

insert into instrumento_afinacao (instrumento_id, afinacao_id, contexto) values
(1,1,'padrão'),
(2,1,'padrão'),
(2,2,'rock'),
(1,3,'celtic'),
(18,4,'orquestra'),
(3,5,'concerto'),
(13,6,'transposição'),
(14,7,'transposição'),
(11,8,'padrão'),
(29,10,'sinfônica');

insert into audio (instrumento_id, titulo, descricao, nota, oitava, bpm, arquivo, credito_gravacao) values
(3, 'Prelúdio em C (WTC I)', 'Trecho de piano', 'C', 4, 0, 'piano.mp3', 'todos'),
(1, 'Estudo de arpejos', 'Violão clássico', 'E', 4, 80, 'violao.mp3', 'alguem2'),
(2, 'Riff rock em E', 'Guitarra elétrica', 'E', 3, 140, 'guitarra.mp3', 'fulano'),
(18,'Melodia cantábile', 'Violino solo', 'A', 4, 72, 'violino.mp3', 'pessoa'),
(11,'Flauta – frase legato', 'Flauta transversal', 'D', 5, 96, 'flauta.mp3', 'claudio'),
(14,'Fanfare curta', 'Trompete em Bb', 'Bb', 3, 120, 'trompete.mp3', 'carla'),
(13,'Linha de sax alto', 'Sax alto em Eb', 'Eb', 4, 110, 'sax.mp3', 'jovem'),
(29,'Xilofone ostinato', 'Padrão rítmico com altura', 'F', 4, 128, 'xilofone.mp3', 'alguem'),
(30,'Vibrafone com pedal', 'Sustain característico', 'C', 4, 100, 'vibrafone.mp3', 'alguem'),
(24,'Rulo de caixa', 'Técnica de trêmulo', '—', 0, 120, 'caixa.mp3', 'todos');

insert into audio_tecnica (audio_id, tecnica_id) values
(1,4),
(2,4),
(3,7),
(3,8),
(4,3),
(5,1),
(6,2),
(7,5),
(8,9),
(10,8);

insert into instrumento_harmonico (instrumento_id, polifonia_max, possui_pedal_sustain, suporta_acordes) values
(1, 6,  false, true),
(2, 6,  false, true),
(3, 88, true,  true),
(4, 47, false, true),
(5, 41, false, true),
(6, 61, true,  true),
(7, 4,  false, true),
(8, 4,  false, true),
(9, 4,  false, true),
(10,128, true, true);

insert into instrumento_melodico (instrumento_id, transpositor, afinacao_transposicao, microtonalidade_suportada) values
(11,false,'C',  true),
(12,true, 'Bb', true),
(13,true, 'Eb', true),
(14,true, 'Bb', false),
(15,false,'C',  true),
(16,false,'C',  true),
(17,false,'C',  true),
(18,false,'C',  true),
(19,false,'C',  true),
(20,false,'outro', false);

insert into instrumento_ritmico (instrumento_id, altura_definida, categoria_percussao, tocado_com) values
(21,false,'membranofone','mao'),
(22,false,'membranofone','hibrido'),
(23,false,'membranofone','baqueta'),
(24,false,'membranofone','baqueta'),
(25,false,'membranofone','baqueta'),
(26,false,'membranofone','baqueta'),
(27,false,'membranofone','mao'),
(28,true ,'membranofone','baqueta'),
(29,true ,'idiofone','baqueta'),
(30,true ,'idiofone','baqueta');
