class LoginPage
  include Capybara::DSL

  def acessar_url
    visit "http://the-internet.herokuapp.com/login"
  end

  def clicar_login
    click_button('Login')
  end

  def erro?
    page.has_content?("Your password is invalid!")
  end

  def erro_logado?
    page.has_content?('You must login to view the secure area!')
  end

  def preencher_dados(usuario)
    #  binding.pry
    if usuario == "dados validos"
      fill_in "username", with: TIPO_USUARIO["usuario valido"]
      fill_in "password", with: TIPO_USUARIO["senha valida"]
    else
      fill_in "username", with: TIPO_USUARIO["usuario valido"]
      fill_in "password", with: TIPO_USUARIO["senha invalida"]
    end
  end

  def realizar_login
    page.has_content?("You logged into a secure area!")
  end

  def piscininha
    visit "http://the-internet.herokuapp.com/secure"
  end

  def verificar_url
    page.has_current_path?("/login")
  end
end
