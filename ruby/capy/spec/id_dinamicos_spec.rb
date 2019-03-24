describe 'IDs Dinâmicos', :login do

    before(:each) do
        visit'/access'
    end

    it 'cadastro' do
        find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'Eduarda'
        find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set 'Dudao'
        find('#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3
    end

    it 'cadastroComexpressaoRegular' do
        find('input[id$=UsernameInput]').set 'Eduarda'
        find('input[id^=PasswordInput]').set 'Dudao'
        find('a[id*=wtGetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3
    end

end