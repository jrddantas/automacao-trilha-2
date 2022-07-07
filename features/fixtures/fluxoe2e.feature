#language:pt

Funcionalidade: Fluxo E2E
    Para que eu possa comprar produtos na loja
    Sendo um usuario com perfil já criado
    Preciso me logar, navegar pelo site e comprar um produto qualquer

    Contexto: Acessar site
        Dado que acesso o site do "Magento"
    
    @login
    Cenário: login

        Dado que insiro minha credenciais "roni_cost@example.com" e "roni_cost3@example.com"
        Quando clico em logar
        Então Devo ser redirecionado para uma pagina com uma "mensagem" de boas-vindas 
    
    @fluxo
    Cenário: Fluxo
    
        Dado Que escolho uma "categoria"
        Quando Seleciono o "produto" adiciono o produto no carrinho, finalizo a compra e gero o pedido
        Então Devo ser contemplado com a mensagem correspondente a sucesso na finalizacao do pedido
         