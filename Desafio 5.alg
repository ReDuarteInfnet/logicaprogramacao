algoritmo "Tabela de Pontos"
// Disciplina: [Linguagem e L�gica de Programa��o]
// Professor: Elberth Lins Costa de Moraes
// Fun��o: Calcular pontos na tabela
// Autor: Renata Duarte
// Data: 03/02/2022


// Se��o de Declara��es 


procedimento coletaDados()
      inicio
         escreva ("Nome do time: ")
         leia (time)
         escreva ("O time venceu quantas vezes at� agora no campeonato? ")
         leia (vitorias)
         escreva ("O time empatou quantas vezes at� agora no campeonato? ")
         leia (empates)
       fimprocedimento

var
   time: caracter
   vitorias,empates,pontos: inteiro
       
inicio

      coletaDados()
      pontos <- vitorias * 3 + empates
      escreva ("O ", time, " est� com ", pontos, "pontos.")
      
fimalgoritmo
