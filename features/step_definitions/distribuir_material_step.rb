Dado("usuário está na página de distribuição de material") do
    visit 'https://salitre.hepta.com.br/sgh'
    LoginPage.new.login_pagina_home(@entrada)
end
  
Então("o material é atribuido ao colaborador selecionado") do
    DistribuirMaterialPage.new.atribuir(@sucesso)
end
  
Então("o material é editado do colaborador selecionado") do
    
end
  
Então("o material distribuido é devolvido") do
    
end