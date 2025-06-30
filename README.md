# DESTINO-CERTO
## ERP-DestinoCerto-VendasReservas-Estoque

## ✨ Sistema ERP – Agência de Turismo *Destino Certo*

Este projeto faz parte do Desafio 8 de Desenvolvimento de Módulos ERP em Portugol (Visualg). Desenvolvemos dois módulos essenciais para o funcionamento do sistema ERP da agência de turismo "Destino Certo": **Vendas e Reservas** e **Estoque de Materiais**.

---
## 🤝 Integrantes do Grupo

- Alaides Lemos  -> https://github.com/alaideslemos
- Luiz Henrique  -> https://github.com/Luizhcf857
- João Torres -> https://github.com/JoaoTorre5-oDev

## 📦 Módulo 1: Vendas e Reservas

### 🎯 Objetivo
Gerenciar o cadastro e venda de pacotes turísticos, verificar a disponibilidade de vagas e gerar comprovantes de venda para os clientes da agência.

### 🧾 Funcionalidades
- Cadastro de pacotes turísticos (nome, destino, preço, vagas disponíveis, data).
- Listagem de pacotes disponíveis.
- Venda de pacotes com verificação de disponibilidade.
- Atualização automática da quantidade de vagas.
- Emissão de comprovante de venda com dados do cliente e do pacote.

### 📊 Estrutura de Dados
- Registros para armazenar informações dos pacotes.
- Vetores para manipulação e listagem dos pacotes.

### 🧠 Regras de Negócio
- Não permitir a venda de pacotes esgotados.
- Permitir múltiplas vendas em uma única execução.
- Atualizar número de vagas a cada venda confirmada.

---

## 🏪 Módulo 2: Estoque de Materiais

### 🎯 Objetivo  
Este módulo tem como objetivo gerenciar o controle de materiais utilizados nas operações da agência "Destino Certo". Através dele, é possível registrar a entrada e saída de itens físicos, como materiais promocionais, insumos operacionais, itens de escritório, entre outros. Além disso, o módulo permite cadastrar novos itens no estoque, verificar a disponibilidade atual e emitir relatórios de materiais com quantidade crítica. Dessa forma, contribui para uma gestão mais eficiente de recursos, evitando desperdícios e interrupções por falta de material. É uma ferramenta essencial para manter a organização e o abastecimento contínuo dos setores da agência.

### 🧾 Funcionalidades
- Cadastro de itens no estoque (nome, unidade, quantidade, valor unitário).
- Entrada de materiais (aumentar quantidade).
- Saída de materiais (reduzir quantidade com validação).
- Relatório de itens com estoque baixo (alerta para reposição).
- Listagem geral do estoque.

### 📊 Estrutura de Dados
- **Tipo de Dado Personalizado:**
  - `TItem`: registro contendo os campos:
    - `nome` (caractere): nome do item.
    - `quantidade` (inteiro): quantidade disponível.
    - `valorUnitario` (real): custo unitário.
    - `unidade` (caractere): unidade de medida (ex: unidade, caixa, litro).

- **Variáveis utilizadas:**
  - `estoque`: vetor de `TItem` com tamanho 4, armazenando os itens cadastrados.
  - `totalItens`: controla o número de itens ativos no vetor.
  - `nomeBusca`: auxilia na busca de itens por nome.
  - `opcContinuar`: controla os laços de repetição nas opções de entrada e saída.
  - `achou`: variável lógica que indica se o item foi encontrado.

### 🧠 Regras de Negócio
- Não é permitido cadastrar mais de 4 itens no estoque, limitando o vetor à sua capacidade máxima.  
- A retirada de itens só é permitida se houver quantidade suficiente em estoque; caso contrário, é exibida uma mensagem de erro ao usuário.  
- O sistema oferece um relatório automático para itens com quantidade igual ou inferior a 3, alertando sobre a necessidade de reposição imediata para evitar rupturas operacionais.

---

## 🛠️ Tecnologias Utilizadas
- 💻 Visualg – Lógica com Portugol
- 📘 Markdown – Documentação
- 📊 Draw.io – Criação de fluxograma
- ☁️ GitHub – Versionamento e entrega

---


