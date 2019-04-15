
class AvengerHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end
    

    def put(avenger)
        self.list.push(avenger)
    end
end
# TDD (Desenvolvimento guiado por testes)
describe AvengerHeadQuarter do

    it 'deve adicionar um vingador' do
        hq = AvengerHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end 

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengerHeadQuarter.new
        hq.put('Thor')
        hq.put('Homem de Ferro')
        hq.put('Spiderman')
        
        res = hq.list.size > 0
        puts res
        expect(res).to be true 
        expect(hq.list).to include 'Thor'
        expect(hq.list.size).to be > 0 
    end

    it 'thor deve ser o primeiro da lista' do
        hq = AvengerHeadQuarter.new

        hq.put('Thor')
        hq.put('Homem de Ferro')
        hq.put('Spiderman')
        
        expect(hq.list).to start_with('Thor')
    end

    it 'Irome deve ser o ultimo da lista' do
        hq = AvengerHeadQuarter.new

        hq.put('Thor')
        hq.put('Homem de Ferro')
        hq.put('Spiderman')
        hq.put('Ironman')
        
        expect(hq.list).to end_with('Ironman')
    end

    it 'deve conter o sobrenome' do
       avenger = 'Peter Parker'

       expect(avenger).to match(/Parker/)
       expect(avenger).not_to match(/Caio/)
    end
end

