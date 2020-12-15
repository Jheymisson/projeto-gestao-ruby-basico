#language: pt

@login
Funcionalidade: Login no SGH
    Como supervisora de serviços gerais
    Eu quero realizar o login no SGH
    Para entrar no sistema do Patrimônio

Contexto: Página de login
    Dado que o usuario acessa a pagina de login

Cenario: login com permissões
    Quando o usuario inserir os dados corretos
    Então usuário é autenticado e redirecionado para página inicial do sgh

#cenário outline
Esquema do Cenario: Login inexistente ou senha errada 
    Quando o usuario inserir os dados incorretos "<login>" e "<senha>"
    Então deve aparecer uma mensagem informando "<alert>"

    Exemplos:
    |       login           |    senha      |         alert             |
    |francisco.hepta        |limao1212      |Login ou senha inválidos   |
    |francisco.andrelino    |Heptaooo       |Login ou senha inválidos   |
    |                       |louco5620      |Preencha o login e a senha |
    |francisco.andrelino    |               |Preencha o login e a senha |