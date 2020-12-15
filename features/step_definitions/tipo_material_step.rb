Dado("a página de tipos de material está aberta") do
    visit 'https://salitre.hepta.com.br/sgh/'
    LoginPage.new.login(@sucesso)
    SistemasPage.new.btnpatrimonio.click
    visit 'https://salitre.hepta.com.br/sgh/pages/material/tipomaterial.html'
end
  
Quando("adicionar um tipo de material") do
    CadastroMaterialPage.new.addtipomasem(@semgenero)
end
  
Então("o novo tipo de material é salvo") do
    CadastroMaterialPage.new.btnsair.click
end
  
Quando("adicionar um tipo de material com gênero") do
    CadastroMaterialPage.new.addtipomaterialcom(@comgenero)
end
  
Quando("editar o tipo de material") do
    CadastroMaterialPage.new.editartipo(@tipo)
end
  
Então("o tipo de material é editado com sucesso") do
    CadastroMaterialPage.new.btnsair.click
end

Quando("excluir o tipo de material") do
    CadastroMaterialPage.new.excluirtipo(@tipo)
end
  
Então("aparece um alert informando sobre o erro de exclusão") do
    expect(page).to have_content 'Não é possivel excluir esse Tipo de Material porque existem materiais desse Tipo cadastrados. Caso deseje realmente excluir, primeiro deve ser excluído todos os materiais associados a ele.'
end
  
Quando("não inserir o nome do tipo de material") do
    CadastroMaterialPage.new.addtipomaterialnome(@semnome)
end
  
Então("solicitação não é salva e o nome do tipo de material é solicitada") do
    expect(page).to have_content 'Escreva o nome do Tipo de Material. Exemplo: Uniforme, Monitor, Notebook'
end