unit frmBEEntidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmBrowseEdit, DB, StdCtrls, Mask, DBCtrls, SMDBGSet, QExport4Dialog,
  QImport2Wizard, ActnList, Menus, UCBase, SMDBFltr, SMDBFind, zHint, AngleLbl,
  Grids, DBGrids, SMDBGrid, GPanel, ExtCtrls, LegendaShape, Buttons, ComCtrls,
  ToolWin, DBLup2, SMDBComb, DBEditCNPJCPF, DBEditDate, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, frameEdita, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FrameEditEntidadesAquario;

type
  TFBEEntidades = class(TFBrowseEdit)
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit11: TDBEdit;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEditCNPJCPF1: TDBEditCNPJCPF;
    DBEdit1: TDBEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    lkpCEP: TDBLookupComboPlus;
    edtEndereco: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtEstado: TEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit10: TDBEdit;
    Panel1: TPanel;
    pnlCliente: TPanel;
    Panel4: TPanel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEditDate1: TDBEditDate;
    pnlObservacao: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    frameEditEntAquario1: TframeEditEntAquario;
    pnlFornecedor: TPanel;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    ImportaClientesXMLNFe: TToolButton;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1PONTOS: TcxGridDBColumn;
    cxGrid1DBTableView1NF: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_NF: TcxGridDBColumn;
    procedure ExecutaValidacao(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure pcEditChange(Sender: TObject);
    procedure ImportaClientesXMLNFeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IniciaRegistro; override;
    procedure TrataEdit(Objeto: TObject; Leitura: Boolean = True; AcertaTamanho: Boolean = False); override;
  end;

var
  FBEEntidades: TFBEEntidades;
  inCodigoEntidadeAtual: integer = 0;

implementation

uses
  DMNutratec, DMGenerico, SPMenuNutratec, FuncoesDM, DefVar, frmEdImportaClientesXMLNFe,
  DMSkin;

{$R *.dfm}

procedure TFBEEntidades.DBCheckBox1Click(Sender: TObject);
begin
  inherited;
  pnlCliente.Visible := DBCheckBox1.Checked;
  pnlFornecedor.Visible := DBCheckBox2.Checked;
end;

procedure TFBEEntidades.DBEdit11Change(Sender: TObject);
var
  inCodigoEntidade, inErro: integer;
begin
  inherited;
  if OperacaoAtual <> Finalizacao then
  begin
    Val( DBEdit11.Text, inCodigoEntidade, inErro);
    if inCodigoEntidade <> inCodigoEntidadeAtual then
    begin
      inCodigoEntidadeAtual := inCodigoEntidade;
      pcEditChange(pcEdit);
    end;
  end;
end;

procedure TFBEEntidades.ExecutaValidacao(Sender: TObject);
begin
  inherited;
  if (OperacaoAtual <> Consulta) and ValidaEdicao(Sender) then
    case (Sender as TComponent).Tag of
      //Valida código na alteração do campo
      1: VerifDigitacao(DMNT.qryEntidadesCNPJ_CPF,
                        'CNPJ_CPF, RAZAOSOCIAL',
                        'ENTIDADES',
                        'CNPJ_CPF',
                        'Este CNPJ/CPF já foi utilizado na entidade', 2, Sender);
    end;
end;

procedure TFBEEntidades.FormCreate(Sender: TObject);
begin
  inherited;
  ImportaClientesXMLNFe.Left := Importar.Left-1; //Só pq o Delphi não consegue tratar com herança
end;

procedure TFBEEntidades.ImportaClientesXMLNFeClick(Sender: TObject);
begin
  inherited;
  try
    ExecutaForm(TfoImportaClientesXMLNFe,
                [DMNT.dsImportaClientesXMLNFe,DMNT.dsEntidades,DMGEN.dsPaises, DMGEN.dsLogradouros],
                [],
                True);
  finally
    DMGEN.qryConsLogradouros.Close;
    DMGEN.qryConsLogradouros.Open;
    DMNT.qryEntidades.First;
  end;
end;

procedure TFBEEntidades.IniciaRegistro;
begin
  inherited;
  if OperacaoAtual = Inclusao then
  begin
    DMNT.qryEntidadesUSUARIO_INCLUSAO.Value := UsuID;
    DMNT.qryEntidadesDATAINCLUSAO.Value := Date;
  end
  else
  begin
    DMNT.qryEntidadesUSUARIO_ALTERACAO.Value := UsuID;
    DMNT.qryEntidadesDATAALTERACAO.Value := Date;
  end;
end;

procedure TFBEEntidades.pcEditChange(Sender: TObject);
begin
  inherited;
  case pcEdit.ActivePageIndex of
    0: DMNT.CarregaAquario(inCodigoEntidadeAtual);
  end;
end;

procedure TFBEEntidades.TrataEdit(Objeto: TObject; Leitura, AcertaTamanho: Boolean);
begin
  inherited;
  ImportaClientesXMLNFe.Enabled := actContinuapesquisa.Enabled;
end;

end.
