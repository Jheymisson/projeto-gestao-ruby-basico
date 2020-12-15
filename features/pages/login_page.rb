class LoginPage < SitePrism::Page
    element :usuario, '#inputlogin'
    element :senha, '#inputsenha'
    element :btnlog, '#btn-login'

    def login(sucesso)
        usuario.set 'francisco.andrelino'
        senha.set 'Hepta1212'
        find('#btn-login').click
    end
    
    def login_pagina_home(entrada)
        usuario.set 'francisco.andrelino'
        senha.set 'Hepta1212'
        find('#btn-login').click
        find('#id-patrimonio').click
    end

end
