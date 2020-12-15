class MaterialPage < SitePrism::Page
    element :btnsair, 'button[id^="sair"]'

    def addmaterial(adicionar)
        find('#add_item').click
        find('#id-tipo').all('option').sample.select_option
        find('#id-nome').set Faker::Commerce.material
        find('#id-tamanho').set Faker::Measurement.height
        find('#id-cor').all('option').sample.select_option
        find('#id-descricao').set 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
        find('#registra-novo').click
    end

    def editarmaterial(editar)
        find('#editar_242').click
        find('#id-nome').set Faker::Commerce.material
        find('#registra-novo').click
    end

    def excluirmaterial(excluir)
        find('#deletar_242').click
        page.driver.browser.switch_to.alert.accept
    end

    def semdados(dados)
        find('#add_item').click
        find('#registra-novo').click
    end
end