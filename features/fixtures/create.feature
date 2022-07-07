#language:pt

Funcionalidade: Criação conta
    Para que eu possa comprar na loja
    Sendo um usuario devo possuir cadastro e de modo a obter tal
    Preciso me dirigir a pagina de cadastro e preencher o formulario com os meus dados

@temp
Cenário: Usuário deve se cadastrar
   
   Dado que estou em "https://magento.nublue.co.uk/customer/account/create/"
   Quando cadastro com "primeiro_nome" e "sobrenome" e "email" e "JJrr193*" e "JJrr193*" 
   Então meu usuario sera criado e devo ser direcionado a pagina de minha conta
   E devo visualizar a mensagem "Thank you for registering with Main Website Store."
     
