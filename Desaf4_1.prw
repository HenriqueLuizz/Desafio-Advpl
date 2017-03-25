/*
Desafio - Parte 1
Criar uma tela com 2 campos, Nome e idade, e dois botões Ok e Cancelar.

Fontes para pesquisa:
Como criar uma janela? -> http://tdn.totvs.com/display/tec/MsDialog
Como criar um label ou tSay? -> http://tdn.totvs.com/display/tec/TSay
Como criar um campo ou tGet? -> http://tdn.totvs.com/display/tec/TGet
Como criar um botão ou tButton? -> http://tdn.totvs.com/display/tec/TButton
*/

#include "TOTVS.CH"

User Function Desaf4_1()

TDesaf()

Return

Static Function TDesaf()

DEFINE DIALOG oDlg TITLE "Desafio - Montar Tela" FROM 180,180 TO 550,700 PIXEL
// Cria Fonte para visualização
oFont := TFont():New('Courier new',,-18,.T.)
// Usando o método New
oSay1:= TSay():New(01,01,{||'Nome'},oDlg,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)
oSay2:= TSay():New(20,01,{||'Idade'},oDlg,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)
// Propriedades
oSay:lTransparent = .T.
oSay:lWordWrap = .F.

// Usando o New
cTGet1 := "Teste TGet 01"
oTGet1 := TGet():New( 01,30,{||cTGet1},oDlg,096,009,; "@!",,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,cTGet1,,,, )
// Usando o New
cTGet2 := "Teste TGet 02"
oTGet2 := TGet():New( 20,30,{||cTGet2},oDlg,096,009,; "@!",,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,cTGet2,,,, )

ACTIVATE DIALOG oDlg CENTERED
Return
