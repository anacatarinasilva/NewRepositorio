class PaginaInicialPage < SitePrism::Page
    element :mensagem_inicial, '#task-board > div.row.m-t-sm > div > div > div > div > div.col-md-6 > div > h3'
    element :sair, '#navbar > ul > li.dropdown.profil-link > a > span.profile-address'
  
sleep 4
    def deslogar
      sair.click

      sleep 2
    end
end

