algoritmo "Tabela de Pontos"
// Disciplina: [Linguagem e Lógica de Programação]
// Professor: Elberth Lins Costa de Moraes
// Função: Calcular pontos na tabela
// Autor: Renata Duarte
// Data: 03/02/2022


// Seção de Declarações 


procedimento coletaDados()
      inicio
         escreva ("Nome do time: ")
         leia (time)
         escreva ("O time venceu quantas vezes até agora no campeonato? ")
         leia (vitorias)
         escreva ("O time empatou quantas vezes até agora no campeonato? ")
         leia (empates)
       fimprocedimento

var
   time: caracter
   vitorias,empates,pontos: inteiro
       
inicio

      coletaDados()
      pontos <- vitorias * 3 + empates
      escreva ("O ", time, " está com ", pontos, "pontos.")
      
fimalgoritmo
