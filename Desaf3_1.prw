/*
Faça um programa que imprima( em Tela ou no Server ) numerais de 1 a 10 "separados por virgula".
Ex. do resultado :         1,2,3,4,5,6,7,8,9,10
*/


#include "TOTVS.CH"

//Desafio 3 ADVPL
User function Desaf3_1

Alert(AddLin())
Alert("Olhe o console!")
Return

//Function AddLin()
Static Function AddLin()
Local nX
Local cLin := ""

For nX := 1 to 10
    if nX != 10
    cLin := (cLin + CVALTOCHAR(nX) + ", ")
    else
    cLin := cLin + CVALTOCHAR(nX)
    endif
NEXT

Return cLin
