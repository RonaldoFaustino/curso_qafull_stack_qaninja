

describe 'Select2', :select2 do

    describe('single', :single) do
        
        before(:each) do
            visit '/apps/select2/single.html'
        end
        
        it 'Selecionar ator por nome' do
            find('.select2-selection--single').click
            find('.select2-results__option', text: 'Adam Sandler').click
            sleep 3
        end

        it 'busca e clica no ator' do
            find('.select2-selection--single').click
            find('.select2-search__field').set 'Chris Rock'
            find('.select2-results__option').click
        end
    end

    describe('multiple', :multi) do
        
        before(:each) do
            visit '/apps/select2/multi.html'
        end

        def selecione(ator)
            find('.select2-selection--multiple').click
            find('.select2-selection__rendered').set ator
            find('.select2-results').click
        end

        it 'seleciona atores' do

            atores = ['Jim Carrey','Owen Wilson','Kevin James']
            
            atores.each do |a|
                selecione(a)
            end
            #selecione('Jim Carrey')
            #selecione('Owen Wilson')
            #find('.select2-selection--multiple').click
            #find('.select2-selection__rendered').set 'Jim Carrey'
            #find('.select2-results').click
        end

    end


end