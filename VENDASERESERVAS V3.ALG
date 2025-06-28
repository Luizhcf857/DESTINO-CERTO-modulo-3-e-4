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
   nome, email, continuar, adicionar, adicionar1, adicionar2, documento, voltar, voltar1, adicionar3, voltar2, voltar3, adicionar4, voltar4, voltar5, voltar6, cartao, nomeCartao, continuar1: caractere
   i, opcao, opcao1, idade, cont1, cont2, cont3, opcao2, cvc, cont, pacote: inteiro
   totHospedagem, totTransporte, totAtracoes, totTotal, cartao1, telefone: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont <- 1
   cont1 <- 1
   cont2 <- 1
   cont3 <- 1
   totHospedagem <- 0
   totTransporte <- 0
   totAtracoes <- 0

   //área das informacoes teste de um cartão
   cartao <- "123456789"
   cvc <- 123
   nomeCartao <- "teste"
   cartao1 <- 1000

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

         //exibir o seu cadastro
         limpaTela
         escreval("--- DADOS PESSOAIS --- ")
         escreval("")
         escreval("NOME: ", nome)
         escreval("IDADE: ", idade, " anos ")
         escreval("DOCUMENTO: ", documento)
         escreval("E-MAIL: ", email)
         escreval("TELEFONE: ", telefone)
         escreval("")

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

               cont <- cont + 1
               i <- i + 1
            ate (adicionar = "n") ou (adicionar = "nao")
            limpaTela

            //exibir cadastro
            i <- 1
            repita
               escreval("--- ACOMPANHANTES CADASTRADOS --- ")
               para i de 1 ate cont - 1 faca
                  escreval("")
                  escreval("NOME: ", acompanhante[i])
                  escreval("PARENTESCO: ", parentesco[i])
                  escreval("IDADE: ", idAcompanhante[i])
                  escreval("")
               fimPara
               escreva("Digite [c] para ir a venda dos pacotes: ")
               leia(continuar1)
            ate (continuar1 = "c") ou (continuar1 = "C")
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
                  escreval("O VALOR DO HOTEL ESTA EM: ", totHospedagem,"R$")
                  escreval("")
                  escreva("Digite a UF do hotel: ")
                  leia(uf[i])
                  escreva("Digite a cidade do hotel: ")
                  leia(cidade[i])
                  escreva("Digite o nome do hotel desejado: ")
                  leia(hotel[i])
                  escreva("Digite o período que você deseja ficar hospedado: ")
                  leia(hospedado[i])
                  escreva("Voce deseja adicionar mais um hospedagem: [s/n] ")
                  leia(adicionar1)
                  i <- i + 1
                  cont1 <- cont1 + 1
                  totHospedagem <- totHospedagem + 150
               ate (adicionar1 = "n") ou (adicionar1 = "nao")

               // exibir as vagas que foram adicionadas
               limpaTela
               escreval("--- VAGAS INSERIDAS --- ")
               repita
                  para i de 1 ate cont1 -1 faca
                     escreval("Vagas preenchidas: ", uf[i], "/", cidade[i], "/", hotel[i], "/", hospedado[i])
                     escreval("")
                  fimPara
                  escreval("O valor total ficou em: ", totHospedagem, "R$")
                  escreval("")
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
                  escreval("O VALOR DO TRANSPORTE ESTA EM: ", totTransporte, "R$")
                  escreval("")
                  escreva("Digite o meio de transporte desejado, [ônibus/avião/carro]: ")
                  leia(transporte[i])
                  escreva("Digite a cidade de partida: ")
                  leia(partida[i])
                  escreva("Digite a cidade de destino: ")
                  leia(destino[i])
                  escreva("Digite a data de partida: ")
                  leia(dataP[i])
                  escreva("Voce deseja adicionar mais um meio de transporte [s/n]: ")
                  leia(adicionar2)
                  limpaTela
                  i <- i + 1
                  cont2 <- cont2 + 1
                  totTransporte <- totTransporte + 75
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
                  escreval("O valor total ficou em: ", totTransporte, "R$")
                  escreval("")
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
                  escreval("O VALOR TOTAL DA ATRACAO ESTA EM: ", totAtracoes,"R$")
                  escreval("")
                  escreva("Qual a atracao que voce deseja visitar? ")
                  leia(visitar[i])
                  escreva("Em qual cidade ou pais/estado esta localizado? ")
                  leia(localizacao[i])
                  escreva("Dia para visitar a atracao: ")
                  leia(dia[i])
                  escreva("Voce deseja adicionar mais uma atracao [s/n]? ")
                  leia(adicionar3)
                  limpaTela
                  i <- i + 1
                  cont3 <- cont3 + 1
                  totAtracoes <- totAtracoes + 100
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
                  escreval("O valor total ficou em: ", totAtracoes, "R$")
                  escreval("")
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
               se totHospedagem > 0 entao
                  escreval("O valor total de hospedagem foram: ", totHospedagem,"R$")
               fimSe
               se totTransporte > 0 entao
                  escreval("O valor total de transporte foram: ", totTransporte,"R$")
               fimSe
               se totAtracoes > 0 entao
                  escreval("O valor total de atracao foram: ", totAtracoes,"R$")
               fimSe
               //area para verificar o valor total
               se (totHospedagem > 0) ou (totTransporte > 0) ou (totAtracoes > 0) entao
                  escreval("O valor total foi: ", totTotal,"R$")
               fimSe
               escreval("")


               // metodos de pagamentos
               repita
                  escreval("--- METODOS DE PAGAMENTOS --- ")
                  escreval("")
                  escreval("[1] Pix ")
                  escreval("[2] Cartao ")
                  escreval("[3] Boleto ")
                  escreval("[4] Sair ")
                  leia(opcao2)

                  // opcao 1 de pix
                  se opcao2 = 1 entao
                     limpaTela
                     escreval("Cole essa chave pix no seu banco para realizar o pagamento! ")
                     escreval("")
                     escreval("00020126480014BR.GOV.BCB.PIX0114e3e02a-")
                     escreval("f153-48ec-a8f6-8f212d5c946f5204000053")
                     escreval("039865400100000000000000000000000000")
                     totTotal <- 0
                     totHospedagem <- 0
                     totTransporte <- 0
                     totAtracoes <- 0
                     escreval("")
                     escreval("Digite [v] para voltar ")
                     leia(voltar4)
                  fimSe
                  limpaTela

                  //opcao 2 de cartao
                  se opcao2 = 2 entao
                     limpaTela
                     escreval("--- CADASTRO DE CARTAO --- ")
                     escreval("")
                     escreva("Digite o numero do cartao: ")
                     leia(cartao)
                     escreva("Digite o CVC do cartao(fica localizado atras do cartao): ")
                     leia(cvc)
                     escreva("Digite o nome que esta inserido no cartao: ")
                     leia(nomeCartao)
                     
                     //verificar se o cartão é verdadeiro
                     se (cartao = "123456789") e (cvc = 123) e (nomeCartao = "teste") entao
                        escreval("Pagamento efetuado")
                        totTotal <- 0
                        totHospedagem <- 0
                        totTransporte <- 0
                        totAtracoes <- 0
                     senao
                          escreval("Cartao recusado")
                     fimSe
                     escreval("")
                     escreval("Digite [v] para voltar: ")
                     leia(voltar5)
                  fimSe
                  limpaTela

                  //opcao 3 boleto
                  se opcao2 = 3 entao
                     limpaTela
                     escreval("DIGITE O CODIGO DO BOLETO NO SEU BANCO ")
                     escreval("")
                     escreval("34191.79001 23456.78901200 ")
                     escreval("34567.890123 4 987600000500 ")
                     totTotal <- 0
                     totHospedagem <- 0
                     totTransporte <- 0
                     totAtracoes <- 0
                     escreval("")
                     escreval("Digite [v] para voltar: ")
                     leia(voltar6)
                  fimSe
               ate opcao2 = 4
            fimSe
         ate opcao1 = 5
      fimSe
   ate opcao = 2
Fimalgoritmo