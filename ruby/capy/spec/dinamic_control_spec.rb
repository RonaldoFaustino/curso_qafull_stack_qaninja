describe 'Dynamic Control', :dc do

    before(:each)do
        visit '/dynamic_controls'
    end

    it 'quando habilita o campo' do

        # quando tem a propriedade true, o campo esta desabilitado
        # quando não tem a propriedade disabled o campo está habilitado
        res = page.has_field? 'movie', disabled: true
        puts res

        click_button 'Habilita'
        
        #puts Capybara.default_max_wait_time

        res = page.has_field? 'movie', disabled: false
        puts res


    end

    


end