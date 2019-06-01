#language: pt

@login
Funcionalidade: Realizar login

Contexto: 
  Dado que estou na tela de login

@login_invalido_em_branco
Cenário: Login inválido com campos nulos
  Quando realizo o login
  Então recebo mensagem de erro

@login_sucesso
Cenário: Login com sucesso
  E preencho os campos com "dados validos"
  Quando realizo o login
  Então o login é realizado com sucesso

@login_senha_incorreta
Cenário: Login senha incorreta
  E eu digito com usuário correto e "senha incorreta" 
  Quando realizo o login
  Então sistema exibe mensagem de erro de senha inválida

@login_url
Cenário: Testar url logada sem estar logado
  Dado que acesso a URL da área logada
  Então recebo alerta de autenticação
  E sou redirecionado para a tela de login