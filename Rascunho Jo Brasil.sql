--primeira tabela criada
create table tb_jobrasil_clientes (
    id_cliente number (5),
    cnpj varchar2 (18),
    nome_fantasia varchar2 (100),
    razao_social varchar2 (150),
    contato_telefone varchar2 (14),
    contato_whatsapp varchar2 (14),
    email varchar2 (150),
    site varchar2 (150));
	
alter table tb_jobrasil_clientes add CONSTRAINT pk_id_cliente primary key (id_cliente);
alter table tb_jobrasil_clientes add (
endereco varchar2 (150),
cep varchar2 (10),
bairro varchar2 (150),
cidade varchar2 (100),
estado varchar2 (2));

--primeiro cliente incluido
insert into tb_jobrasil_clientes values (
    1,
    '09031833000194',
    '',
    'CAVI COMERCIO DE FRUTAS E VERDURAS LTDA',
    '47 33330843',
    '47996169181',
    '',
    '');