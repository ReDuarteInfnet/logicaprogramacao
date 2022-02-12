algoritmo "trocaValores"
// Disciplina: [Linguagem e Lógica de Programação]
// Professor: Elberth Lins Costa de Moraes
// Função: Trocar valores A e B
// Autor: Renata Duarte
// Data: 12/02/2022

// Seção de Declarações 

//Procedimento para coletar os dados
procedimento coletarDados()
             inicio
             escreva ("Insira o valor de A: ")
             leia (a)
             escreva ("Insira o valor de B: ")
             leia (b)
fimprocedimento


//Procedimento para informar os dados
procedimento informaDados(a,b:inteiro)
             inicio
             escreva (" A:", a )
             escreval (" B:", b)
fimprocedimento


//Procedimento para trocar os valores
procedimento trocaValor():inteiro
var aux: inteiro
    
       inicio
       escreval ("** Troca **")
       aux <- a
       a <- b
       b <- aux
fimprocedimento


var
     a,b: inteiro

inicio

      coletarDados()
      
      informaDados(a,b)

      trocaValor()

      informaDados(a,b)

fimalgoritmo
