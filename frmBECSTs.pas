unit frmBECSTs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmBrowseEdit, SMDBGSet, QExport4Dialog, QImport2Wizard, ActnList, Menus,
  UCBase, SMDBFltr, SMDBFind, zHint, AngleLbl, Grids, DBGrids, SMDBGrid, StdCtrls, GPanel,
  ExtCtrls, LegendaShape, Buttons, ComCtrls, ToolWin, SMDBComb, Mask, DBCtrls;

type
  TFBECSTS = class(TFBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    SMDBComboBox1: TSMDBComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBECSTS: TFBECSTS;

implementation

uses
  SPMenuNutratec, DMNutratec, FuncoesDM, DefVar;

{$R *.dfm}

procedure TFBECSTS.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (OperacaoAtual <> Consulta) and ValidaEdicao(Sender) then
    case (Sender as TComponent).Tag of

      1: //Valida c�digo na altera��o do campo
        VerifDigitacao(DMNT.qryCSTCODIGOCST, 'CODIGOCST, DESCRICAO',
        'CST', 'CODIGOCST', 'Este c�digo j� foi utilizado no CST', 2, Sender);

      4: //Fator
        if (DMNT.qryCSTFATORFISCAL.AsFloat < 0) or (DMNT.qryCSTFATORFISCAL.AsFloat > 100) then
          MsgValida('Conte�do fora da faixa permitida: 0 a 100%', Sender);
    end;
end;

end.
