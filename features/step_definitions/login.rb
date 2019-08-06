Dado("que o usuario tenha um usuario") do |table|
    @email = table.rows_hash['email']
    @senha = table.rows_hash['senha']
    # @home = HomePage.new
    # @home.load
    home.load

    # deixa de usar este comanda para usar o PageObject
    #visit('http://localhost:5000/login')

  end
  
  Quando("ele se logar") do

    # deixa de usar este comanda para usar o PageObject
    # fill_in 'login_email', with: @email
    # fill_in 'login_password', with: @senha
    # sleep 2
    # click_button 'Login'
    
    @home.logar_professor('ana.catarina.d.silva@accenture.com', '1Senhor*amor')
    home.logar_professor('ana.catarina.d.silva@accenture.com', '1Senhor*amor')
end
  
  Entao("ele verificará que está logado") do
    expect(page).to have_current_path('http://localhost:5000/tasks', url: true)
    expect(pagina_inicial.mensagem_inicial.text).to have_content('Olá, ana catarina da silva')
    #expect(find(:css, '#task-board > div.row.m-t-sm > div > div > div > div > div.col-md-6 > div > h3').text).to have_content('Olá, ana catarina da silva')

  end


  