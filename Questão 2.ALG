Algoritmo "tituloEleitor"
// Disciplina   : [L�gica, Computa��o e Algoritmos]
// Professor   : Elberth Moraes
// Descri��o   : Verificar obrigatorieade do voto.
// Autor(a)    : Renata Duarte
// Data atual  : 30/03/2022


procedimento informaDados()
inicio
      escreva("Informe a idade:")
      leia (idade)
         enquanto idade < 1 faca
            escreval ("Valor inv�lido.")
            escreva("Informe a idade:")
            leia (idade)
         fimenquanto

fimprocedimento

procedimento verificaIdade()
inicio
      se (idade > 17) E (idade < 70) entao
      escreva("Tem obriga��o de votar.")
         senao
         se (idade > 15) E (idade < 18) OU (idade > 70) entao
         escreva("N�o tem obriga��o de votar.")
            senao
            escreva("N�o tem direito ao voto.")
         fimse
      fimse
fimprocedimento


Var

idade: inteiro

Inicio

       informaDados()
       verificaIdade()

Fimalgoritmo