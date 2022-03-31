Algoritmo "tituloEleitor"
// Disciplina   : [Lógica, Computação e Algoritmos]
// Professor   : Elberth Moraes
// Descrição   : Verificar obrigatorieade do voto.
// Autor(a)    : Renata Duarte
// Data atual  : 30/03/2022


procedimento informaDados()
inicio
      escreva("Informe a idade:")
      leia (idade)
         enquanto idade < 1 faca
            escreval ("Valor inválido.")
            escreva("Informe a idade:")
            leia (idade)
         fimenquanto

fimprocedimento

procedimento verificaIdade()
inicio
      se (idade > 17) E (idade < 70) entao
      escreva("Tem obrigação de votar.")
         senao
         se (idade > 15) E (idade < 18) OU (idade > 70) entao
         escreva("Não tem obrigação de votar.")
            senao
            escreva("Não tem direito ao voto.")
         fimse
      fimse
fimprocedimento


Var

idade: inteiro

Inicio

       informaDados()
       verificaIdade()

Fimalgoritmo