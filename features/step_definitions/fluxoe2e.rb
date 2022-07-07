#Cenário Login

Dado("que acesso o site do {string}") do |magento|
  visit "https://magento.nublue.co.uk/customer/account/login"
end

Dado("que insiro minha credenciais {string} e {string}") do |email, senha|
  find("input[id=email]").set email
  find("input[id=pass]").set senha
  sleep 5

end

Quando("clico em logar") do
  find("button[id=send2]").click
  sleep 5
end

Então("Devo ser redirecionado para uma pagina com uma {string} de boas-vindas") do |string|
  expect(page).to have_content("Welcome, Veronica Costello!")
end



#Cenário Fluxo

Dado("Que escolho uma {string}") do |categoria|
  sleep 2
  find("a[id=ui-id-5]").click
#  find("a[id=ui-id-24]").click
  sleep 1
end


Quando("Seleciono o {string} adiciono o produto no carrinho, finalizo a compra e gero o pedido") do |produto|
  sleep 2
  find("div > div > ol > li:nth-child(1) > div > a").click
  first("button[class=action tocart primary]").click
  sleep 1
end

Então("Devo ser contemplado com a mensagem correspondente a sucesso na finalizacao do pedido") do
  sleep 5
  expect(page).to have_content("Thank you for your purchase!") 
end
