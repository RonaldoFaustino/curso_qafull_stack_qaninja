

begin
    #devo tentar alguma coisa
    file = File.open('./ola.txt')
    if file
        puts file.read        
    end
rescue Exception => e  
    #obter possivel erro
    puts e
end