#language: pt

@tipomaterial
Funcionalidade: Tipo de material
    Como supervisora de Serviços Gerais
    Eu quero adicionar um tipo de material
    Para criar um novo material

Contexto: Página de estoque do patrimônio
    Dado a página de tipos de material está aberta

Cenário: adicionar um novo tipo de material sem gênero
    Quando adicionar um tipo de material
    Então o novo tipo de material é salvo

Cenário: adicionar um novo tipo de material com gênero
    Quando adicionar um tipo de material com gênero
    Então o novo tipo de material é salvo

Cenário: editar um tipo de material
    Quando editar o tipo de material
    Então o tipo de material é editado com sucesso

Cenário: excluir um tipo de material
    Quando excluir o tipo de material
    Então aparece um alert informando sobre o erro de exclusão

Cenário: erro ao adicionar um tipo de material
    Quando não inserir o nome do tipo de material
    Então solicitação não é salva e o nome do tipo de material é solicitada