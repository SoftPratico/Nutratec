unit DMnutratec;

interface

uses
  SysUtils, Classes, Forms, Windows, Uni, DB, MemDS, DBAccess, DAScript, UniScript,
  dxmdaset;

type
  TDMNT = class(TDataModule)
    qryCFOPS: TUniQuery;
    dsCFOPS: TDataSource;
    qryCFOPSCODIGOCFOP: TStringField;
    qryCFOPSDESCRICAO: TStringField;
    qryCFOPSDEVOLUCAO: TStringField;
    qryProdutos: TUniQuery;
    dsProdutos: TDataSource;
    qryProdutosPRDT_CODIGO: TIntegerField;
    qryProdutosPRDT_CODIGOALTERNATIVO: TStringField;
    qryProdutosPRDT_DESCRICAO: TStringField;
    qryProdutosPRDT_UNIDADE: TStringField;
    qryProdutosPRDT_TEMCOMPOSICAO: TStringField;
    qryProdutosComposicao: TUniQuery;
    dsProdutosComposicao: TDataSource;
    qryProdutosCustoMedio: TUniQuery;
    dsProdutosCustoMedio: TDataSource;
    qryProdutosCustoMedioPRDT_CODIGO: TIntegerField;
    qryProdutosCustoMedioPRDTCM_PERIODO: TDateTimeField;
    qryProdutosCustoMedioPRDTCM_CUSTOMEDIO: TFloatField;
    qryProdutosComposicaoPRDTCMP_CODIGO: TIntegerField;
    qryProdutosComposicaoPRDT_CODIGO: TIntegerField;
    qryProdutosComposicaoPRDT_QTDEUTILIZADA: TFloatField;
    qryProdutosComposicaoPRDT_DESCRICAO: TStringField;
    qryProdutosPRDT_TIPO: TStringField;
    qryConsProdutos: TUniQuery;
    dsConsProdutos: TDataSource;
    qryConsProdutosPRDT_CODIGO: TIntegerField;
    qryConsProdutosPRDT_CODIGOALTERNATIVO: TStringField;
    qryConsProdutosPRDT_TIPO: TStringField;
    qryConsProdutosPRDT_DESCRICAO: TStringField;
    qryConsultaNFEnt: TUniQuery;
    dsConsultaNFEnt: TDataSource;
    qryConsultaNFEntDataOperacao: TDateTimeField;
    qryConsultaNFEntValorMercadorias: TFloatField;
    qryConsultaNFEntICMS: TFloatField;
    qryConsultaNFEntIPI: TFloatField;
    qryConsultaNFEntPIS: TFloatField;
    qryConsultaNFEntCOFINS: TFloatField;
    qryConsultaNFEntValorTotalNF: TFloatField;
    qryConsultaNFSai: TUniQuery;
    SQLTimeStampField1: TDateTimeField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    dsConsultaNFSai: TDataSource;
    qryNFEnt: TUniQuery;
    dsNFEnt: TDataSource;
    qryNFEntItens: TUniQuery;
    dsNFEntItens: TDataSource;
    qryNFEntItensNF_SEQ_LANCAMENTO: TIntegerField;
    qryNFEntItensPRDT_CODIGO: TIntegerField;
    qryNFEntItensNFI_DESCRICAO: TStringField;
    qryNFEntItensCFOP_CODIGO: TStringField;
    qryNFEntItensNFI_VALORMERCADORIA: TFloatField;
    qryNFEntItensNFI_VALORICMS: TFloatField;
    qryNFEntItensNFI_VALORIPI: TFloatField;
    qryNFEntItensNFI_VALORPIS: TFloatField;
    qryNFEntItensNFI_VALORCOFINS: TFloatField;
    qryNFEntItensNF_TIPO: TStringField;
    qryNFEntItensNFI_PARCELADEDUTIVEL: TFloatField;
    qryNFSai: TUniQuery;
    dsNFSai: TDataSource;
    qryNFSaiItens: TUniQuery;
    dsNFSaiItens: TDataSource;
    qryNFEntNF_TIPO: TStringField;
    qryNFEntNF_DEVOLUCAO: TStringField;
    qryNFEntNF_DATAOPERACAO: TDateTimeField;
    qryNFEntNF_VALORMERCADORIA: TFloatField;
    qryNFEntNF_VALORICMS: TFloatField;
    qryNFEntNF_VALORIPI: TFloatField;
    qryNFEntNF_VALORPIS: TFloatField;
    qryNFEntNF_VALORCOFINS: TFloatField;
    qryNFEntNF_VALORTOTAL: TFloatField;
    qryNFEntNF_PARCELADEDUTIVEL: TFloatField;
    qryConsultaNFEntNotaFiscal: TIntegerField;
    qryConsultaNFSaiNotaFiscal: TIntegerField;
    qryNFEntNF_NUMERO: TIntegerField;
    qryNFEntItensNF_NUMERO: TIntegerField;
    qryConsCFOPs: TUniQuery;
    dsConsCFOPs: TDataSource;
    qryConsCFOPsCODIGO: TStringField;
    qryConsCFOPsDEVOLUCAO: TStringField;
    qryConsCFOPsDESCRICAO: TStringField;
    qryNFEntItensNFI_VALORTOTAL: TFloatField;
    qryConsultaNFEntStatus: TIntegerField;
    qryNFEntNF_STATUS: TIntegerField;
    qryConsultaNFSaiStatus: TIntegerField;
    qryNFSaiNF_NUMERO: TIntegerField;
    qryNFSaiNF_TIPO: TStringField;
    qryNFSaiNF_DEVOLUCAO: TStringField;
    qryNFSaiNF_DATAOPERACAO: TDateTimeField;
    qryNFSaiNF_VALORMERCADORIA: TFloatField;
    qryNFSaiNF_VALORICMS: TFloatField;
    qryNFSaiNF_VALORIPI: TFloatField;
    qryNFSaiNF_VALORPIS: TFloatField;
    qryNFSaiNF_VALORCOFINS: TFloatField;
    qryNFSaiNF_VALORTOTAL: TFloatField;
    qryNFSaiNF_PARCELADEDUTIVEL: TFloatField;
    qryNFSaiNF_STATUS: TIntegerField;
    qryNFSaiItensNF_NUMERO: TIntegerField;
    qryNFSaiItensNF_TIPO: TStringField;
    qryNFSaiItensNF_SEQ_LANCAMENTO: TIntegerField;
    qryNFSaiItensPRDT_CODIGO: TIntegerField;
    qryNFSaiItensNFI_DESCRICAO: TStringField;
    qryNFSaiItensCFOP_CODIGO: TStringField;
    qryNFSaiItensNFI_VALORMERCADORIA: TFloatField;
    qryNFSaiItensNFI_VALORICMS: TFloatField;
    qryNFSaiItensNFI_VALORIPI: TFloatField;
    qryNFSaiItensNFI_VALORPIS: TFloatField;
    qryNFSaiItensNFI_VALORCOFINS: TFloatField;
    qryNFSaiItensNFI_VALORTOTAL: TFloatField;
    qryNFSaiItensNFI_PARCELADEDUTIVEL: TFloatField;
    qryParcelaDedutivel: TUniQuery;
    dsParcelaDedutivel: TDataSource;
    qryCST: TUniQuery;
    dsCST: TDataSource;
    qryConsCST: TUniQuery;
    dsConsCST: TDataSource;
    qryCSTCODIGOCST: TStringField;
    qryCSTDESCRICAO: TStringField;
    qryCSTDIGITOFISCAL: TStringField;
    qryCSTFATORFISCAL: TFloatField;
    qryConsCSTCODIGOCST: TStringField;
    qryConsCSTDESCRICAO: TStringField;
    qryNFEntItensNFI_QUANTIDADE: TFloatField;
    qryNFSaiItensNFI_QUANTIDADE: TFloatField;
    qryParcelaDedutivelNF_DATAOPERACAO: TDateTimeField;
    qryParcelaDedutivelNF_NUMERO: TIntegerField;
    qryParcelaDedutivelPRDT_CODIGO: TIntegerField;
    qryParcelaDedutivelPRDT_TEMCOMPOSICAO: TStringField;
    qryParcelaDedutivelNFI_DESCRICAO: TStringField;
    qryParcelaDedutivelNFI_QUANTIDADE: TFloatField;
    qryParcelaDedutivelNFI_VALORMERCADORIA: TFloatField;
    qryParcelaDedutivelNFI_VALORICMS: TFloatField;
    qryParcelaDedutivelNFI_VALORPIS: TFloatField;
    qryParcelaDedutivelNFI_VALORCOFINS: TFloatField;
    qryParcelaDedutivelNFI_VALORIPI: TFloatField;
    qryParcelaDedutivelNFI_VALORTOTAL: TFloatField;
    qryParcelaDedutivelNFI_PARCELADEDUTIVEL: TFloatField;
    qryParcelaDedutivelOPERACAO: TStringField;
    qryCFOPSFATOR: TFloatField;
    qryParcDedutivel: TUniQuery;
    DateTimeField2: TDateTimeField;
    IntegerField3: TIntegerField;
    StringField10: TStringField;
    IntegerField4: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    dsParcDedutivel: TDataSource;
    qryProdutosMovimentacao: TUniQuery;
    dsProdutosMovimentacao: TDataSource;
    qryProdutosMovimentacaoNF_NUMERO: TIntegerField;
    qryProdutosMovimentacaoNFI_QUANTIDADE: TFloatField;
    qryProdutosMovimentacaoNFI_VALORMERCADORIA: TFloatField;
    qryProdutosMovimentacaoNFI_VALORICMS: TFloatField;
    qryProdutosMovimentacaoNFI_VALORPIS: TFloatField;
    qryProdutosMovimentacaoNFI_VALORCOFINS: TFloatField;
    qryProdutosMovimentacaoNFI_VALORIPI: TFloatField;
    qryProdutosMovimentacaoNFI_VALORTOTAL: TFloatField;
    qryProdutosMovimentacaoNFI_PARCELADEDUTIVEL: TFloatField;
    qryProdutosMovimentacaoNF_TIPO: TStringField;
    qryEntidades: TUniQuery;
    dsEntidades: TDataSource;
    qryConsEntidades: TUniQuery;
    dsConsEntidades: TDataSource;
    qryConsultaNFEntEntidade: TIntegerField;
    qryConsultaNFEntRazaoSocial: TStringField;
    qryNFEntENT_CODIGO: TIntegerField;
    qryNFEntItensENT_CODIGO: TIntegerField;
    qryNFEntItensCODIGOCST: TStringField;
    qryConsultaNFSaiEntidade: TIntegerField;
    qryConsultaNFSaiRazaoSocial: TStringField;
    qryNFSaiENT_CODIGO: TIntegerField;
    qryNFSaiItensENT_CODIGO: TIntegerField;
    qryNFSaiItensCODIGOCST: TStringField;
    qryParcelaDedutivelENT_RAZAOSOCIAL: TStringField;
    qryParcelaDedutivelCODIGOCST: TStringField;
    qryParcDedutivelENT_RAZAOSOCIAL: TStringField;
    qryParcDedutivelCODIGOCST: TStringField;
    qryProdutosMovimentacaoCODIGOCST: TStringField;
    scptCalculaParcelaDedutivel: TUniScript;
    qryCFOPSUSO: TStringField;
    qryConsultaNFEntOperacao: TStringField;
    qryParcelaDedutivelNFI_VALORII: TFloatField;
    qryParcelaDedutivelNFI_VALOROUTRASDESPESAS: TFloatField;
    qryConsultaNFEntImportacao: TFloatField;
    qryConsultaNFEntOutrasDesp: TFloatField;
    qryConsultaNFSaiDevolucao: TStringField;
    qryConsultaNFSaiOperacao: TStringField;
    qryConsultaNFSaiOutrasDesp: TFloatField;
    qryNFEntNF_OPERACAO: TStringField;
    qryNFEntNF_VALORII: TFloatField;
    qryNFEntNF_VALOROUTRASDESPESAS: TFloatField;
    qryNFSaiNF_OPERACAO: TStringField;
    qryNFSaiNF_VALOROUTRASDESPESAS: TFloatField;
    qryNFEntItensNFI_VALORII: TFloatField;
    qryNFEntItensNFI_VALOROUTRASDESPESAS: TFloatField;
    qryNFSaiItensNFI_VALOROUTRASDESPESAS: TFloatField;
    qryDeletaNF: TUniQuery;
    scptDeletaProdutos: TUniScript;
    scptDeletaNF: TUniScript;
    qryProdutosMovimentacaoNF_DATAOPERACAO: TDateTimeField;
    qryProdutosParcelaDedutivel: TUniQuery;
    dsProdutosParcelaDedutivel: TDataSource;
    qryProdutosParcelaDedutivelPRDT_CODIGO: TIntegerField;
    qryProdutosParcelaDedutivelPRDTPD_ANO: TIntegerField;
    qryProdutosParcelaDedutivelPRDTPD_MES: TIntegerField;
    qryProdutosParcelaDedutivelPRDTPD_VALORUNITARIO: TFloatField;
    scptDeletaParcDedutPrd: TUniScript;
    qryEntidadesCODIGOENTIDADE: TIntegerField;
    qryEntidadesRAZAOSOCIAL: TStringField;
    qryEntidadesNOMEFANTASIA: TStringField;
    qryEntidadesCNPJ_CPF: TStringField;
    qryEntidadesIE_RG: TStringField;
    qryEntidadesCEP: TStringField;
    qryEntidadesDIFERENCIADOR: TIntegerField;
    qryEntidadesEND_NUMERO: TStringField;
    qryEntidadesEND_COMPLEMENTO: TStringField;
    qryEntidadesEMAIL: TStringField;
    qryEntidadesSITE: TStringField;
    qryEntidadesCONTABANCARIATRANSF: TStringField;
    qryEntidadesFONE_RESIDENCIAL: TStringField;
    qryEntidadesFONE_COMERCIAL: TStringField;
    qryEntidadesFONE_CELULAR: TStringField;
    qryEntidadesTIMEFUTEBOL: TStringField;
    qryEntidadesDATANASCIMENTO: TDateField;
    qryEntidadesDATAINCLUSAO: TDateField;
    qryEntidadesDATAALTERACAO: TDateField;
    qryEntidadesCLIENTE: TStringField;
    qryEntidadesFORNECEDOR: TStringField;
    qryEntidadesOBSERVACAO: TMemoField;
    qryConsEntidadesCODIGOENTIDADE: TIntegerField;
    qryConsEntidadesRAZAOSOCIAL: TStringField;
    qryConsEntidadesNOMEFANTASIA: TStringField;
    qryConsEntidadesCNPJ_CPF: TStringField;
    qryConsEntidadesIE_RG: TStringField;
    qryConsEntidadesCEP: TStringField;
    qryConsEntidadesDIFERENCIADOR: TIntegerField;
    qryConsEntidadesEND_NUMERO: TStringField;
    qryConsEntidadesEND_COMPLEMENTO: TStringField;
    qryConsEntidadesEMAIL: TStringField;
    qryConsEntidadesSITE: TStringField;
    qryConsEntidadesCONTABANCARIATRANSF: TStringField;
    qryConsEntidadesFONE_RESIDENCIAL: TStringField;
    qryConsEntidadesFONE_COMERCIAL: TStringField;
    qryConsEntidadesFONE_CELULAR: TStringField;
    qryConsEntidadesTIMEFUTEBOL: TStringField;
    qryConsEntidadesDATANASCIMENTO: TDateField;
    qryConsEntidadesDATAINCLUSAO: TDateField;
    qryConsEntidadesDATAALTERACAO: TDateField;
    qryConsEntidadesCLIENTE: TStringField;
    qryConsEntidadesFORNECEDOR: TStringField;
    qryConsEntidadesOBSERVACAO: TMemoField;
    qryEntidades_Aquario: TUniQuery;
    dsEntidades_Aquario: TDataSource;
    qryEntidades_AquarioCODIGOENTIDADE: TIntegerField;
    qryEntidades_AquarioSEQUENCIAL: TIntegerField;
    qryEntidades_AquarioLITROS: TFloatField;
    qryEntidades_AquarioTIPO: TStringField;
    qryEntidades_Pontos: TUniQuery;
    dsEntidades_Pontos: TDataSource;
    qryEntidadesUSUARIO_INCLUSAO: TIntegerField;
    qryEntidadesUSUARIO_ALTERACAO: TIntegerField;
    tbImportaClientesXMLNFe: TdxMemData;
    tbImportaClientesXMLNFeStatus: TIntegerField;
    tbImportaClientesXMLNFeArquivo: TStringField;
    dsImportaClientesXMLNFe: TDataSource;
    qryEntidades_PontosCODIGOENTIDADE: TIntegerField;
    qryEntidades_PontosCNF: TIntegerField;
    qryEntidades_PontosTIPO: TStringField;
    qryEntidades_PontosPONTOS: TIntegerField;
    qryEntidades_PontosNF: TIntegerField;
    qryEntidades_PontosDATA_NF: TDateTimeField;
    tbImportaClientesXMLNFeLog: TMemoField;
    procedure PostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure NovoRegistro(DataSet: TDataSet);
    procedure qryLogradourosAfterOpen(DataSet: TDataSet);
    procedure qryEntidades_AquarioNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  published
    function VerificaEstruturaBancoDados: String;
  public
    { Public declarations }
    procedure CarregaAquario(pCodigoEntidade: Integer);
  end;

