class HomePage < SitePrism::Page
    set_url '/'
    element :campo_email, '#login_email'
    element :campo_senha, '#login_password'
    element :botao_logar, '.btn-accent'

    def logar_professor(email, senha)
       campo_email.set email
       campo_senha.set senha
       botao_logar.click
    end
end

