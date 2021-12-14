algoritmo "Quem Pode votar"

var
   nomes: vetor[1..3] de caractere
   idades: vetor[1..3] de inteiro
   contador: inteiro
   eleitorObrigatorio, eleitorFacultativo, naoEleitor: inteiro
   continuar: caractere

inicio

   repita

      escreval("Máximo de 3 pessoas")
      escreval("")

      para contador de 1 ate 3 faca
         escreval("Qual é o seu nome?")
         leia(nomes[contador])

         escreval("Qual a sua idade?")
         leia(idades[contador])
      fimpara

      se (idades[1] >= 18) e (idades[1] <= 69) entao
         eleitorObrigatorio <- eleitorObrigatorio + 1
      fimse
      se (idades[2] >= 18) e (idades[2] <= 69) entao
         eleitorObrigatorio <- eleitorObrigatorio + 1
      fimse
      se (idades[3] >= 18) e (idades[3] <= 69) entao
         eleitorObrigatorio <- eleitorObrigatorio + 1
      fimse

      se (idades[1] = 16) ou (idades[1] = 17) ou (idades[1] >= 70) entao
         eleitorFacultativo <- eleitorFacultativo + 1
      fimse
      se (idades[2] = 16) ou (idades[2] = 17) ou (idades[2] >= 70) entao
         eleitorFacultativo <- eleitorFacultativo + 1
      fimse
      se (idades[3] = 16) ou (idades[3] = 17) ou (idades[3] >= 70) entao
         eleitorFacultativo <- eleitorFacultativo + 1
      fimse

      se (idades[1] < 16) entao
         naoEleitor <- naoEleitor + 1
      fimse
      se (idades[2] < 16) entao
         naoEleitor <- naoEleitor + 1
      fimse
      se (idades[3] < 16) entao
         naoEleitor <- naoEleitor + 1
      fimse

      escreval(" ________________________   ___")
      escreval("|                        | |   |")
      escreval("| Eleitores Obrigatórios |=|",eleitorObrigatorio," |")
      escreval("|________________________| |___|")
      escreval("")
      escreval(" ________________________   ___")
      escreval("|                        | |   |")
      escreval("| Eleitores Facultativos |=|",eleitorFacultativo," |")
      escreval("|________________________| |___|")
      escreval("")
      escreval(" _____________   ___")
      escreval("|             | |   |")
      escreval("| Não Eleitor |=|",naoEleitor," |")
      escreval("|_____________| |___|")

      repita
         escreval(" _________________________")
         escreval("|                         |")
         escreval("| Sair do programa? (S/N) |")
         escreval("|_________________________|")
         escreval("          ___      ___          _______")
         escreval("         |   |    |   |        |       | ")
         escreval(" Digite  | S | ou | N | Depois | enter |")
         escreval("         |___|    |___|        |_______|")
         escreval("")
         escreva(">>> ")
         leia(continuar)
         escreval("------------------------------")

         se(continuar <> "S") e (continuar <> "s") e (continuar <> "N") e (continuar <> "n") entao
            escreval("incorreto, digite S ou N")
            escreval("------------------------------")
         fimse

      ate(continuar = "S") ou (continuar = "s") ou (continuar = "N") ou (continuar = "n")

   ate(continuar = "S") ou (continuar = "s")
fimalgoritmo