algoritmo "Calcular Idade"
// Disciplina: [Linguagem e L�gica de Programa��o]
// Professor: Antonio Carlos Nicolodi
// Fun��o:  Calcular a idade em dias
// Autor:  Renata Duarte
// Data: 03/02/2022
// Se��o de Declara��es 


//Calcular dias extras decorrente de anos bissextos.

funcao bissexto(ano,anoAtual:inteiro):inteiro
var i: inteiro
    aux: inteiro
    aux_: inteiro

      inicio
      para i de ano ate anoAtual passo 1 faca
      aux <- i mod 400
         se aux = 0 entao
         diasExtras <- diasExtras +1
         fimse
      fimpara

      para i de ano ate anoAtual passo 1 faca
      aux <- 0
      aux <- i mod 4
      aux_ <- i mod 100
      se (aux = 0) e (aux_ > 0) entao
      diasExtras <- diasExtras +1
         fimse
      fimpara
      
      retorne diasExtras
fimfuncao


//Calcular a quantidade de dias do m�s.

funcao calcularMes(mes,dia,mesAtual,diaAtual:inteiro):inteiro
var    i: inteiro
       aux: inteiro
       resultado: inteiro

       inicio
       
       //Calcular qts de dias do ano corrente.
       aux <- mesAtual - 1
       resultado <- qtDiasMes(aux) + diaAtual


       //Calcular qts de dias desde o m�s de nascimento at� 31 de dezembro do ano de nascimento.
       aux <- 12 - mes
       resultado <- resultado + qtDiasMesContra(aux)
       
       
       //Calcular qt de dias at� o �ltimo dia do m�s de nascimento.
       resultado <- resultado + qtDias(dia,mes)

       retorne resultado
fimfuncao

       
//La�o de repeti��o para contar os dias decorridos no ano corrente.
//Observa��o: Contagem crescente (1 = janeiro)

funcao qtDiasMes (aux:inteiro):inteiro
var    i: inteiro
       diasMes: inteiro

       inicio
       para i de 1 ate aux passo 1 faca
          se (i = 1) ou (i = 3) ou (i = 5) ou (i = 7) ou (i = 8) ou (i = 10) ou (i = 12) entao
          diasMes <- diasMes + 31
          senao (i =  4) ou (i = 6) ou (i = 9) ou (i = 11) entao
          diasMes <- diasMes + 30
          senao (i = 2) entao
          diasMes <- diasMes + 28
          fimse
       fimpara
       retorne diasMes
fimfuncao


//La�o de repeti��o para contar os dias do m�s de nascimento at� 31 de dezembro do ano de nascimento.
//Observa��o: Contagem inversa (1 = dezembro)

funcao qtDiasMesContra(aux:inteiro):inteiro
var    i:inteiro
       diasMesNasc: inteiro

       inicio
       para i de 1 ate aux passo 1 faca
       se (i = 1) ou (i = 3) ou (i = 5) ou (i = 6) ou (i = 8) ou (i = 10) ou (i = 12) entao
          diasMesNasc <- diasMesNasc + 31
          senao (i =  2) ou (i = 4) ou (i = 7) ou (i = 9) entao
          diasMesNasc <- diasMesNasc + 30
          senao (i = 11) entao
          diasMesNasc <- diasMesNasc + 28
          fimse
       fimpara
       retorne diasMesNasc
fimfuncao


//Condicional para calcular os dias do dia que a pessoa nasceu at� o �ltimo dia do m�s de nascimento.
//Observa��o: fun��o n�o aceitava o segundo "sen�o". Precisei fechar o "senao" e abrir outro "se".

funcao qtDias(dia,mes:inteiro):inteiro
var    i:inteiro

       inicio
       se (mes = 1) ou (mes = 3) ou (mes = 5) ou (mes = 7) ou (mes = 8) ou (mes = 10) ou (mes = 12) entao
          i <- 31 - dia
          senao (mes =  4) ou (mes = 6) ou (mes = 9) ou (mes = 11) entao
          i <- 30 - dia
          fimse
          se (mes = 2) entao
          i <- 28 - dia
          fimse
       retorne i
fimfuncao


//Procedimento para coletar os dados de entrada.

procedimento coletaDados()

      inicio
         escreva ("Em que ano voc� nasceu? ")
         leia (ano)
         escreva ("Em que m�s voc� nasceu? ")
         leia (mes)
         escreva ("Em que dia voc� nasceu? ")
         leia (dia)
         escreva ("Em que ano n�s estamos? ")
         leia (anoAtual)
         escreva ("Em que m�s n�s estamos? ")
         leia (mesAtual)
         escreva ("Em que dia n�s estamos? ")
         leia (diaAtual)
      fimprocedimento

var

   ano,mes,dia: inteiro
   anoAtual,mesAtual,diaAtual: inteiro
   diasExtras: inteiro
   diasAno:inteiro
   diasFinal: inteiro


inicio

      coletaDados()
      
      diasExtras <- bissexto(ano,anoAtual)
      
      diasAno <- ((anoAtual - ano - 1)*365) + diasExtras
      
      diasFinal <- calcularMes(mes,dia,mesAtual,diaAtual)

      escreval ("Voc� nasceu h� ", diasAno + diasFinal," dias.")

fimalgoritmo
