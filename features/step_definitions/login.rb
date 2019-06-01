Dado(/^que estou na tela de login$/) do
	@login = LoginPage.new
	@login.acessar_url
end

Quando(/^realizo o login$/) do
	@login.clicar_login
end

Então(/^recebo mensagem de erro$/) do
	@login.erro?
end

Dado(/^preencho os campos com "([^"]*)"$/) do |valido|
	@login.preencher_dados(valido)
end

Então(/^o login é realizado com sucesso$/) do
	@login.realizar_login
end

Dado(/^eu digito com usuário correto e senha incorreta$/) do
	@login.preencher_dados_incorretos
end

Então(/^sistema exibe mensagem de erro de senha inválida$/) do
	@login.erro?
end

Dado(/^que acesso a URL da área logada$/) do
	@login.piscininha
end

Então(/^sou redirecionado para a tela de login$/) do
	@login.verificar_url
end

Então(/^recebo alerta de autenticação$/) do
  @login.erro_logado?
end
