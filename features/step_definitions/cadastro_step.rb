Dado('que cadastro um usuário') do
  @cadastro.cadastrar_usuario
  sleep 3
end
  
Então('verifico se o usuário foi cadastrado com sucesso') do
  expect(page).to have_content('Usuário Criado com sucesso', wait: 5)
end






