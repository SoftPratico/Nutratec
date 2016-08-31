unit SPMenuNutratec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SPMenu, UCDataConnector, UCUniDACConn, Menus, StdActns, ActnList, XPMan, UCSettings, UCMail, UCBase, zHint, ComCtrls,
  MDITab, SBPro, ExtCtrls, ToolWin, Tabs, Usertility;

type
  TfoMenuNutratec = class(TfrmMenu)
    Montadoras1: TMenuItem;
    N2: TMenuItem;
    CFOP1: TMenuItem;
    N4: TMenuItem;
    NotasFiscaisEntrada1: TMenuItem;
    actNFsSaida: TAction;
    NotasFiscaisdeSada1: TMenuItem;
    actImportarDados: TAction;
    ImportarDadosdeTerceiros1: TMenuItem;
    N5: TMenuItem;
    mnNFs: TPopupMenu;
    NotasFiscaisdeEntrada1: TMenuItem;
    NotasFiscaisdeSada2: TMenuItem;
    actParcDedut: TAction;
    N11: TMenuItem;
    ParcelaDedutvel1: TMenuItem;
    actCST: TAction;
    CST1: TMenuItem;
    procedure actExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foMenuNutratec: TfoMenuNutratec;

implementation

uses
  FuncoesDM, DMNutratec, DMGenerico,
  frmBECFOPs, frmBECSTs, frmBEEntidades; //, frmBEPaises, frmBELogradouros, frmBEProdutos,
  //frmTransfereDados, frmConsultaDocNFEnt, frmConsultaDocNFSai, frmParcelaDedutivel;

{$R *.dfm}

procedure TfoMenuNutratec.actExecute(Sender: TObject);
begin
  case (Sender as TComponent).Tag of
    //Entidades
    112: ExecutaForm( TFBEEntidades, [DMNT.dsEntidades, DMNT.dsEntidades_Aquario, DMNT.dsEntidades_Pontos],[DMGEN.dsConsLogradouros]);
    //CFOP
    118: ExecutaForm( TFBECFOPS, [DMNT.dsCFOPS], []);
    //Produtos
//    120: ExecutaForm( TFBEProdutos, [DMIA.dsProdutos, DMIA.dsProdutosComposicao], [DMIA.dsProdutosCustoMedio]);
//    //NFs Entrada
//    123: ExecutaForm( TfoConsultaDocNFEnt, [], []);
//    //NFs Saída
//    124: ExecutaForm( TfoConsultaDocNFSai, [], []);
//    //Calcula parcela dedutível
//    125: ExecutaForm( TfoParcelaDedutivel, [], []);
    //CST
    126: ExecutaForm( TFBECSTS, [DMNT.dsCST], []);
//    //Importar Dados de Terceiros
//    127: ExecutaForm( TFoTransfereDados, [], [], True);
  end;
end;

end.
