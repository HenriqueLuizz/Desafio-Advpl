#include "TOTVS.CH"

//Desafio 2 ADVPL
User function Desafio2

Local cVlr
Local nCntA
Local nCntB 
Local nSeconds = SECONDS()

cVlr := PegaDado("Insira um Valor:")

ConOut("Foi digitado "+ cVlr)

FOR nCntA := 1 TO VAL(cVlr) 
  ConOut(AddPonto(nCntA))
NEXT
FOR nCntB := VAL(cVlr) TO 1 STEP -1 
  ConOut(RmvPonto(nCntB))
NEXT

Alert("Olhe o console!")

//Exibir tempo da Function
ConOut(SECONDS() - nSeconds)

Return


//Funçao PegaDado(cTit)
Static Function PegaDado(cTit)

Local xRet
Local oTGet

DEFINE DIALOG oDlg TITLE cTit FROM 180,180 TO 250,380 PIXEL
 xRet := Space(50)
 oTGet := TGet():New( 01,01,bSetGet(xRet),oDlg,096,009,,,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,xRet,,,, )
 oTButton := TButton():New( 015, 01, "Ok",oDlg,{||oDlg:End()}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
 ACTIVATE DIALOG oDlg CENTERED
Return xRet
//Fim da Funçao PegaDado(cTit)

//Function AddPonto(nVlr)
Static Function AddPonto(nVlr)

Local nQnt := 0    //Marcador da Linha
Local cLin := ""   //Acumulador de .

  FOR nQnt := 1 TO nVlr
  	cLin := cLin + "*"
  NEXT  
Return cLin
//Fim da Function AddPonto(nVlr)

//Function RmvPonto(nVlr)
Static Function RmvPonto(nVlr)

Local nQnt := 0    //Marcador da Linha
Local cLin := ""   //Acumulador de .

nVlr := nVlr - 1

  FOR nQnt := nVlr TO 1 Step -1
  	cLin := cLin + "*"
  NEXT
Return cLin
//Fim da Function RmvPonto(nVlr)
