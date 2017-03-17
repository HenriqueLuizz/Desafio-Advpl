#include "TOTVS.CH"

//Desafio 3 ADVPL
User function Desaf3_1

Local nSeconds := SECONDS()

Alert(AddLin())
Alert("Olhe o console!")

//Exibir tempo da Function
ConOut("Tempo = "+CVALTOCHAR(SECONDS() - nSeconds))
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
//Fim da Function AddLin()
