/*
Desafio4_3 - Parte 3
Ao clicar em Salvar os dados devem ser salvos em um array
Incluir um botão chamado Exibir Dados
Ao clicar em exibir dados TODOS os cadastros salvos devem ser exibidos

PS: Não usaremos banco de dados por enquanto, salvem tudo nos arrays mesmo.
*/

#include "TOTVS.CH"
//---------------------------------------------------------
// Exemplo do Browse
//---------------------------------------------------------
User Function BrowseTst()

  DEFINE DIALOG oDlg TITLE "Exemplo TCBrowse" FROM 180,180 TO 550,700 PIXEL
	                 
    // Array com elementos do Browse
    aBrowse   := {{'CLIENTE 001','RUA CLIENTE 001',111.11},;
                  {'CLIENTE 002','RUA CLIENTE 002',222.22},;
                  {'CLIENTE 003','RUA CLIENTE 003',333.33} }
    // Cria Browse
    oBrowse := TCBrowse():New( 01 , 01, 260, 156,,;
                              {'Codigo','Nome','Valor'},{50,50,50},;
                              oDlg,,,,,{||},,,,,,,.F.,,.T.,,.F.,,, )
    // Seta array para o browse                            
    oBrowse:SetArray(aBrowse) 
    // Adciona colunas
    oBrowse:AddColumn( TCColumn():New('Codigo',{ || aBrowse[oBrowse:nAt,1] },,,,"LEFT",,.F.,.T.,,,,.F.,) ) 
    oBrowse:AddColumn( TCColumn():New('Nome'  ,{ || aBrowse[oBrowse:nAt,2] },,,,"LEFT",,.F.,.T.,,,,.F.,) ) 
    oBrowse:AddColumn( TCColumn():New('Valor' ,{ || aBrowse[oBrowse:nAt,3] },,,,"LEFT",,.F.,.T.,,,,.F.,) ) 

    // Evento de clique no cabeçalho do browse
    oBrowse:bHeaderClick := {|o,x| Alert('bHeaderClick'+Chr(13)+;
                                   'Coluna:'+StrZero(x,3)) } 
                               
    // Evento de clicar duas vezes na célula
    oBrowse:bLDblClick   := {|z,x| Alert('bLDblClick'+Chr(13)+;
                                         'Linha:'+StrZero(oBrowse:nAt,3)+Chr(13)+;
                                         'Coluna:'+StrZero(x,3) ) } 
    
    // Cria botões com métodos básicos do Browse
    TButton():New( 160, 002, "GoUp()"	, oDlg,{|| oBrowse:GoUp(),;
     oBrowse:setFocus() },40,010,,,.F.,.T.,.F.,,.F.,,,.F. )
    TButton():New( 160, 052, "GoDown()"	, oDlg,{|| oBrowse:GoDown(),;
     oBrowse:setFocus()	},40,010,,,.F.,.T.,.F.,,.F.,,,.F. )
    TButton():New( 160, 102, "GoTop()"	, oDlg,{|| oBrowse:GoTop(),;
     oBrowse:setFocus() 	},40,010,,,.F.,.T.,.F.,,.F.,,,.F. )
    TButton():New( 160, 152, "GoBottom()", oDlg,{|| oBrowse:GoBottom(),;
     oBrowse:setFocus() },40,010,,,.F.,.T.,.F.,,.F.,,,.F. )
    TButton():New( 172, 002, "Linha atual", oDlg,{|| alert(oBrowse:nAt) },;
     40,010,,,.F.,.T.,.F.,,.F.,,,.F. )
    TButton():New( 172, 052, "Nr Linhas", oDlg,{|| alert(oBrowse:nLen)	},;
     40,010,,,.F.,.T.,.F.,,.F.,,,.F. )
    TButton():New( 172, 102, "Linhas visiveis", oDlg,{|| alert(oBrowse:nRowCount()) },;
     40,010,,,.F.,.T.,.F.,,.F.,,,.F. )
    TButton():New( 172, 152, "Alias", oDlg,{|| alert(oBrowse:cAlias) },;
     40,010,,,.F.,.T.,.F.,,.F.,,,.F. )
    
  ACTIVATE DIALOG oDlg CENTERED 
Return