Algoritmo "Modulo_EstoqueMateriais"
// Disciplina: Logica de Programa��o
// Professor:  Ol�, Sou eu mesmo
// Autor(a)    : Jo�o Maria Torres de Souza
// M�dulo:  Estoque de Materiais - ERP Destino Certo
// Autor: Jo�o Torres
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
   opcContinuar: Caractere   // Para controlar repeti��o interna das opera��es

Inicio
   totalItens <- 0

   Repita
      Escreval("===== MENU ESTOQUE DE MATERIAIS =====")
      Escreval("1 - Cadastrar novo item")
      Escreval("2 - Registrar entrada de material")
      Escreval("3 - Registrar sa�da de material")
      Escreval("4 - Listar todos os itens")
      Escreval("5 - Relat�rio de itens com baixa quantidade (<=3)")
      Escreval("0 - Sair")
      Leia(opcao)

      escreval("")

      Escolha opcao

         // === Op��o 1: Cadastrar novos itens com repeti��o ===
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

               Escreva("Valor unit�rio (R$): ")
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
         Ate (opcContinuar = "N") ou (opcContinuar = "n") ou (opcContinuar = "N�o") ou (opcContinuar = "n�o")

         // === Op��o 2: Registrar entradas com repeti��o ===
      Caso 2
         Repita
            // Exibe os itens dispon�veis antes da entrada
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
               Escreval("Item n�o encontrado.")
            FimSe

            Escreva("Deseja registrar outra entrada? (S/continuar - N/sair): ")
            Leia(opcContinuar)
            limpatela
         Ate (opcContinuar = "N") ou (opcContinuar = "n") ou (opcContinuar = "N�o") ou (opcContinuar = "n�o")

         // === Op��o 3: Registrar sa�das com repeti��o ===
      Caso 3
         Repita
            Escreva("Digite o nome do item para sa�da: ")
            Leia(nomeBusca)
            achou <- falso

            Para i de 1 ate totalItens faca
               Se estoque[i].nome = nomeBusca Entao
                  Escreva("Quantidade a remover: ")
                  Leia(qtd)
                  Se qtd <= estoque[i].quantidade Entao
                     estoque[i].quantidade <- estoque[i].quantidade - qtd
                     Escreval("Sa�da registrada.")
                  Senao
                     Escreval("Estoque insuficiente!")
                  fimse
                  achou <- verdadeiro
                  escreval("")
               fimse
            fimpara

            Se nao achou Entao
               Escreval("Item n�o encontrado.")
               escreval("")
            fimse

            Escreva("Deseja registrar outra sa�da? (S/continuar - N/sair): ")
            Leia(opcContinuar)
            escreval("")
         Ate (opcContinuar = "N") ou (opcContinuar = "n") ou (opcContinuar = "N�o") ou (opcContinuar = "n�o")

         // === Op��o 4: Listar todos os itens ===
      Caso 4
         Escreval("===== LISTA DE ITENS =====")
         Para i de 1 ate totalItens faca
            Escreval(i, " - ", estoque[i].nome," | Quantidade: ", estoque[i].quantidade, " ", estoque[i].unidade, " | Valor unit�rio: R$ ", estoque[i].valorUnitario:2:2)
            escreval("")
         fimpara

         // === Op��o 5: Relat�rio de itens com baixo estoque ===
      Caso 5
         Escreval("===== ITENS COM BAIXO ESTOQUE (<=3) =====")
         Para i de 1 ate totalItens faca
            Se estoque[i].quantidade <= 3 Entao
               escreval("")
               Escreval("- ", estoque[i].nome," | Quantidade: ", estoque[i].quantidade, " ", estoque[i].unidade," | Valor unit�rio: R$ ", estoque[i].valorUnitario:2:2)
               escreval("")
            fimse
         fimpara

         // === Op��o 0: Sair ===
      Caso 0
         Escreval("Encerrando do servi�o, at� a pr�xima!")

         // === Op��o inv�lida ===
      OutroCaso
         Escreval("Op��o inv�lida. Tente novamente.")
      fimescolha

   Ate opcao = 0
Fimalgoritmo
 {explicando   porque eu usei o Tipo e a formata��o para a apresenta��o dos relatorios
 
 
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
  //console.log(`${i + 1} - ${estoque[i].nome} | Quantidade: ${estoque[i].quantidade} ${estoque[i].unidade} | Valor unit�rio: R$ ${estoque[i].valorUnitario.toFixed(2)}`);

}