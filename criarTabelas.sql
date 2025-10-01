create database if not exists musica;

use musica;

create table familia_instrumento(
	ID int auto_increment not null,
    nome varchar(255) not null,
    descricao text null,
    primary key (ID)
);

create table instrumento(
	ID int auto_increment not null,
    familia_id int not null,
    nome varchar(100) not null,
    descricao text null,
    historia text null,
    classificacao_sonoridade varchar(20) not null,
    primary key(ID),
    constraint FK_FamiliaInstrumento_Instrumento
    foreign key (familia_id) references familia_instrumento (ID)
    on update cascade
    on delete restrict
);

create table audio(
	ID int auto_increment not null,
    instrumento_id int not null,
    titulo varchar(50) not null,
    descricao text null,
    nota varchar(20) not null,
    oitava int not null,
    bpm int null,
    arquivo varchar(255) not null,
    credito_gravacao varchar(100) null,
    primary key (ID),
    constraint FK_Instrumento_Audio
    foreign key (instrumento_id) references instrumento (ID)
    on update cascade
    on delete restrict
);

create table tecnica(
	ID int auto_increment not null,
    nome varchar(100) not null,
    descricao text null,
    primary key (ID)
);

create table audio_tecnica(
	audio_id int not null,
    tecnica_id int not null,
    primary key(audio_id, tecnica_id),
    constraint FK_Audio_Associar_Tecnica
    foreign key (audio_id) references audio (ID)
    on update cascade
    on delete cascade,
    constraint FK_Tecnica_Associar_Audio
    foreign key (tecnica_id) references tecnica (ID)
    on update cascade
    on delete restrict
);

create table alcance_instrumento(
	instrumento_id int not null,
    tipo varchar(25) not null,
    nota_min varchar(10) not null,
    nota_max varchar(10) not null,
    primary key (instrumento_id, tipo),
    constraint FK_Instrumento_Alcance
    foreign key (instrumento_id) references instrumento (ID)
    on update cascade
    on delete cascade
);

create table afinacao(
	ID int auto_increment not null,
    nome varchar(100) not null unique,
    descricao text null,
    referencia varchar(50) null,
    primary key (ID)
);

create table instrumento_afinacao(
	instrumento_id int not null,
    afinacao_id int not null,
    contexto varchar(30) not null,
    primary key (instrumento_id, afinacao_id),
    constraint FK_Instrumento_Associar_Afinacao
    foreign key (instrumento_id) references instrumento (ID)
    on update cascade
    on delete cascade,
    constraint FK_Afinacao_Associar_Instrumento
    foreign key (afinacao_id) references afinacao (ID)
    on update cascade
    on delete restrict
);

create table material(
	ID int auto_increment not null,
    nome varchar(100) not null unique,
    descricao text null,
    primary key (ID)
);

create table parte(
	instrumento_id int not null,
    nome varchar(100) not null,
    descricao text null,
    primary key (instrumento_id, nome),
    constraint FK_Instrumento_Parte
    foreign key (instrumento_id) references instrumento (ID)
	on update cascade
    on delete cascade
);

create table instrumento_material_parte(
	instrumento_id int not null,
    material_id int not null,
    parte_nome varchar(100) not null,
    primary key (instrumento_id, material_id, parte_nome),
    constraint FK_Material_Associar_ParteInstrumento
    foreign key (material_id) references material (ID)
	on update cascade
    on delete cascade,
    constraint FK_ParteInstrumento_Associar_Material
    foreign key (instrumento_id, parte_nome) references parte (instrumento_id, nome)
	on update cascade
    on delete cascade
);

create table apelidos(
	instrumento_id int not null,
    apelido varchar(100) not null,
    primary key (instrumento_id, apelido),
    constraint FK_Instrumento_Apelidos
    foreign key (instrumento_id) references instrumento (ID)
    on update cascade
    on delete cascade
);

create table instrumento_harmonico(
	instrumento_id int not null,
    polifonia_max int not null,
    possui_pedal_sustain bool not null,
    suporta_acordes bool not null,
    primary key (instrumento_id),
    constraint FK_Instrumento_Harmonico
    foreign key (instrumento_id) references instrumento (ID)
    on update cascade
    on delete restrict
);

create table instrumento_melodico(
	instrumento_id int not null,
    transpositor bool not null,
    afinacao_transposicao enum('C', 'Bb', 'Eb', 'F', 'outro') not null,
    microtonalidade_suportada bool not null,
    primary key (instrumento_id),
    constraint FK_Instrumento_Melodico
    foreign key (instrumento_id) references instrumento (ID)
    on update cascade
    on delete restrict
);

create table instrumento_ritmico(
	instrumento_id int not null,
    altura_definida bool not null,
    categoria_percussao enum('membranofone','idiofone','cordofone','aerofone','eletrofone') not null,
    tocado_com enum('baqueta','mao','hibrido','outro') not null,
    primary key (instrumento_id),
    constraint FK_Instrumento_Ritmico
    foreign key (instrumento_id) references instrumento (ID)
    on update cascade
    on delete restrict
);