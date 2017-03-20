#include "TOTVS.CH"

//Desafios - ADVPL
User function Desafios

Local cVlr

cVlr := PegaDado("Selecione o Desafio:")

ConOut("Foi digitado "+ cVlr)

DO CASE
	CASE nDes == 1 
		U_Desafio1()
	CASE nDes == 1_1 
		U_Desaf1_1()
	CASE nDes == 2
		U_Desafio2()
	CASE nDes == 3
		U_Desafio3()
	CASE nDes == 3_1
		U_Desaf3_1()
	CASE nDes == 3_2
		U_Desaf3_2()
	OTHERWISE
		ConOut("Foi selecionado o Desafio "+ cVlr + " e este desafio ainda não foi adicionado!")
ENDCASE

Alert("Olhe o console!")

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



