Dado("que o usuario acessa a pagina de login") do
    visit 'https://salitre.hepta.com.br/sgh/'
end
  
Quando("o usuario inserir os dados corretos") do
    LoginPage.new.login(@sucesso)
end
  
Então("usuário é autenticado e redirecionado para página inicial do sgh") do
    expect(page).to have_content 'BEM VINDO(A)'
end
  
Quando("o usuario inserir os dados incorretos {string} e {string}") do |login, senha|
    LoginPage.new.usuario.set login
    LoginPage.new.senha.set senha
    LoginPage.new.btnlog.click
end
  
Então("deve aparecer uma mensagem informando {string}") do |alert|
    expect(page).to have_content alert
end
  