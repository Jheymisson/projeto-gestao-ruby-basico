#language: pt

@estoque
Funcionalidade: Dstoque do patrimônio
    Como supervisora de Serviços Gerais
    Eu quero adicionar um item no estoque 
    Para ficar listado o item e sua quantidade

Contexto: Página de estoque do patrimônio
    Dado a página de distribuição de material está aberta

Cenário: adicionar material no estoque
    Quando adicionar material no estoque
    Então o material com a quantidade é salva no estoque

Cenário: editar a quantida de material no estoque
    Quando editar a quantidade de material no estoque
    Então o material com a quantidade é salva no estoque

Cenário: excluir material no estoque
    Quando excluir o material no estoque
    Então o material não é excluído devido material está atribuido a colaboradores