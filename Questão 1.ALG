Algoritmo "contaDeBar"
// Disciplina   : [L�gica, Computa��o e Algoritmos]
// Professor   : Elberth Moraes
// Descri��o   : Divis�o da conta por pessoa
// Autor(a)    : Renata Duarte
// Data atual  : 30/03/2022

Procedimento informaDados()
var i: real
inicio
             escreva("Informe o valor total do consumo:")
             leia (consumo)
                enquanto consumo < 0 faca
                escreval("Valor inv�lido.")
                escreva("Informe o valor total do consumo:")
                leia (consumo)
             fimenquanto
             
             escreva("Informe o total de pessoas:")
                leia(pessoa)
                enquanto pessoa < 1 faca
                escreval("Valor inv�lido.")
                escreva("Informe o total de pessoas:")
                leia(pessoa)
             fimenquanto
             
             escreva("Informe o percentual do servi�o, entre 0 e 100:")
             leia(percentual)
                enquanto (percentual < 0) OU (percentual > 100) faca
                escreval("Valor inv�lido.")
                escreva("Informe o percentual do servi�o, entre 0 e 100:")
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
      

      escreval("O valor total da conta, com a taxa de servi�o, ser� de R$", conta,".")
      escreval("Dividindo a conta por", pessoa ," pessoa(s), cada pessoa dever� pagar R$", divisao,".")


Fimalgoritmo