def todosContatos()
    @agenda.each do |contato|
        puts "Nome:#{contato [:nome]} Numero:#{contato [:num]}"
    end
end
def addContato()
        puts "Qual o nome? "
        name = gets.chomp
        puts "Qual o numero? "
        numero = gets.chomp.to_i
        @agenda.push({nome:name,num:numero})
end
def verContato()
    puts("Você quer ver o contato em que posição ?")
    i = gets.chomp.to_i
    if i > 0 && i <= @agenda.length        
        j = @agenda[i-1]
        puts "Nome#{j[:nome]}-Numero#{j[:num]}"
    else
        puts "Indice Invalido tente um numero entre 1 e #{@agenda.length}"
    end
end
def editarContato()
    puts("Você quer editar o contato em que posição?")
    i = gets.chomp.to_i
    if i > 0 && i <= @agenda.length 
        j = i - 1  # Subtract 1 to get the correct index
        puts "Qual o nome?"
        name = gets.chomp
        puts "Qual o numero?"
        numero = gets.chomp.to_i
        @agenda[j][:nome] = name
        @agenda[j][:num] = numero
    else
        puts "Índice Inválido! Tente um número entre 1 e #{@agenda.length}"
    end
end
    def removerContato()
    puts("Você quer remover o contato em que posição ?")
    i = gets.chomp.to_i
    if i > 0 && i <= @agenda.length        
        j = @agenda[i-1]
        @agenda.delete(j)
    else
        puts "Indice Invalido tente um numero entre 0 e #{@agenda.length}"
        end
    end

@agenda = [{nome:"Yuri",num:996484858}]

loop do
    puts "1-Contatos\n2-AdicionarContato\n3-VerContato\n4-EditarContato\n5-RemoverContato\n0-Sair"
    choice = gets.chomp
    case 
    when choice == "0"
        puts "Até mais"
        break
    when choice == "1"
        todosContatos()
    when choice == "2"
        addContato()
    when choice == "3"
        verContato()
    when choice == "4"
        editarContato()
    when choice == "5"
        removerContato()
    else
        puts "Caractere Invalido"
    end
end
