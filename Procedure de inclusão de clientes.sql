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
	p_estado in varchar2)     
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
        estado)
    values(
        p_id_cliente,
        p_cnpj,
        p_nome_fantasia,
        p_razao_social,
        p_contato_telefone,
        p_contato_whatsapp,
        p_email,
        p_site,
        p_endereco,
        p_cep,
        p_bairro,
        p_cidade,
        p_estado);
commit;
end;