unit frmBECFOPs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmBrowseEdit, StdCtrls, SMDBComb, Mask, DBCtrls, SMDBGSet, QExport4Dialog, QImport2Wizard, ActnList, Menus, UCBase,
  SMDBFltr, SMDBFind, zHint, AngleLbl, Grids, DBGrids, SMDBGrid, GPanel, ExtCtrls, LegendaShape, Buttons, ComCtrls, ToolWin;

type
  TFBECFOPS = class(TFBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    cbxTipoPessoa: TSMDBComboBox;
    Label4: TLabel;
    SMDBComboBox1: TSMDBComboBox;
    procedure ExecutaValidacao(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBECFOPS: TFBECFOPS;

implementation

uses
  DMNutratec, SPMenuNutratec, FuncoesDM, DefVar;

{$R *.dfm}

procedure TFBECFOPS.ExecutaValidacao(Sender: TObject);
begin
  inherited;
  if (OperacaoAtual <> Consulta) and ValidaEdicao(Sender) then
    case (Sender as TComponent).Tag of
      //Valida código na alteração do campo
      1: VerifDigitacao(DMNT.qryCFOPSCODIGOCFOP,
                        'CODIGOCFOP, DESCRICAO',
                        'CFOPS',
                        'CODIGOCFOP',
                        'Este código já foi utilizado no CFOP', 2, Sender);
      //Devolução - Fator
      3: if cbxTipoPessoa.ItemIndex = 0 then
           DMNT.qryCFOPSFATOR.AsInteger := -1
         else
           DMNT.qryCFOPSFATOR.AsInteger := 1;
    end;
end;

end.
