class DistribuirMaterialPage < SitePrism::Page
 

    def atribuir(sucesso)
        find('#add_item').click
        find('#form-modal .form-group #dropdown2 input[placeholder="Digite o nome do material"]').click
            find('#form-modal > .form-group > #dropdown2 > .dropdown-content:nth-child(2)').all('div').sample.select_option
        find('#id-quantidade').all('option').sample.select_option
        find('#form-modal .form-group #dropdown2 input[placeholder="Digite o nome do colaborador"]').click
            find('#form-modal > .form-group > #dropdown2 > .dropdown-content:nth-child(2)').all('div').sample.select_option
        find('#id-num-serie').set Faker::Alphanumeric.alpha(number: 15)
        find('#id-observacao').set Faker::Lorem.paragraph
        find('#registra-novo').click
        find('button[id^="sair"]').click
    end

    def editar(sucesso)
        find('tbody tr:nth-child(1) td div button:nth-child(1)').click
        find('#id-num-serie').set Faker::Alphanumeric.alpha(number: 15)
        find('#id-observacao').set Faker::Lorem.paragraph
        find('#registra-novo').click
    end

    def devolucao(sucesso)
        find('tbody tr:nth-child(1) td div button[id^="deletar"]:nth-child(2)').click
        find('#id-dth-devolucao').set '10/10/2020 2300'
        find('#registra-novo').click
    end

end