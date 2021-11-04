create or replace procedure incluir_novo_cliente 
    (p_id_cliente in number,
    p_cnpj in varchar2,
    p_nome_fantasia in varchar2,
    p_razao_social in varchar2,
    p_contato_telefone in varchar2,
    p_contato_whatsapp in varchar2,
    p_email in varchar2,
    p_site in varchar2,
	p_endereco  in varchar2,
	p_cep in varchar2,
	p_bairro in varchar2,
	p_cidade in varchar2,
	p_estado in varchar2,
    p_nome_facil in varchar2)     
is
begin
    insert into tb_jobrasil_clientes (
        id_cliente,
        cnpj,
        nome_fantasia,
        razao_social,
        contato_telefone,
        contato_whatsapp,
        email,
        site,
        endereco,
        cep,
        bairro,
        cidade,
        estado,
        nome_facil)
    values(
        p_id_cliente,
        p_cnpj,
        upper (p_nome_fantasia),
        upper (p_razao_social),
        p_contato_telefone,
        p_contato_whatsapp,
        lower (p_email),
        lower (p_site),
        upper (p_endereco),
        p_cep,
        upper (p_bairro),
        upper (p_cidade),
        upper (p_estado),
        upper (p_nome_facil));
commit;
end;


--cliente 102

begin
incluir_novo_cliente(
    102,
    '26301768000199',
    'SUPERBETON CONCRETO',
    'COSTA ESMERALDA CONCRETO LTDA',
    '(47) 3319-8800',
    '',
    'ADMINISTRATIVO@SUPERBETON.COM.BR',
    'www.superbeton.com.br',
	'RUA GERAL SERTAO DO TROMBUDO, 4855',
	'88.220-000',
	'SERTao TROMBUDO',
	'ITAPEMA',
	'sc',
    'superbeton itapema');
end;