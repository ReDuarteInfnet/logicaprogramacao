Algoritmo "Concurso"
// Disciplina   : [L�gica, Computa��o e Algoritmos]
// Professor   : Elberth Moraes
// Descri��o   : Definir vencedor do concurso.
// Autor(a)    : Renata Duarte
// Data atual  : 30/03/2022

procedimento informaDados()

inicio
y <- 1
      para i de 1 ate 5 faca
      escreva("Informe nome do", i,"� participante:")
      leia(nome[i])
      escreva("Informe a nota do", i,"� participante:")
      leia(nota[i])
      enquanto ((nota[i] > 10) OU (nota[i] < 0)) faca
          escreval("Valor inv�lido.")
          escreva("Informe a nota do", i,"� participante:")
          leia(nota[i])
      fimenquanto
      comparNota()
      fimpara

fimprocedimento


procedimento comparNota()
inicio
          se (nota[i]) > (nota[y]) entao
          y <- i
          fimse
          
fimprocedimento


Var
nome: vetor[1..5] de caracter
nota: vetor[1..5] de real
y:inteiro
i:inteiro


Inicio

      informaDados()
      escreva("O(a) vencedor(a) foi ",nome[y]," com nota", nota[y],"!")


Fimalgoritmo