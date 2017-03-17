#include "TOTVS.CH"

//Desafio 3 ADVPL
User function Desafio3
Local nSeconds := SECONDS()

AddTbd()
Alert("Olhe o console!")

//Exibir tempo da Function
ConOut("Tempo = "+CVALTOCHAR(SECONDS() - nSeconds))
Return

//Function AddTbd()
Static Function AddTbd()
Local nRld

For nT:= 1 to 9
    ConOut("Tabuada do "+ CVALTOCHAR(nT))
    For nX:= 1 to 10
        nRld := (nX * nT)
        ConOut(CVALTOCHAR(nT) +" X "+ CVALTOCHAR(nX) +" = "+ CVALTOCHAR(nRld))
    NEXT
NEXT
Return
//Fim da Function AddTbd()