var
  DMNT: TDMNT;
  inRelatorioNFEnt: integer = 0;
  inRelatorioNFSai: integer = 0;

implementation

uses
  Funcoes, FuncoesDM, DefVar, DMConexao; // , frmBEProdutos

{$R *.dfm}

procedure TDMNT.PostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  DMCNX.PostError(DataSet, E, Action);
end;

procedure TDMNT.qryEntidades_AquarioNewRecord(DataSet: TDataSet);
begin
  qryEntidades_AquarioCODIGOENTIDADE.Value  := qryEntidadesCODIGOENTIDADE.Value;
end;

procedure TDMNT.qryLogradourosAfterOpen(DataSet: TDataSet);
begin
  DataSet.FieldByName('CEP').ValidChars := ['0'..'9'];
  DataSet.FieldByName('DDD').ValidChars := ['0'..'9'];
end;

procedure TDMNT.CarregaAquario(pCodigoEntidade: Integer);
begin
  //Carrega Composição
  qryEntidades_Aquario.Close;
  qryEntidades_Aquario.ParamByName( 'pcodigoentidade').AsInteger := pCodigoEntidade;
  qryEntidades_Aquario.Open;
end;

procedure TDMNT.NovoRegistro(DataSet: TDataSet);
begin
  DMCNX.NovoRecord(DataSet, 0);
end;

function TDMNT.VerificaEstruturaBancoDados: string;
begin
//
end;

end.
