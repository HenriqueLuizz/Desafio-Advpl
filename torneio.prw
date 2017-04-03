sorteio

//inserir player
User function addPlayer
Local aPlayers
Local lFlag

While (lFlag)
    
AADD(aPlayers,PegaDado("Insira um Player:"))

MSGYESNO("Deseja incluir mais um player?", "Continuar!")
If lCond

Else

EndIf   

End

ConOut("Foi digitado "+ cVlr)

Return


//organizar player - random

//desclassificar player

//classificar player

//validar quantidade de players


player {id, nome, status, rodada}

player1
            player1
player2
                        player4
player3     
            player4
player4
                                    player4
player5     
            player5
player6
                        player5
player7     
            player8
player8 



//Funcao PegaDado(cTit)
Static Function PegaDado(cTit)

Local xRet
Local oTGet

DEFINE DIALOG oDlg TITLE cTit FROM 180,180 TO 250,380 PIXEL
 xRet := Space(50)
 oTGet := TGet():New( 01,01,bSetGet(xRet),oDlg,096,009,,,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,xRet,,,, )
 oTButton := TButton():New( 015, 01, "Ok",oDlg,{||oDlg:End()}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
 ACTIVATE DIALOG oDlg CENTERED
Return xRet
//Fim da Funcao PegaDado(cTit)
