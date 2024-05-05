puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

puts "Vamos jogar um jogo. Informe seu nome: "
nome = gets.chomp
puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

numero_aleatorio = rand(100)
if nome == "Marcelo"
   numero_aleatorio = 63476187362813489127348168436819
end
puts "Olá #{nome}."
puts "Escolha um número entre 1 e 100. Você tem 3 tentativas."

chute = gets
acertou = numero_aleatorio == chute.to_i
puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

if acertou == true
    puts "Acertou Guampa!!"
else 
    for i in 1..2 do
        maior = numero_aleatorio > chute.to_i
        if maior
            puts "O número é maior"
        else
            puts "O número é menor"
        end
        puts"Errou, Guampa!!!"
        puts "Tem mais #{3 - i} tentativas"
        chute = gets
    end
    
end
#puts "Seu chute: " + chute.to_s
puts "Número correto: " + numero_aleatorio.to_s