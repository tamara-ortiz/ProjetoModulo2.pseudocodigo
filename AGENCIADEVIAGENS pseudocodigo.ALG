algoritmo "AgenciaDeViagens"

var
   clientes: vetor[1..100]
   destinos: vetor[1..100]
   opcao: inteiro
   numClientes, numDestinos: inteiro
   nome: caractere
   idade: inteiro
   telefone: caractere
   pais: caractere
   valorViagem: real
funcao cadastrarCliente(): logico
funcao cadastrarDestino(): logico
funcao consultarClientes(): logico

inicio

   se numClientes > 0 então
      para i de 1 ate numClientes faca
         escreva "Nome: ", clientes[i].nome
         escreva ", Idade: ", clientes[i].idade
         escreva ", Telefone: ", clientes[i].telefone
         escrevaLinha ""
      fimpara
   senão
      escreva ("Nenhum cliente cadastrado!")
   fimse
fimfuncao

funcao consultarDestinos(): logico
inicio
   se numDestinos > 0 então
      para i de 1 ate numDestinos faca
         escreval ("Destino: ", destinos[i].nome)
         escreval (", País: ", destinos[i].pais)
         escreval (", Valor da Viagem: ", destinos[i].valorViagem)
         escreval ("")
      fimpara
   senão
      escreval("Nenhum destino cadastrado!")
   fimse
fimfuncao

// Programa principal

inicio
   numClientes <- 0
   numDestinos <- 0


   repita
      escreval("_______________________________")
      escreval("BEM VINDO AO CRISTAL VIAGENS")
      escreval("_______________________________")
      escreval ("1. Cadastrar cliente")
      escreval ("2. Cadastrar destino")
      escreval ("3. Consultar clientes")
      escreval ("4. Consultar destinos")
      escreval ("0. Sair")
      escreval ("Digite a opção desejada: ")
      leia (opcao)

      escolha opcao
      caso 1
         se cadastrarCliente() entao
            escreval("Cliente cadastrado com sucesso!")
         senao
            escreval ("Não foi possível cadastrar o cliente.")
         fimse
      caso 2
         se cadastrarDestino() entao
            escreval ("Destino cadastrado com sucesso!")
         senao
            escreval ("Não foi possível cadastrar o destino.")
         fimse

      caso 0
         escreval("Saindo...")
      fimescolha

   ate opcao = 0




Fimalgoritmo