Dado("a página de material está aberta") do
    visit 'https://salitre.hepta.com.br/sgh/'
    LoginPage.new.login(@sucesso)
    SistemasPage.new.btnpatrimonio.click
    visit 'https://salitre.hepta.com.br/sgh/pages/material/material.html'
end
  
Quando("adicionar um material no estoque") do
    MaterialPage.new.addmaterial(@adicionar)
end

Então("o novo material é salvo") do
    MaterialPage.new.btnsair.click
end
  
Quando("editar um material do estoque") do
    MaterialPage.new.editarmaterial(@editar)
end

Então("o material é editado com sucesso") do
    MaterialPage.new.btnsair.click
end
  
Quando("excluir um material do estoque") do
    MaterialPage.new.excluirmaterial(@excluir)
end
  
Então("o material não é excluído com sucesso") do
    expect(page).to have_content 'Não é possivel excluir item porque ele possui estoque'
end

Quando("não inserir tipo de material e nome do material") do
    MaterialPage.new.semdados(@dados)
end
  
Então("solicitação não é salva solicitando o tipo de material e nome do material") do
    expect(page).to have_content 'Esse campo é obrigatório'
end