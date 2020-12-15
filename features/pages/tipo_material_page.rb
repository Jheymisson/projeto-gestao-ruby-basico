class CadastroMaterialPage < SitePrism::Page

    element :btnTipoMaterial, '#add_item'
    element :campoNomeTipo, '#nom_material'
    element :btnRegistraTipo, '#registra-novo'
    element :generoSim, '#radioSim'
    element :btneditar, 'tbody > tr:nth-child(6) > td.text-center > div > button.btn.btn-success.btn-sm'
    element :btnexcluir, '#deletar_38'
    element :btnsair, 'button[id^="sair"]'

    def addtipomasem(semgenero)
        btnTipoMaterial.click
        campoNomeTipo.set Faker::Commerce.product_name
        btnRegistraTipo.click
    end

    def addtipomaterialcom(comgenero)
        btnTipoMaterial.click
        campoNomeTipo.set Faker::Commerce.product_name
        generoSim.click
        btnRegistraTipo.click
    end

    def editartipo(tipo)
        btneditar.click
        campoNomeTipo.set Faker::Commerce.product_name
        btnRegistraTipo.click
    end

    def excluirtipo(tipo)
        btnexcluir.click
        page.driver.browser.switch_to.alert.accept
    end

    def addtipomaterialnome(semnome)
        btnTipoMaterial.click
        btnRegistraTipo.click
    end


    
end