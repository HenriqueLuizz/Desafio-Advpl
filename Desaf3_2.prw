/*
Seguindo a mesma linha do exerc�cio que passei pra vcs ontem, aproveitem e fa�a um programa para exibir n�meros pares e impares de 0 a 10 ok?
*/

#include "TOTVS.CH"

Static nX
Static cLin := ""

//Desafio 3_2 ADVPL
User function Desaf3_2

Alert(AddLinP() + CRLF;
+ AddLinI())
Return

//Function AddLinP()
Static Function AddLinP()

cLin := ""
For nX := 1 to 10 Step 2
    if nX != 9
        cLin := (cLin + CVALTOCHAR(nX) + ", ")
    else
        cLin := cLin + CVALTOCHAR(nX)
    endif
NEXT
Return cLin

//Function AddLinI()
Static Function AddLinI()

cLin := ""
For nX := 2 to 10 Step 2
    if nX != 10
        cLin := (cLin + CVALTOCHAR(nX) + ", ")
    else
        cLin := cLin + CVALTOCHAR(nX)
    endif
NEXT
Return cLin