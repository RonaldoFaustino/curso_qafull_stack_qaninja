

describe 'Forms', :logar do

    it 'login com Sucesso' do
        visit '/login' 
        #expect(page.title).to eql 'Training Wheels Protocol'

        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        
        #puts find('#flash').text
        #expect(find('#flash').text).to eql 'Olá, Tony Stark. Você acessou a área logada!'
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        #page.save_screenshot('log/login_com_sucesso.png')
    end

    it 'login com sucesso 2' do
        visit '/login'
    
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'
    
        click_button 'Login'
    
        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        #page.save_screenshot('log/login_com_sucesso.png')
      end

      it 'senha incorreta' do
        visit '/login'
    
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis?'
    
        click_button 'Login'
    
        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Senha é invalida!'
        #page.save_screenshot('log/senha_incorreta.png')
      end

      it 'usuário não cadastrado' do

        visit '/login'
    
        fill_in 'userId', with: 'starl'
        fill_in 'password', with: 'jarvis?'
    
        click_button 'Login'
    
        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
        #page.save_screenshot('log/usuario_nao_cadastrado.png')
      end
      
      # #sCREESHOT 
      # after(:each) do |e|
      #   puts e.description

      #   nome = e.description.gsub(/[A-Za-z0-9]/, '').tr(' ','_')
      #   page.save_screenshot('log/' + nome + '.png')
      # end

end