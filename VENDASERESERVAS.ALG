Algoritmo "VendasEReservas"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Hudson Neves
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/06/2025
Var
   // Seção de Declarações das variáveis
   acompanhante, parentesco, uf, cidade, hotel, hospedado, transporte, partida, destino: vetor[1..5] de caractere
   idAcompanhante, dataP: vetor[1..5] de inteiro
   nome, email, continuar, adicionar, adicionar1, adicionar2, documento, voltar1, visitar, localizacao, dia: caractere
   i, opcao, opcao1, idade, telefone, cont1, cont2, voltar: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont1 <- 1
   cont2 <- 1
   i <- 1
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
            escreval("[4] Sair ")
            leia(opcao1)

            // opcao 1 de hospedagem

            se opcao1 = 1 entao
               limpaTela
               escreval("--- HOSPEDAGEM --- ")
               escreval("")

               // Mostrando as vagas preenchidas
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
                  escreva("Voce deseja adicionar mais um hospedagem: [s/n] ")
                  leia(adicionar1)
                  i <- i + 1
                  cont1 <- cont1 + 1
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
               ate voltar = "v"
            fimSe

            // opção 2 de transporte
            se opcao1 = 2 entao
               limpaTela
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
                  escreva("Voce deseja adicionar mais um meio de transporte [s/n]: ")
                  leia(adicionar2)
                  limpaTela
                  i <- i + 1
                  cont2 <- cont2 + 1
               ate (adicionar2 = "n") ou (adicionar2 = "nao")

               //exibir listagem de transporte
               escreval("--- TRANSPORTES CADASTRADOS --- ")
               escreval("")
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
            se opcao1 = 3
            limpaTela
            escreval("--- ATRACOES --- ")
            escreval("")
            escreva("Qual a atracao que voce deseja visitar? ")
            leia(visitar)
            escreva("Em qual cidade ou pais/estado esta localizado? ")
            leia(localizacao)
            escreva("Dia para visitar a atracao? ")
            leia(dia)
            fimSe
         ate opcao1 = 4
         limpaTela
      fimSe





   ate opcao = 2

Fimalgoritmo