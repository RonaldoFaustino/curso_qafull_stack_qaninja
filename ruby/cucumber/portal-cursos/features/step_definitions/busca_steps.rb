Quando("eu faço uma busca pelotermo {string}") do |termo|
    visit 'https://portal.qaninja.io/cursos'
    find('#searchtext').set termo
    find('.input-group-btn').click
  end
  
  Então("devo ver a seguinte notificação {string}") do |notificacao|
    expect(page).to have_text notificacao
  end