#language: pt

@consulta_cep
Funcionalidade: Consulta CEP

Para que eu possa obter um endereço
Sendo um usuário que deseja consultar o CEP
Posso acessar a lista de dados do CEP fornecido

    @cep_valido
    Cenário: CEP válido
        Quando consulto o CEP "41339112"
        Então vejo o status "200"
        E vejo o código IBGE do endereço

    @cep_invalido    
    Esquema do Cenário: CEP inválido
        Quando consulto um <CEP> inválido
        Então vejo o status "200"
            Exemplos:
            | CEP         |
            | "40170110"  |
            | "4O170110"  |