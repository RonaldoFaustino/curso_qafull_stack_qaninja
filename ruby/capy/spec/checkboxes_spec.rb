
describe 'Caixas de seleção', :checkbox do

    before(:each) do
        visit'/checkboxes'
    end 

    #as opções check e uncheck funcionam para elementos com ID e NAME
    it 'marcando uma opção' do
        check('thor')
    end

    it 'desmarcar uma opção' do
        uncheck('antman')
    end

    it 'marcando com find set true' do
        find('input[value=cap]').set(true)
        find('input[value=iron-man]').click
    end

    it 'desmarcando com find set false' do
        find('input[value=guardians]').set(false)
    end


    after(:each) do
        sleep 3
    end
end