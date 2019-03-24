
describe 'Upload', :upload do
    
    before(:each) do
        visit'/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/21577.jpg'
       
    end

    it 'puts com arquivo texto' do
        # puts @arquivo
        # puts @imagem
    end

    it 'upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'upload com arquivo imagem', :upload_imagens do
        attach_file('file-upload', @imagem)
        click_button 'Upload'
        #modo de ver quanto tempo demora para carregar o elemento
        #puts Capybara.default_max_wait_time

        #sleep 5
        img = find('#new-image')
        expect(img[:src]).to include '/uploads/21577.jpg'
    end


    after(:each) do
        sleep 3
    end
end