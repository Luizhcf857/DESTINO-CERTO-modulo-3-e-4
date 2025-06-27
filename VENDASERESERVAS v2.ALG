Algoritmo "VendasEReservas"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Hudson Neves
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/06/2025
Var
   // Seção de Declarações das variáveis
   acompanhante, parentesco, uf, cidade, hotel, hospedado, transporte, partida, destino, visitar, localizacao, dia: vetor[1..5] de caractere
   idAcompanhante, dataP: vetor[1..5] de inteiro
   nome, email, continuar, adicionar, adicionar1, adicionar2, documento, voltar, voltar1, adicionar3, voltar2, voltar3, adicionar4: caractere
   i, opcao, opcao1, idade, telefone, cont1, cont2, cont3, opcao2: inteiro
   totHospedagem, totTransporte, totAtracoes, totTotal: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont1 <- 1
   cont2 <- 1
   cont3 <- 1
   totHospedagem <- 150
   totTransporte <- 75
   totAtracoes <- 100
   escreval("--- DESTINO CERTO --- ")
   escreval("")
   escreval("---- VENDAS E RESERVAS ---- ")
   escreval("")

   // menu de navegacao
   repita
      escreval("--------- CATALOGO --------- ")
      escreval("")
      escreval("[1] Consultar pacotes de viagens")
      escreval("[2] Sair ")
      leia(opcao)

      // opcao 1
      se opcao = 1 entao
         limpaTela
         escreval("---- CADASTRO PESSOAIS ---- ")
         escreval("")
         escreva("Digite o seu nome: ")
         leia(nome)
         escreva("Digite a sua idade: ")
         leia(idade)
         escreva("Digite o numero do seu documento de identificacao: [CPF ou RG] ")
         leia(documento)
         escreva("Digite o seu e-mail: ")
         leia(email)
         escreva("Digite o seu telefone de contato: ")
         leia(telefone)
         escreva("Voce deseja adicionar alguem para viajar com voce? [S/N] ")
         leia(continuar)

         // adicionar acompanhante
         se (continuar = "s") ou (continuar = "sim") entao

            i <- 1
            repita
               limpaTela
               escreval("--- DADOS DO ACOMPANHANTE --- ")
               escreval("")
               escreva("Digite o nome do acompanhante: ")
               leia(acompanhante[i])
               escreva("Digite o que o acompanhante e seu, ex: amigo, filho: ")
               leia(parentesco[i])
               escreva("Digite a idade do acompanhante: ")
               leia(idAcompanhante[i])
               escreva("Voce deseja adicionar mais um acompanhante? [s/n] ")
               leia(adicionar)
               i <- i + 1
            ate (adicionar = "n") ou (adicionar = "nao")
         fimSe

         // opcoes de vendas de pacotes

         repita
            limpaTela
            escreval("--- VENDAS DE PACOTES --- ")
            escreval("")
            escreval("[1] Hospedagem ")
            escreval("[2] Transporte ")
            escreval("[3] Atracoes ")
            escreval("[4] Pagamento ")
            escreval("[5] Sair ")
            leia(opcao1)


            // opcao 1 de hospedagem
            se opcao1 = 1 entao
               limpaTela
               escreval("--- HOSPEDAGEM --- ")
               escreval("")

               // Mostrando as vagas preenchidas
               i <- 1
               repita
                  se cont1 > 1 entao
                     limpaTela
                     escreval("--- INDISPONIBILIDADE --- ")
                     para i de 1 ate cont1 faca
                        escreval("Vagas preenchidas: ", uf[i], "/", cidade[i], "/", hotel[i], "/", hospedado[i])
                     fimPara
                  fimSe
                  escreval("")

                  // Digitar as informacoes
                  escreva("Digite a UF do hotel: ")
                  leia(uf[i])
                  escreva("Digite a cidade do hotel: ")
                  leia(cidade[i])
                  escreva("Digite o nome do hotel desejado: ")
                  leia(hotel[i])
                  escreva("Digite o período que você deseja ficar hospedado: ")
                  leia(hospedado[i])
                  escreval("O valor total foi: ", totHospedagem, " R$ ")
                  escreva("Voce deseja adicionar mais um hospedagem: [s/n] ")
                  leia(adicionar1)
                  i <- i + 1
                  cont1 <- cont1 + 1
                  totHospedagem <- totHospedagem + totHospedagem
               ate (adicionar1 = "n") ou (adicionar1 = "nao")

               // exibir as vagas que foram adicionadas
               limpaTela
               escreval("--- VAGAS INSERIDAS --- ")
               repita
                  para i de 1 ate cont1 -1 faca
                     escreval("Vagas preenchidas: ", uf[i], "/", cidade[i], "/", hotel[i], "/", hospedado[i])
                     escreval("")
                  fimPara
                  escreva("Digite [v] para voltar: ")
                  leia(voltar)
               ate (voltar = "v")
            fimSe

            // opção 2 de transporte
            se opcao1 = 2 entao
               limpaTela
               i <- 1
               repita
                  escreval("--- TRANSPORTE --- ")
                  escreval("")
                  escreva("Digite o meio de transporte desejado, [ônibus/avião/carro]: ")
                  leia(transporte[i])
                  escreva("Digite a cidade de partida: ")
                  leia(partida[i])
                  escreva("Digite a cidade de destino: ")
                  leia(destino[i])
                  escreva("Digite a data de partida: ")
                  leia(dataP[i])
                  escreval("O valor total ficou em ",totTransporte, " R$ ")
                  escreva("Voce deseja adicionar mais um meio de transporte [s/n]: ")
                  leia(adicionar2)
                  limpaTela
                  i <- i + 1
                  cont2 <- cont2 + 1
                  totTransporte <- totTransporte + totTransporte
               ate (adicionar2 = "n") ou (adicionar2 = "nao")

               //exibir listagem de transporte
               escreval("--- TRANSPORTES CADASTRADOS --- ")
               escreval("")
               i <- 1
               repita
                  para i de 1 ate cont2 -1  faca
                     escreval("Transporte: ", transporte[i])
                     escreval("Cidade de partida: ", partida[i])
                     escreval("Cidade de destino: ", destino[i])
                     escreval("Data de partida: ", dataP[i])
                     escreval("")
                  fimPara
                  escreva("Digite [v] para voltar: ")
                  leia(voltar1)
               ate voltar1 = "v"
            fimSe

            // opcao 3 de atracoes
            se opcao1 = 3 entao
               limpaTela
               i <- 1
               repita
                  escreval("--- ATRACOES --- ")
                  escreval("")
                  escreva("Qual a atracao que voce deseja visitar? ")
                  leia(visitar[i])
                  escreva("Em qual cidade ou pais/estado esta localizado? ")
                  leia(localizacao[i])
                  escreva("Dia para visitar a atracao: ")
                  leia(dia[i])
                  escreval("O valor total foi: ",totAtracoes, " R$ ")
                  escreva("Voce deseja adicionar mais uma atracao [s/n]? ")
                  leia(adicionar3)
                  limpaTela
                  i <- i + 1
                  cont3 <- cont3 + 1
                  totAtracoes <- totAtracoes + totAtracoes
               ate (adicionar3 = "n") ou (adicionar3 = "nao")


               //mostrar as atrações cadastradas
               repita
                  escreval("--- ATRACOES CADASTRADAS --- ")
                  escreval("")
                  para i de 1 ate cont3 -1 faca
                     escreval("Atracao: ", visitar[i])
                     escreval("Localizacao: ", localizacao[i])
                     escreval("Dia para visitar: ", dia[i])
                     escreval("")
                  fimPara
                  escreva("Digite [v] para voltar: ")
                  leia(voltar2)
               ate voltar2 = "v"
            fimSe
            limpaTela


            //opcao 4, pagamentos
            se opcao1 = 4 entao
               limpaTela
               totTotal <- totHospedagem + totTransporte + totAtracoes
               escreval("--- AREA DE PAGAMENTO --- ")
               se totHospedagem > 150 entao
                  escreval("O valor total de hospedagem foram: ", totHospedagem,"R$")
               fimSe
               se totTransporte > 75 entao
                  escreval("O valor total de transporte foram: ", totTransporte,"R$")
               fimSe
               se totAtracoes > 100 entao
                  escreval("O valor total de atracao foram: ", totAtracao,"R$")
               fimSe
               //area para verificar o valor total
               se (totHospedagem > 100) e (totTransporte > 75) e (totAtracoes > 100) entao
                  escreval("O valor total foi: ", totTotal,"R$")
               fimSe

               // metodos de pagamentos
               escreval("--- METODOS DE PAGAMENTOS --- ")
               escreval("")
               escreval("[1] Pix ")
               escreval("[2] Cartao ")
               escreval("[3] Boleto ")
               leia(opcao2)

            fimSe
         fimSe
      ate opcao1 = 5
   fimSe
ate opcao = 2

Fimalgoritmo