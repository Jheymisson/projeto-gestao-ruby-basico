#language: pt

@distribuicao
Funcionalidade: Distribuição de materiais 
    Como supervisora de Serviços Gerais
    Eu quero realizar a distribuição dos materiais 
    Para o colaborador especificado

Contexto: Página de distribuição de material
    Dado usuário está na página de distribuição de material 

Cenário: distribuir o material para o colaborador 
    Então o material é atribuido ao colaborador selecionado

Cenário: editar o material distribuido para o colaborador 
    Então o material é editado do colaborador selecionado

Cenário: devolução do material distribuido para o colaborador 
    Então o material distribuido é devolvido
