algoritmo "Desafio 4"
// Disciplina : [Linguagem e Lógica de Programação]
// Professor : Elberth Lins Costa de Moraes
// Função : Calculo salário líquido
// Autor :  Renata Duarte
// Data : 03/02/2022
// Seção de Declarações 


//Procedimento para coleta de dados.
procedimento coletaDados()
      inicio
      escreva("Informe seu nome completo: ")
      leia (nome)
      escreva ("Informe sua idade: ")
      leia (idade)
      escreva ("Informe se você já fez aniversário esse ano [S/N]:")
      leia (aniversario)
      escreva ("Informe seu salário: ")
      leia (salario)
      escreva ("Informe o valor dos descontos:" )
      leia (desconto)
fimprocedimento

//Função para verificar se o funcionário já fez aniversário no ano corrente e corrigir a data de nascimento.
funcao verificaAniversario():inteiro
       inicio
       se (aniversario = "S") então
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
      
      escreva ("O funcionário nasceu em", dnasc, " e ganha", total)
      

fimalgoritmo
