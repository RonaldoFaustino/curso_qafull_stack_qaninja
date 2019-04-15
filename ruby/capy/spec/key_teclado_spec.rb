
describe 'Teclado', :key do
    before(:each) do
        visit '/key_presses'
    end

    it 'simulando as teclas simbolos' do

        teclas = %i[tab escape space enter shift control alt]

        teclas.each do |teclado|
            find('#campo-id').send_keys teclado
            expect(page).to have_content 'You entered: ' + teclado.to_s.upcase
        
        # find('#campo-id').send_keys :space
        # expect(page).to have_content 'You entered: SPACE'
        # sleep 5
        end
    end
    
    it 'enviando letras' do

        letras = %w[1 s d f g h j k l ]

        letras.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
        end
    end

end