describe 'Mouse Houver', :hovers do

    before(:each)do
        visit '/hovers'
    end

    it 'quando passo o mouse sobre o blade' do
        card = find('img[alt=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'quando passo o mouse sobre o Homem Aranha' do
        card = find('img[alt="Homem Aranha"]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    it 'quando passo o mouse sobre o Pantera Negra' do
        card = find('img[alt="Pantera Negra"]')
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    after(:each) do
        sleep 2

    end

end

#Utilizando expressão regular css com Regex
#$('img[alt^=Pantera]')  começa com Pantera
#$('img[alt$=Negra]') termina com Negra
#$('img[alt*=Negra]') contém Negra