class BuscaGoogle
    include Capybara::DSL

    def abrir_pagina
        visit "http://www.google.com.br"
    end

    def buscar(chave)
        #binding.pry
        fill_in name: "q", with: chave 
    end

    def submit
        click_on "Pesquisa Google"
    end

    def buscou?(chave)
        page.has_title? chave
    end
end