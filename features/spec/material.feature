#language: pt

@material
Funcionalidade: Material
    Como supervisora de Serviços Gerais
    Eu quero adicionar material
    Para ficar disponível no estoque 
    
Contexto: Página de estoque do patrimônio
    Dado a página de material está aberta

Cenário: adicionar material 
    Quando adicionar um material no estoque
    Então o novo material é salvo

Cenário: editar material
    Quando editar um material do estoque
    Então o material é editado com sucesso

Cenário: excluir material
    Quando excluir um material do estoque
    Então o material não é excluído com sucesso

Cenário: erro ao adicionar um material
    Quando não inserir tipo de material e nome do material
    Então solicitação não é salva solicitando o tipo de material e nome do material