Algoritmo "contaDeBar"
// Disciplina   : [Lógica, Computação e Algoritmos]
// Professor   : Elberth Moraes
// Descrição   : Divisão da conta por pessoa
// Autor(a)    : Renata Duarte
// Data atual  : 30/03/2022

Procedimento informaDados()
var i: real
inicio
             escreva("Informe o valor total do consumo:")
             leia (consumo)
                enquanto consumo < 0 faca
                escreval("Valor inválido.")
                escreva("Informe o valor total do consumo:")
                leia (consumo)
             fimenquanto
             
             escreva("Informe o total de pessoas:")
                leia(pessoa)
                enquanto pessoa < 1 faca
                escreval("Valor inválido.")
                escreva("Informe o total de pessoas:")
                leia(pessoa)
             fimenquanto
             
             escreva("Informe o percentual do serviço, entre 0 e 100:")
             leia(percentual)
                enquanto (percentual < 0) OU (percentual > 100) faca
                escreval("Valor inválido.")
                escreva("Informe o percentual do serviço, entre 0 e 100:")
                leia(percentual)
             fimenquanto

fimprocedimento


funcao contaDoBar():real
var servico: real

inicio

              servico <- consumo*(percentual/100)
              conta <- consumo + servico
              retorne conta
fimfuncao


funcao divisaoConta():real
inicio
              divisao <- conta/pessoa
              retorne divisao

fimfuncao

Var

   consumo: real
   pessoa: inteiro
   percentual: real
   conta: real
   divisao: real


Inicio

      informaDados()
      conta <- contaDoBar()
      divisao <- divisaoConta()
      

      escreval("O valor total da conta, com a taxa de serviço, será de R$", conta,".")
      escreval("Dividindo a conta por", pessoa ," pessoa(s), cada pessoa deverá pagar R$", divisao,".")


Fimalgoritmo