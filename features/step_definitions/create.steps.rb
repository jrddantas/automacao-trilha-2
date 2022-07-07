Dado("que estou em {string}") do |url|
  visit "https://magento.nublue.co.uk/customer/account/create/"
end

Quando("cadastro com {string} e {string} e {string} e {string} e {string}") do |primeiro_nome, sobrenome, email, senha, senha_confirme|
  

  find("input[id=firstname]").set Faker::Name.first_name
  find("input[id=lastname]").set Faker::Name.last_name
  find("input[id=email_address]").set Faker::Internet.email
  find("input[id=password]").set senha
  find("input[id=password-confirmation]").set senha
  click_button 'Create an Account' 
  sleep 15
end

Então("meu usuario sera criado e devo ser direcionado a pagina de minha conta") do
  expect(page).to have_content("My Account")
end

Então("devo visualizar a mensagem {string}") do |mensagem|
  expect(page).to have_content mensagem
end

