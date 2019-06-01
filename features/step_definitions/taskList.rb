busca = BuscaGoogle.new

Dado(/^Quero fazer uma busca no Google sobre "([^"]*)"$/) do |pesquisa|
  busca.abrir_pagina
  busca.buscar(pesquisa)
  busca.submit
end

Então(/^o Google me devolve os resultados sobre "([^"]*)"$/) do |pesquisa|
  busca.buscou?(pesquisa)
end