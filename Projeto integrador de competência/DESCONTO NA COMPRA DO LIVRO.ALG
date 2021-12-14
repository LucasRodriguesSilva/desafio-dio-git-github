algoritmo "Desconto na compra"

var

   livroA, livroB, livroC: real
   fixoA, fixoB, fixoC: real
   quantidadeLivro, estoque: inteiro
   A, B, C: real
   continuar, querLivro: caractere
   totalLivroA, totalLivroB, totalLivroC: real


inicio

   livroA <- 0.25
   livroB <- 0.50
   livroC <- 0.65

   fixoA <- 7.50
   fixoB <- 2.50
   fixoC <- 1.50

   estoque <- 1000

   repita
      escreval(" _____________________________")
      escreval("|                             |")
      escreval("| Você quer algum livro hoje? |")
      escreval("|_____________________________|")
      escreval("          ___      ___          _______")
      escreval("         |   |    |   |        |       | ")
      escreval(" Digite  | S | ou | N | Depois | enter |")
      escreval("         |___|    |___|        |_______|")
      escreval("")
      escreva(">>> ")
      leia(querLivro)
      escreval("")
      se(querLivro <> "S") e (querLivro <> "s") e (querLivro <> "N") e (querLivro <> "n") entao
         escreval(" __________________________")
         escreval("|                          |")
         escreval("| Incorreto, digite S ou N |")
         escreval("|__________________________|")
         escreval("")
         escreval("----------------------------")
      fimse
   ate(querLivro = "S") ou (querLivro = "s") ou (querLivro = "N") ou (querLivro = "n")

   se(querLivro = "S") ou (querLivro = "s") entao
      repita
         repita
            escreval(" __________________________")
            escreval("|                          |")
            escreval("| Quantos livro você quer? |")
            escreval("|__________________________|")
            escreval("")
            se (estoque = 1000) entao
               escreval("          _____________")
               escreval("         |             |")
               escreval(" Estoque |",estoque," Livros |")
               escreval("         |_____________|")
               escreval("")
            senao
               se (estoque >= 100) e (estoque < 1000) entao
                  escreval("          ____________")
                  escreval("         |            |")
                  escreval(" Estoque |",estoque," Livros |")
                  escreval("         |____________|")
                  escreval("")
               senao
                  se (estoque >= 10) e (estoque < 100) entao
                     escreval("          ___________")
                     escreval("         |           |")
                     escreval(" Estoque |",estoque," Livros |")
                     escreval("         |___________|")
                     escreval("")

                  senao
                     se (estoque >= 0) e (estoque < 10) entao
                        escreval("          __________")
                        escreval("         |          |")
                        escreval(" Estoque |",estoque," Livros |")
                        escreval("         |__________|")
                        escreval("")
                     fimse
                  fimse
               fimse
            fimse

            escreva(">>> ")
            leia(quantidadeLivro)

            escreval("")
            se (quantidadeLivro <= 0) ou (quantidadeLivro > estoque) entao
               escreval(" ______________________")
               escreval("|                      |")
               escreval("| Quantidade incorreta |")
               escreval("|______________________|")
               escreval("")
               escreval("----------------------------")
            fimse
         ate (quantidadeLivro >= 1) e (quantidadeLivro <= estoque)
         estoque <- (estoque - quantidadeLivro)

         A <- quantidadeLivro * LivroA + fixoA
         B <- quantidadeLivro * LivroB + fixoB
         C <- quantidadeLivro * LivroC + fixoC

         totalLivroA <- livroA * quantidadeLivro
         escreval(" _____________")
         escreval("|             |")
         escreval("| Informações |")
         escreval("|_____________|")
         escreval("")
         escreval("-------------------------------------------------------------")
         escreval("No plano A o livro ficou por R$",livroA * quantidadeLivro,", com o valor fixo de R$",fixoA)
         escreval("-------------------------------------------------------------")
         escreval("No plano B o livro ficou por R$",livroB * quantidadeLivro,", com o valor fixo de R$",fixoB)
         escreval("Valor Total = R$",B)
         escreval("-------------------------------------------------------------")
         escreval("No plano C o livro ficou por R$",livroC * quantidadeLivro,", com o valor fixo de R$",fixoC)
         escreval("Valor Total = R$",C)
         escreval("-------------------------------------------------------------")
         escreval(" __________")
         escreval("|          |")
         escreval("| PLANO (A)| = R$",A)
         escreval("|__________|")
         escreval(" __________")
         escreval("|          |")
         escreval("| PLANO (B)| = R$",B)
         escreval("|__________|")
         escreval(" __________")
         escreval("|          |")
         escreval("| PLANO (C)| = R$",C)
         escreval("|__________|")
         escreval("")
         se (A < B) e (A < C) entao
            escreval(" _________________________________________")
            escreval("|                                         |")
            escreval("| Plano A é a melhor opção com o valor de | = R$",A)
            escreval("|_________________________________________|")
            escreval("")
         senao

            se (B < A) e (B < C) entao
               escreval(" _________________________________________")
               escreval("|                                         |")
               escreval("| Plano B é a melhor opção com o valor de | = R$",B)
               escreval("|_________________________________________|")
               escreval("")
            senao

               se (C < A) e (C < B) entao
                  escreval(" _________________________________________")
                  escreval("|                                         |")
                  escreval("| Plano C é a melhor opção com o valor de | = R$",C)
                  escreval("|_________________________________________|")
                  escreval("")
               senao

                  se (A = B) e (A = C) entao
                     escreval(" __________________________________________________")
                     escreval("|                                                  |")
                     escreval("| Existe três planos que é A, B e C com o valor de | = R$",A)
                     escreval("|__________________________________________________|")
                     escreval("")
                  senao

                     se(A = B) entao
                        escreval(" ________________________________________________")
                        escreval("|                                                |")
                        escreval("| Existe dois planos que é A ou B com o valor de | = R$",A)
                        escreval("|________________________________________________|")
                        escreval("")
                     senao

                        se(A = C) entao
                           escreval(" ________________________________________________")
                           escreval("|                                                |")
                           escreval("| Existe dois planos que é A ou C com o valor de | = R$",A)
                           escreval("|________________________________________________|")
                           escreval("")
                        senao

                           se(B = A) entao
                           escreval(" ________________________________________________")
                           escreval("|                                                |")
                           escreval("| Existe dois planos que é B ou A com o valor de | = R$",A)
                           escreval("|________________________________________________|")
                           escreval("")
                           senao

                              se(B = C) entao
                                 escreval(" __________________________________________________")
                                 escreval("|                                                  |")
                                 escreval("| Existe dois planos que é B ou C com o valor de | = R$",B)
                                 escreval("|__________________________________________________|")
                                 escreval("")
                              senao

                                 se(C = A) entao
                                    escreval(" ________________________________________________")
                                    escreval("|                                                |")
                                    escreval("| Existe três planos que é C ou A com o valor de | = R$",A)
                                    escreval("|________________________________________________|")
                                    escreval("")
                                 senao
                                    escreval(" ________________________________________________")
                                    escreval("|                                                |")
                                    escreval("| Existe três planos que é C ou B com o valor de | = R$",B)
                                    escreval("|________________________________________________|")
                                    escreval("")
                                 fimse

                              fimse

                           fimse

                        fimse

                     fimse

                  fimse

               fimse

            fimse

         fimse

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

      ate(continuar = "S") ou (continuar = "s") ou (estoque <= 0)
      se (estoque <= 0) entao
         escreval(" __________________")
         escreval("|                  |")
         escreval("| Estoque vazio :( |")
         escreval("|__________________|")
      fimse
   senao
      escreval(" __________")
      escreval("|          |")
      escreval("| Até mais |")
      escreval("|__________|")
   fimse


fimalgoritmo