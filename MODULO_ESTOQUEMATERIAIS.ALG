Algoritmo "Modulo_EstoqueMateriais"
// Disciplina: Logica de Programação
// Professor:  Olá, Sou eu mesmo
// Autor(a)    : João Maria Torres de Souza
// Módulo:  Estoque de Materiais - ERP Destino Certo
// Autor: João Torres
// Data: 30/06/2025


// Definindo o tipo de dado TItem, que representa cada item do estoque
Tipo
   TItem = Registro
      nome: Caractere
      quantidade: Inteiro
      valorUnitario: Real
      unidade: Caractere
   FimRegistro

Var
   estoque: vetor[1..4] de TItem
   opcao, i, totalItens, qtd: Inteiro
   nomeBusca: Caractere
   achou: Logico
   opcContinuar: Caractere   // Para controlar repetição interna das operações

Inicio
   totalItens <- 0

   Repita
      Escreval("===== MENU ESTOQUE DE MATERIAIS =====")
      Escreval("1 - Cadastrar novo item")
      Escreval("2 - Registrar entrada de material")
      Escreval("3 - Registrar saída de material")
      Escreval("4 - Listar todos os itens")
      Escreval("5 - Relatório de itens com baixa quantidade (<=3)")
      Escreval("0 - Sair")
      Leia(opcao)

      escreval("")

      Escolha opcao

         // === Opção 1: Cadastrar novos itens com repetição ===
      Caso 1
         Repita
            se totalItens < 4 Entao
               totalItens <- totalItens + 1
               escreval("")
               Escreva("Nome do item: ")
               Leia(estoque[totalItens].nome)

               Escreva("Quantidade inicial: ")
               Leia(estoque[totalItens].quantidade)

               Escreva("Tipo de unidade (unidade/caixa): ")
               Leia(estoque[totalItens].unidade)

               Escreva("Valor unitário (R$): ")
               Leia(estoque[totalItens].valorUnitario)

               Escreval("Item cadastrado com sucesso.")
               escreval("")
            senao
               Escreval("Estoque cheio!")
               escreval("")
            fimse

            Escreva("Deseja cadastrar outro item? (S/continuar - N/sair): ")
            Leia(opcContinuar)

            escreval("")
            limpatela
         Ate (opcContinuar = "N") ou (opcContinuar = "n") ou (opcContinuar = "Não") ou (opcContinuar = "não")

         // === Opção 2: Registrar entradas com repetição ===
      Caso 2
         Repita
            // Exibe os itens disponíveis antes da entrada
            Escreval("===== ITENS CADASTRADOS =====")
            Para i de 1 ate totalItens faca
               Escreval("- ", estoque[i].nome)
            fimpara

            Escreva("Digite o nome do item para entrada: ")
            Leia(nomeBusca)
            achou <- falso

            Para i de 1 ate totalItens faca
               Se estoque[i].nome = nomeBusca Entao
                  Escreva("Quantidade a adicionar: ")
                  Leia(qtd)
                  estoque[i].quantidade <- estoque[i].quantidade + qtd
                  Escreval("Entrada registrada.")
                  achou <- verdadeiro
               FimSe
            fimpara

            Se nao achou Entao
               Escreval("Item não encontrado.")
            FimSe

            Escreva("Deseja registrar outra entrada? (S/continuar - N/sair): ")
            Leia(opcContinuar)
            limpatela
         Ate (opcContinuar = "N") ou (opcContinuar = "n") ou (opcContinuar = "Não") ou (opcContinuar = "não")

         // === Opção 3: Registrar saídas com repetição ===
      Caso 3
         Repita
            Escreva("Digite o nome do item para saída: ")
            Leia(nomeBusca)
            achou <- falso

            Para i de 1 ate totalItens faca
               Se estoque[i].nome = nomeBusca Entao
                  Escreva("Quantidade a remover: ")
                  Leia(qtd)
                  Se qtd <= estoque[i].quantidade Entao
                     estoque[i].quantidade <- estoque[i].quantidade - qtd
                     Escreval("Saída registrada.")
                  Senao
                     Escreval("Estoque insuficiente!")
                  fimse
                  achou <- verdadeiro
                  escreval("")
               fimse
            fimpara

            Se nao achou Entao
               Escreval("Item não encontrado.")
               escreval("")
            fimse

            Escreva("Deseja registrar outra saída? (S/continuar - N/sair): ")
            Leia(opcContinuar)
            escreval("")
         Ate (opcContinuar = "N") ou (opcContinuar = "n") ou (opcContinuar = "Não") ou (opcContinuar = "não")

         // === Opção 4: Listar todos os itens ===
      Caso 4
         Escreval("===== LISTA DE ITENS =====")
         Para i de 1 ate totalItens faca
            Escreval(i, " - ", estoque[i].nome," | Quantidade: ", estoque[i].quantidade, " ", estoque[i].unidade, " | Valor unitário: R$ ", estoque[i].valorUnitario:2:2)
            escreval("")
         fimpara

         // === Opção 5: Relatório de itens com baixo estoque ===
      Caso 5
         Escreval("===== ITENS COM BAIXO ESTOQUE (<=3) =====")
         Para i de 1 ate totalItens faca
            Se estoque[i].quantidade <= 3 Entao
               escreval("")
               Escreval("- ", estoque[i].nome," | Quantidade: ", estoque[i].quantidade, " ", estoque[i].unidade," | Valor unitário: R$ ", estoque[i].valorUnitario:2:2)
               escreval("")
            fimse
         fimpara

         // === Opção 0: Sair ===
      Caso 0
         Escreval("Encerrando do serviço, até a próxima!")

         // === Opção inválida ===
      OutroCaso
         Escreval("Opção inválida. Tente novamente.")
      fimescolha

   Ate opcao = 0
Fimalgoritmo
 {explicando   porque eu usei o Tipo e a formatação para a apresentação dos relatorios
 
 
{
let estoque = [
{
nome: "Caneta",
quantidade: 20,
valorUnitario: 2.5,
unidade: "unidade"
}

{
nome: "Papel A4",
quantidade: 10,
valorUnitario: 30.0,
unidade: "pacote"
}
{
  for (let i = 0; i < estoque.length; i++) {
  //console.log(`${i + 1} - ${estoque[i].nome} | Quantidade: ${estoque[i].quantidade} ${estoque[i].unidade} | Valor unitário: R$ ${estoque[i].valorUnitario.toFixed(2)}`);

}