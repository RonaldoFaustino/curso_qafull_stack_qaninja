describe 'Caixa de opçoes', :dropdown do

    it 'item especifico simples com id' do
        visit'/dropdown'
            
        #select('Opção', from: 'elemento')
        select('Loki', from: 'dropdown')
        sleep 3
    end

    it 'item especifico com o find' do
        visit'/dropdown'

        drop = find('.avenger-list')
        drop.find('option', text: 'Natasha Romanoff').select_option
        sleep 3
    end

    it 'qualquer item ', :qualquer do 
        visit'/dropdown'

        drop = find('.avenger-list')
        drop.all('option').sample.select_option 
    end
end