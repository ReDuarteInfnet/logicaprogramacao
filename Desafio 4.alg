algoritmo "Desafio 4"
// Disciplina : [Linguagem e L�gica de Programa��o]
// Professor : Elberth Lins Costa de Moraes
// Fun��o : Calculo sal�rio l�quido
// Autor :  Renata Duarte
// Data : 03/02/2022
// Se��o de Declara��es 


//Procedimento para coleta de dados.
procedimento coletaDados()
      inicio
      escreva("Informe seu nome completo: ")
      leia (nome)
      escreva ("Informe sua idade: ")
      leia (idade)
      escreva ("Informe se voc� j� fez anivers�rio esse ano [S/N]:")
      leia (aniversario)
      escreva ("Informe seu sal�rio: ")
      leia (salario)
      escreva ("Informe o valor dos descontos:" )
      leia (desconto)
fimprocedimento

//Fun��o para verificar se o funcion�rio j� fez anivers�rio no ano corrente e corrigir a data de nascimento.
funcao verificaAniversario():inteiro
       inicio
       se (aniversario = "S") ent�o
       dnasc <- 2022 - idade
       senao
       dnasc <- 2022 - idade - 1
       fimse
       retorne dnasc
fimfuncao

var
      nome,aniversario: caracter
      idade,dnasc: inteiro
      salario,desconto,total: real

inicio

      coletaDados()

      dnasc <- verificaAniversario()
      
      total <- salario - desconto
      
      escreva ("O funcion�rio nasceu em", dnasc, " e ganha", total)
      

fimalgoritmo
