

describe 'Login com Cadastro', :form3 do

    before(:each) do
      visit '/access' 
    end

    it 'Login com Sucesso' do
        #Preeenchendo com fill_in    
          # fill_in 'userId', with: 'stark'
          # fill_in 'password', with: 'jarvis!'
        
        #Utilizando elemento pai #login para preencher
          # login_form = find('#login')

          # login_form.find('input[id="usernameId"]').set 'stark'
          # login_form.find('input[name="password"]').set 'jarvis!'
    
          # click_button 'Entrar'

        #Utilizando metodo within

        within('#login') do
          find('input[id="usernameId"]').set 'stark'
          find('input[name="password"]').set 'jarvis!'
          click_button 'Entrar'
        end
          
        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
      end

    it 'Cadastro com Sucesso' do
      
      within('#signup') do
        find('input[name="username"]').set 'Tony'
        find('input[name="password"]').set '123456'
        click_link 'Criar Conta'
      end
      
      expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    
    end


end