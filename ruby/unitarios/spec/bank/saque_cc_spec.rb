require_relative '../../app/bank.rb'

describe ContaCorrente do

    describe 'Saque' do
        context 'quando valor é positivo' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saque(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@cc.saldo).to eql 790.00
            end
        end

        context 'quando o saldo é zero' do
            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.saque(100.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insulficiente para saque'
            end
            it 'e o saldo final com zeros' do
                expect(@cc.saldo).to eql 0.00
            end
        end
        
        context 'quando o saldo é insulficiente' do
            before(:all) do
                @cc = ContaCorrente.new(100.00)
                @cc.saque(800.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insulficiente para saque'
            end
            it 'e o saldo permanece' do
                expect(@cc.saldo).to eql 100.00
            end
        end

        context 'quando supera o limite de saque' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saque(701.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Limite máximo para saque é de R$ 700'
            end
            it 'e o saldo permanece' do
                expect(@cc.saldo).to eql 1000.00
            end
        end
    end
end