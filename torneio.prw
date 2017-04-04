#include "protheus.ch"
/*
Função: FWTORNEIO
Autor: Henrique Luiz
Data:
Descrição: Realiza o sorteio para o torneio Framework
*/

/*
***********TABELAS***********
Tabela ZCP - Cadastro de Jogador
ZCP_ID, ZCP_NAME, ZCP_GRUPO, ZCP_ROUND, ZCP_STATUS
*****************************
Tabela ZTF - Torneio Framework
ZTF_ID, ZTF_ROUND, ZTF_STATUS, ZTF_ZCPID
*****************************
*********Functions***********
*****************************
Cadastrar Jogador;
*****************************
    INSERT INTO ZCP (ZCP_ID=?,ZCP_NAME=?,ZCP_GRUPO=?,ZCP_ROUND=?,ZCP_STATUS=?)
*****************************
*****************************
Sortear Duplas;
*****************************
    nRound := 0
    aArray := CriarArray(nRound); //Criar aArray de jogadores
    For nX:= 1 to Len(aArray) //Vai até a metade e volta o for
        nPlayer:= Randomize(0,Len(aArray))
        InsertGrupo(nPlayer,nX) //Popular o campo ZCP_GRUPO com o valor ramdon 
        aArray:= Remove(aArray,nPlayer) //Remove do Jogador do aArray
    Next
*****************************
*****************************
Listar Duplas;
*****************************
    aArray := CriarArray(); //Criar aArray de jogadores
    PrintArray(); //Mostrar o Array na ordem [0][1],[2][3],[4][5],...;
*****************************
*****************************
Classificar Ganhador;
*****************************
    Alterar ZCP_ROUND para ZCP_ROUND+1
*****************************
*****************************
Alterar Round do Torneio; //Quando terminar todos os jogos 
*****************************
    Alterar ZTF_ROUND para ZTF_ROUND+1
*****************************
*****************************
CriarArray(ROUND); //Criar um aArray ordenado por Round
*****************************
    SELECT * FROM ZCP WHERE ZCP_STATUS = true AND ZCP_ROUND = ? ORDER BY ZCP_GRUPO
*****************************
*****************************
Remover(aArray,Player) // Remove o Jogador do Array 
*****************************
    Remover o Jogador do Array
    Return aArray
*****************************
*****************************
ZerarRound()
*****************************
    INSERT INTO ZCP (ZCP_ROUND = 0) //Zerar todos o Round de todos os jogadores
*****************************
*****************************


*/

//Tela FWTORNEIO()
User Function FWTORNEIO()
Local cAlias := "ZTF"
Local cTitulo := "Torneio Framework"
Local cVldExc := ".T."
Local cVldAlt := ".T."
dbSelectArea(cAlias)
dbSetOrder(1)
AxCadastro(cAlias,cTitulo,cVldExc,cVldAlt)
Return Nil
//Fim da Tela FWTORNEIO()

// Função VldAlt
User Function VldAlt(cAlias,nReg,nOpc)
Local lRet := .T.
Local aArea := GetArea()
Local nOpcao := 0
nOpcao := AxAltera(cAlias,nReg,nOpc)
If nOpcao == 1
    MsgInfo(“Ateração concluída com sucesso!”)
Endif
RestArea(aArea)
Return lRet
// Fim da Função VldAlt

// Função VldExc
User Function VldExc(cAlias,nReg,nOpc)
Local lRet := .T.
Local aArea := GetArea()
Local nOpcao := 0
nOpcao := AxExclui(cAlias,nReg,nOpc)
If nOpcao == 1
    MsgInfo(“Exclusão concluída com sucesso!”)
Endif
RestArea(aArea)
Return lRet
//Fim da Função VldExc




//Inserir player
Static Function addPlayer
Local aPlayers
Local lFlag

While (lFlag)
    AADD(aPlayers,PegaDado("Insira um Player:"))
    lFlag := MSGYESNO("Deseja incluir mais um player?", "Continuar!")
//  ConOut("Player "+ aPlayers)
End
Return

//organizar player - random
Static Function rondom()
  Randomize(1, Len(aArray))
Return

//desclassificar player
Static Function Desclassifica()

Return  

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
