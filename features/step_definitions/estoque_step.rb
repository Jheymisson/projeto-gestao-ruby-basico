Dado("a página de distribuição de material está aberta") do
    visit 'https://salitre.hepta.com.br/sgh'
    LoginPage.new.login_pagina_home(@entrada)
    visit 'https://salitre.hepta.com.br/sgh/pages/material/estoque.html'
end
  
Quando("adicionar material no estoque") do
    AdicionaMaterialEstoquePage.new.addmaterial(@qtdestoque)
end
  
Então("o material com a quantidade é salva no estoque") do
    MaterialPage.new.btnsair.click
end
  
Quando("editar a quantidade de material no estoque") do
    AdicionaMaterialEstoquePage.new.editarmaterial(@editarestoque)
end
  
Quando("excluir o material no estoque") do
    AdicionaMaterialEstoquePage.new.excluirmaterial(@excluimaterial)
end
  
Então("o material não é excluído devido material está atribuido a colaboradores") do
    expect(page).to have_content 'Estoque não pode ser excluido porque existem materiais entregues a pessoas'
end