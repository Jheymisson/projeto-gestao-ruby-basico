class AdicionaMaterialEstoquePage < SitePrism::Page
    #editar
    element :btneditar, '#editar_234'
    #excluir
    element :btnexcluir, '#deletar_234'
    #botão de sair da modal
    element :btnsair, 'button[id^="sair"]'

    

    def addmaterial(qtdestoque)
        find('#add_item').click
        find('#id-tipo').all('option').sample.select_option
        find('#id-material').all('option').sample.select_option
        find('#id_quantidade').set Faker::Number.number(digits: 2)
        find('#registra-novo').click
    end
    
    def editarmaterial(editarestoque)
        btneditar.click
        find('#id_quantidade').set Faker::Number.number(digits: 2)
        find('#registra-novo').click
    end

    def excluirmaterial(excluimaterial)
        btnexcluir.click
        page.driver.browser.switch_to.alert.accept
    end

    
end