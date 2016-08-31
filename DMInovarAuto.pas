unit DMInovarAuto;

interface

uses
  SysUtils, Classes, Forms, Windows, Uni, DB, MemDS, DBAccess, DAScript, UniScript;

type
  TDMIA = class(TDataModule)
    qryCFOPS: TUniQuery;
    dsCFOPS: TDataSource;
    qryCFOPSCFOP_CODIGO: TStringField;
    qryCFOPSCFOP_DESCRICAO: TStringField;
    qryCFOPSCFOP_DEVOLUCAO: TStringField;
    qryPaises: TUniQuery;
    qryPaisescodigo_pais: TStringField;
    qryPaisespais: TStringField;
    dsPaises: TDataSource;
    qryLogradouros: TUniQuery;
    qryLogradourosCEP: TStringField;
    qryLogradourosDiferenciador: TIntegerField;
    qryLogradourosEndereco: TStringField;
    qryLogradourosBairro: TStringField;
    qryLogradourosCidade: TStringField;
    qryLogradourosEstado: TStringField;
    qryLogradourosDDD: TStringField;
    qryLogradourosCodigoIBGE: TStringField;
    qryLogradourosCodigo_Pais: TStringField;
    dsLogradouros: TDataSource;
    qryConsPaises: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    dsConsPaises: TDataSource;
    qryConsLogradouros: TUniQuery;
    qryConsLogradourosCEP: TStringField;
    qryConsLogradourosDIFERENCIADOR: TIntegerField;
    qryConsLogradourosCODIGO_PAIS: TStringField;
    qryConsLogradourosENDERECO: TStringField;
    qryConsLogradourosBAIRRO: TStringField;
    qryConsLogradourosCIDADE: TStringField;
    qryConsLogradourosESTADO: TStringField;
    qryConsLogradourosDDD: TStringField;
    qryConsLogradourosCODIGOIBGE: TStringField;
    qryConsLogradourosPAIS: TStringField;
    dsConsLogradouros: TDataSource;
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
    UniTransaction1: TUniTransaction;
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
    qryConsCFOPsCFOP_CODIGO: TStringField;
    qryConsCFOPsCFOP_DEVOLUCAO: TStringField;
    qryConsCFOPsCFOP_DESCRICAO: TStringField;
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
    qryCSTCST_CODIGO: TStringField;
    qryCSTCST_DESCRICAO: TStringField;
    qryCSTCST_CODIGOINOVAR: TStringField;
    qryCSTCST_FATORINOVAR: TFloatField;
    qryConsCSTCST_CODIGO: TStringField;
    qryConsCSTCST_DESCRICAO: TStringField;
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
    qryParcelaDedutivelCST_FATORINOVAR: TFloatField;
    qryParcelaDedutivelNFI_PARCELADEDUTIVEL: TFloatField;
    qryParcelaDedutivelOPERACAO: TStringField;
    qryCFOPSCFOP_FATOR: TIntegerField;
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
    qryEntidadesENT_CODIGO: TIntegerField;
    qryEntidadesENT_CNPJ: TStringField;
    qryEntidadesENT_RAZAOSOCIAL: TStringField;
    qryEntidadesENT_NOMEFANTASIA: TStringField;
    qryEntidadesCEP: TStringField;
    qryEntidadesDIFERENCIADOR: TIntegerField;
    qryEntidadesENT_NUMERO: TStringField;
    qryEntidadesENT_COMPLEMENTO: TStringField;
    qryEntidadesENT_FONE_RES: TStringField;
    qryEntidadesENT_FONE_CEL: TStringField;
    qryEntidadesENT_FONE_FAX: TStringField;
    qryEntidadesENT_EMAIL: TStringField;
    qryEntidadesENT_WEBSITE: TStringField;
    qryEntidadesENT_RESPONSAVEL: TStringField;
    qryEntidadesENT_RESP_CPF: TStringField;
    qryEntidadesENT_RESP_CARGO: TStringField;
    qryEntidadesENT_RESP_EMAIL: TStringField;
    qryEntidadesFOR_TIER: TIntegerField;
    dsEntidades: TDataSource;
    qryConsEntidades: TUniQuery;
    IntegerField5: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    IntegerField6: TIntegerField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    IntegerField7: TIntegerField;
    dsConsEntidades: TDataSource;
    qryEntidadesENT_CLIENTE: TStringField;
    qryEntidadesENT_FORNECEDOR: TStringField;
    qryConsultaNFEntEntidade: TIntegerField;
    qryConsultaNFEntRazaoSocial: TStringField;
    qryNFEntENT_CODIGO: TIntegerField;
    qryNFEntItensENT_CODIGO: TIntegerField;
    qryNFEntItensCST_CODIGO: TStringField;
    qryConsultaNFSaiEntidade: TIntegerField;
    qryConsultaNFSaiRazaoSocial: TStringField;
    qryNFSaiENT_CODIGO: TIntegerField;
    qryNFSaiItensENT_CODIGO: TIntegerField;
    qryNFSaiItensCST_CODIGO: TStringField;
    qryParcelaDedutivelENT_RAZAOSOCIAL: TStringField;
    qryParcelaDedutivelCST_CODIGO: TStringField;
    qryParcDedutivelENT_RAZAOSOCIAL: TStringField;
    qryParcDedutivelCST_CODIGO: TStringField;
    qryProdutosMovimentacaoCST_CODIGO: TStringField;
    scptCalculaParcelaDedutivel: TUniScript;
    qryCFOPSCFOP_USO: TStringField;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure PostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure NovoRegistro(DataSet: TDataSet);
    procedure qryLogradourosAfterOpen(DataSet: TDataSet);
    procedure qryProdutosComposicaoNewRecord(DataSet: TDataSet);
    procedure qryNFEntNewRecord(DataSet: TDataSet);
    procedure qryNFEntItensNewRecord(DataSet: TDataSet);
    procedure qryNFEntItensAfterDelete(DataSet: TDataSet);
    procedure qryNFSaiNewRecord(DataSet: TDataSet);
    procedure qryNFSaiItensNewRecord(DataSet: TDataSet);
    procedure scptDeletaNFError(Sender: TObject; E: Exception; SQL: string; var Action: TErrorAction);
  private
    { Private declarations }
  published
    function VerificaEstruturaBancoDados: String;
  public
    { Public declarations }
    procedure CarregaCustoMedio(pCodigoProduto: Integer);
    procedure CarregaComposicao(pCodigoProduto: Integer);
    procedure CarregaMovimentacao(pCodigoProduto: Integer);
    procedure CarregaParcelaDedutivel(pCodigoProduto: Integer);
    procedure ApagaDocumento(pTipo: string; pNF, pEntidade: integer);
  end;

var
  DMIA: TDMIA;
  inRelatorioNFEnt: integer = 0;
  inRelatorioNFSai: integer = 0;

implementation

uses
  Funcoes, FuncoesDM, DefVar, DMConexao; // , frmBEProdutos

{$R *.dfm}

procedure TDMIA.ApagaDocumento(pTipo: string; pNF, pEntidade: integer);
var
  stMsg: string;
begin
  stMsg := 'NF de ' +iif(pTipo='S','Saída','Entrada') +' Nº ' +IntToStr(pNF) +' - Entidade: '+IntToStr(pEntidade);
  try
//    DMIA.qryDeletaNF.Transaction.StartTransaction;
    DMIA.scptDeletaNF.Params.ParseSQL(DMIA.scptDeletaNF.SQL.Text, True);
    DMIA.scptDeletaNF.Params.ParamValues['pnf_tipo']    := pTipo;
    DMIA.scptDeletaNF.Params.ParamValues['pnf_numero']  := pNF;
    DMIA.scptDeletaNF.Params.ParamValues['pent_codigo'] := pEntidade;
    DMIA.scptDeletaNF.Execute;
//    DMIA.qryDeletaNF.Transaction.Commit;
    //Log da Exclusão
    GravaLog('Excluido '+stMsg, 2);
  except
    on E: exception do
    begin
//      DMIA.qryDeletaNF.Transaction.Rollback;
      stMsg := 'Erro na exclusão da ' +stMsg;
      GravaLog(stMsg, 3);
      Application.MessageBox(  PChar(stMsg +E.Message), 'Erro', MB_ICONERROR + MB_OK);
    end;
  end;
end;

procedure TDMIA.CarregaComposicao(pCodigoProduto: Integer);
begin
  //Carrega Composição
  DMIA.qryProdutosComposicao.Close;
  DMIA.qryProdutosComposicao.ParamByName( 'pprdtcmp_codigo').AsInteger := pCodigoProduto;
  DMIA.qryProdutosComposicao.Open;
end;

procedure TDMIA.CarregaCustoMedio(pCodigoProduto: Integer);
begin
  //Carrega Custo Médio
  DMIA.qryProdutosCustoMedio.Close;
  DMIA.qryProdutosCustoMedio.ParamByName( 'pprdt_codigo').AsInteger := pCodigoProduto;
  DMIA.qryProdutosCustoMedio.Open;
end;

procedure TDMIA.CarregaMovimentacao(pCodigoProduto: Integer);
begin
  //Carrega Movimentação
  DMIA.qryProdutosMovimentacao.Close;
  DMIA.qryProdutosMovimentacao.ParamByName( 'pprdt_codigo').AsInteger := pCodigoProduto;
  DMIA.qryProdutosMovimentacao.Open;
end;

procedure TDMIA.CarregaParcelaDedutivel(pCodigoProduto: Integer);
begin
  //Carrega Movimentação
  DMIA.qryProdutosParcelaDedutivel.Close;
  DMIA.qryProdutosParcelaDedutivel.ParamByName( 'pprdt_codigo').AsInteger := pCodigoProduto;
  DMIA.qryProdutosParcelaDedutivel.Open;
end;

procedure TDMIA.DataModuleCreate(Sender: TObject);
begin
  //Altera tabela padrão de relatórios
  DMCNX.qryRelatorios.SQL.Text := 'select * from nuttz_relatorios order by Menu,MenuPai,Titulo';
  DMCNX.qryRelatoriosFR.SQL.Text := 'select * from nuttz_relatoriosfr where CODIGORELATORIO = :CodFR';

  //Define os relatórios de NF Entrada e NF Saída
  inRelatorioNFEnt := 0;
  inRelatorioNFSai := 0;
end;

procedure TDMIA.PostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  DMCNX.PostError(DataSet, E, Action);
end;

procedure TDMIA.qryLogradourosAfterOpen(DataSet: TDataSet);
begin
  DataSet.FieldByName('CEP').ValidChars := ['0'..'9'];
  DataSet.FieldByName('DDD').ValidChars := ['0'..'9'];
end;

procedure TDMIA.qryNFEntItensAfterDelete(DataSet: TDataSet);
var
  bmRegAtual: TBookmark;
begin
  bmRegAtual := DataSet.GetBookmark;
  DataSet.First;
  While Not DataSet.Eof do
  begin
    DataSet.Edit;
    qryNFEntItensNF_SEQ_LANCAMENTO.AsInteger := DataSet.RecNo;
    DataSet.Post;
    DataSet.Next;
  end;
  DataSet.GotoBookMark(bmRegAtual);
  DataSet.FreeBookmark(bmRegAtual);
end;

procedure TDMIA.qryNFEntItensNewRecord(DataSet: TDataSet);
begin
  qryNFEntItensNF_SEQ_LANCAMENTO.Value  := qryNFEntItens.RecordCount +1;
  qryNFEntItensNF_NUMERO.Value          := qryNFEntNF_NUMERO.AsInteger;
  qryNFEntItensENT_CODIGO.Value         := qryNFEntENT_CODIGO.AsInteger;
  qryNFEntItensNF_TIPO.Value            := qryNFEntNF_TIPO.AsString;
end;

procedure TDMIA.qryNFEntNewRecord(DataSet: TDataSet);
begin
  stFiltroExtra := 'where NF_TIPO = ''E''';
  DMCNX.NovoRecord(DataSet, 0);
  qryNFEntNF_TIPO.AsString := 'E';
  qryNFEntNF_OPERACAO.AsString := 'C';
  qryNFEntNF_DATAOPERACAO.AsDateTime := Now;
  ////qryNFEntNF_DEVOLUCAO.AsString := 'N';
  //qryPedidosUSUARIO_INCLUI.AsInteger := UsuID;
  //qryPedidosUSUARIO_ALTEROU.AsInteger := UsuID;
end;

procedure TDMIA.qryNFSaiItensNewRecord(DataSet: TDataSet);
begin
  qryNFSaiItensNF_SEQ_LANCAMENTO.Value  := qryNFSaiItens.RecordCount +1;
  qryNFSaiItensNF_NUMERO.Value          := qryNFSaiNF_NUMERO.AsInteger;
  qryNFSaiItensENT_CODIGO.Value         := qryNFSaiENT_CODIGO.AsInteger;
  qryNFSaiItensNF_TIPO.Value            := qryNFSaiNF_TIPO.AsString;
  { TODO :
Se mudar Código da Entidade ou Número do documento,
deve aplicar para todos os itens do documento.

Se for alteração, não permitir a alteração do número
do documento }
end;

procedure TDMIA.qryNFSaiNewRecord(DataSet: TDataSet);
begin
  stFiltroExtra := 'where NF_TIPO = ''S''';
  DMCNX.NovoRecord(DataSet, 0);
  qryNFSaiNF_TIPO.AsString := 'S';
  qryNFEntNF_OPERACAO.AsString := 'V';
  qryNFSaiNF_DATAOPERACAO.AsDateTime := Now;
  qryNFSaiNF_DEVOLUCAO.AsString := 'N';
  //qryPedidosUSUARIO_INCLUI.AsInteger := UsuID;
  //qryPedidosUSUARIO_ALTEROU.AsInteger := UsuID;
end;

procedure TDMIA.qryProdutosComposicaoNewRecord(DataSet: TDataSet);
begin
  DMIA.qryProdutosComposicaoPRDTCMP_CODIGO.AsInteger := DMIA.qryProdutosPRDT_CODIGO.AsInteger;
end;

procedure TDMIA.scptDeletaNFError(Sender: TObject; E: Exception; SQL: string; var Action: TErrorAction);
begin
  raise Exception.Create(E.Message);
end;

procedure TDMIA.NovoRegistro(DataSet: TDataSet);
begin
  DMCNX.NovoRecord(DataSet, 0);
end;

function TDMIA.VerificaEstruturaBancoDados: string;
begin
  //RELATORIOS
  DMCNX.CriarTabela('NUTTZ_RELATORIOS',
    'Create table NUTTZ_RELATORIOS ('+LFCR+
    '  CODIGORELATORIO Number(7) NOT NULL,'+LFCR+
    '  MENU Varchar2(25) NOT NULL,'+LFCR+
    '  MENUPAI Varchar2(25),'+LFCR+
    '  TITULO Varchar2(50),'+LFCR+
    '  TELA Varchar2(25),'+LFCR+
    '  RELATORIO Varchar2(255),'+LFCR+
    '  MODULO Varchar2(100),'+LFCR+
    '  CRIACAO Date,'+LFCR+
    '  CRIACAO_USUARIO Number(5),'+LFCR+
    '  ALTERACAO Date,'+LFCR+
    '  ALTERACAO_USUARIO Number(5),'+LFCR+
    'Constraint pk_NUTTZ_RELATORIOS primary key (CODIGORELATORIO))', Result);

  //RELATORIOSFR
  DMCNX.CriarTabela('NUTTZ_RELATORIOSFR',
    'Create table NUTTZ_RELATORIOSFR ('+LFCR+
    '  CODIGORELATORIO Number(7) NOT NULL,'+LFCR+
    '  FR CLob,'+LFCR+
    'Constraint pk_NUTTZ_RELATORIOSFR primary key (CODIGORELATORIO))', Result,
      //Constraint RELATORIOS
      'Constraint RELATORIOS_id_RELATORIOS_FR',
      'Alter table NUTTZ_RELATORIOSFR'+LFCR+
      '  add Constraint RELATORIOS_id_RELATORIOS_FR foreign key (CODIGORELATORIO)'+LFCR+
      '  references NUTTZ_RELATORIOS (CODIGORELATORIO) on delete cascade');

  //NUTTZ_SCRIPTS
  DMCNX.CriarTabela('NUTTZ_SCRIPTS',
    'Create table NUTTZ_SCRIPTS ('+LFCR+
    '  NOMEARQUIVO Varchar2(250) NOT NULL,'+LFCR+
    '  EXECUTADOCOMSUCESSO Number(1),'+LFCR+
    '  DATAEXECUCAO Date,'+LFCR+
    '  USERIP Varchar2(15),'+LFCR+
    '  MENSAGEM_ERRO Varchar2(50),'+LFCR+
    'Constraint pk_NUTTZ_SCRIPTS primary key (NOMEARQUIVO))', Result);

  //PAISES
  DMCNX.CriarTabela('NUTTZ_PAISES',
    'Create table NUTTZ_PAISES ('+LFCR+
    '  CODIGO_PAIS Char(5) NOT NULL,'+LFCR+
    '  PAIS Varchar2(100) NOT NULL,'+LFCR+
    'Constraint pk_NUTTZ_PAISES primary key (CODIGO_PAIS))', Result);

  //LOGRADOUROS
  DMCNX.CriarTabela('NUTTZ_LOGRADOUROS',
    'Create table NUTTZ_LOGRADOUROS ('+LFCR+
    '  CEP Char(8) Default ''00000000'' NOT NULL,'+LFCR+
    '  DIFERENCIADOR Number(5) Default 0 NOT NULL,'+LFCR+
    '  CODIGO_PAIS Char(5) Default ''01058'' NOT NULL,'+LFCR+
    '  ENDERECO Varchar2(70),'+LFCR+
    '  BAIRRO Varchar2(40),'+LFCR+
    '  CIDADE Varchar2(40),'+LFCR+
    '  ESTADO Char(2) Default ''SP'' NOT NULL,'+LFCR+
    '  DDD Char(3) Default ''011'','+LFCR+
    '  CODIGOIBGE Varchar2(7),'+LFCR+
    'Constraint pk_NUTTZ_LOGRADOUROS primary key (CEP,DIFERENCIADOR))', Result,
      //Constraint PAISES
      'Constraint PAISES_nid_LOGRADOUROS',
      'Alter table NUTTZ_LOGRADOUROS'+LFCR+
      '  add Constraint PAISES_nid_LOGRADOUROS foreign key (CODIGO_PAIS)'+LFCR+
      '  references NUTTZ_PAISES (CODIGO_PAIS)');

  //ENTIDADES
  DMCNX.CriarTabela('NUTTZ_ENTIDADES',
    'Create table NUTTZ_ENTIDADES ('+LFCR+
    '  ENT_CODIGO Number(6) Default 0 NOT NULL,'+LFCR+
    '  ENT_CNPJ Varchar2(14) NOT NULL,'+LFCR+         //12.345.678/9012-34
    '  ENT_RAZAOSOCIAL Varchar2(100) NOT NULL,'+LFCR+
    '  ENT_NOMEFANTASIA Varchar2(80) NOT NULL,'+LFCR+
    '  ENT_CLIENTE Char(1) Default ''N'' NOT NULL,'+LFCR+
    '  ENT_FORNECEDOR Char(1) Default ''N'' NOT NULL,'+LFCR+
    '  CEP Char(8) Default ''00000000'' NOT NULL,'+LFCR+
    '  DIFERENCIADOR Number(5) Default 0 NOT NULL,'+LFCR+
    '  ENT_NUMERO Varchar2(5),'+LFCR+
    '  ENT_COMPLEMENTO Varchar2(40),'+LFCR+
    '  ENT_FONE_RES Varchar2(16),'+LFCR+              //(23) 67890-2345
    '  ENT_FONE_CEL Varchar2(16),'+LFCR+
    '  ENT_FONE_FAX Varchar2(16),'+LFCR+
    '  ENT_EMAIL Varchar2(50),'+LFCR+
    '  ENT_WEBSITE Varchar2(100),'+LFCR+
    '  ENT_RESPONSAVEL Varchar2(60),'+LFCR+
    '  ENT_RESP_CPF Varchar2(11),'+LFCR+              //123.456.789-01
    '  ENT_RESP_CARGO Varchar2(40),'+LFCR+
    '  ENT_RESP_EMAIL Varchar2(50),'+LFCR+
    '  FOR_TIER Number(1) Default 1 NOT NULL,'+LFCR+
    'Constraint pk_NUTTZ_ENTIDADES primary key (ENT_CODIGO))', Result,
      //Constraint CEP
      'Constraint LOGRADOUROS_nid_ENTIDADES',
      'Alter table NUTTZ_ENTIDADES'+LFCR+
      '  add Constraint LOGRADOUROS_nid_ENTIDADES foreign key (CEP,DIFERENCIADOR)'+LFCR+
      '  references NUTTZ_LOGRADOUROS (CEP,DIFERENCIADOR)');

  //CFOPS
  DMCNX.CriarTabela('NUTTZ_CFOPS',
    'Create table NUTTZ_CFOPS ('+LFCR+
    '  CFOP_CODIGO Char(4) NOT NULL,'+LFCR+
    '  CFOP_DESCRICAO Varchar2(250) NOT NULL,'+LFCR+
    '  CFOP_DEVOLUCAO Char(1) Default ''N'' NOT NULL,'+LFCR+
    '  CFOP_USO CHAR(1) DEFAULT ''D'' NOT NULL Constraint CHK_NUTTZ_CFOPS_USO Check (CFOP_USO in (''I'',''E'',''D'',''F'',''S'')),'+LFCR+
    '  CFOP_FATOR Number Default 1 NOT NULL,'+LFCR+
    'Constraint pk_NUTTZ_CFOPS primary key (CFOP_CODIGO))', Result);

  //CST
  DMCNX.CriarTabela('NUTTZ_CST',
    'Create table NUTTZ_CST ('+LFCR+
    '  CST_CODIGO Char(3) NOT NULL,'+LFCR+
    '  CST_DESCRICAO Varchar2(150) NOT NULL,'+LFCR+
    '  CST_CODIGOINOVAR Char(1) Default ''0'' NOT NULL Constraint CHECK_CST_CODIGOINOVAR Check (CST_CODIGOINOVAR in (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'')),'+LFCR+
    '  CST_FATORINOVAR Number(6,2) DEFAULT 0.00 NOT NULL,'+LFCR+
    'Constraint pk_NUTTZ_CST primary key (CST_CODIGO))', Result);

  //PRODUTOS
  DMCNX.CriarTabela('NUTTZ_PRODUTOS',
    'Create table NUTTZ_PRODUTOS ('+LFCR+
    '  PRDT_CODIGO Number(6) NOT NULL,'+LFCR+
    '  PRDT_CODIGOALTERNATIVO Varchar2(20),'+LFCR+
    '  PRDT_DESCRICAO Varchar2(250) NOT NULL,'+LFCR+
    '  PRDT_UNIDADE Char(2) NOT NULL,'+LFCR+
    '  PRDT_TIPO Char(1) Default ''P'' NOT NULL,'+LFCR+
    '  PRDT_TEMCOMPOSICAO Char(1) Default ''N'' NOT NULL,'+LFCR+
    'Constraint pk_NUTTZ_PRODUTOS primary key (PRDT_CODIGO))', Result);

  //PRODUTOSCOMPOSICAO
  DMCNX.CriarTabela('NUTTZ_PRODUTOSCOMPOSICAO',
    'Create table NUTTZ_PRODUTOSCOMPOSICAO ('+LFCR+
    '  PRDTCMP_CODIGO Number(6) NOT NULL,'+LFCR+
    '  PRDT_CODIGO Number(6) NOT NULL,'+LFCR+
    '  PRDT_QTDEUTILIZADA Number(8,4) NOT NULL,'+LFCR+
    'Constraint pk_NUTTZ_PRODUTOSCOMPOSICAO primary key (PRDTCMP_CODIGO,PRDT_CODIGO))', Result,
      //Constraint PRODUTOS
      'Constraint PRODUTOS_id_PROD_COMPOSICAO',
      'Alter table NUTTZ_PRODUTOSCOMPOSICAO'+LFCR+
      '  add Constraint PRODUTOS_id_PROD_COMPOSICAO foreign key (PRDT_CODIGO)'+LFCR+
      '  references NUTTZ_PRODUTOS (PRDT_CODIGO)');

  //PRODUTOSCUSTOMEDIO
  DMCNX.CriarTabela('NUTTZ_PRODUTOSCUSTOMEDIO',
    'Create table NUTTZ_PRODUTOSCUSTOMEDIO ('+LFCR+
    '  PRDT_CODIGO Number(6) NOT NULL,'+LFCR+
    '  PRDTCM_PERIODO Date NOT NULL,'+LFCR+
    '  PRDTCM_CUSTOMEDIO Number(12,4) DEFAULT 0.00 NOT NULL,'+LFCR+
    'Constraint pk_NUTTZ_PRODUTOSCUSTOMEDIO primary key (PRDT_CODIGO))', Result,
      //Constraint PRODUTOS
      'Constraint PRODUTOS_id_PROD_CUSTOMEDIO',
      'Alter table NUTTZ_PRODUTOSCUSTOMEDIO'+LFCR+
      '  add Constraint PRODUTOS_id_PROD_CUSTOMEDIO foreign key (PRDT_CODIGO)'+LFCR+
      '  references NUTTZ_PRODUTOS (PRDT_CODIGO)');

  //PRODUTOSPARCELADEDUTIVEL
  DMCNX.CriarTabela('NUTTZ_PRODUTOSPARCELADEDUTIVEL',
    'Create table NUTTZ_PRODUTOSPARCELADEDUTIVEL ('+LFCR+
    '  PRDT_CODIGO Number(6) NOT NULL,'+LFCR+
    '  PRDTPD_ANO Number(4) DEFAULT 0 NOT NULL,'+LFCR+
    '  PRDTPD_MES Number(2) DEFAULT 0 NOT NULL,'+LFCR+
    '  PRDTPD_VALORUNITARIO Number(12,4) DEFAULT 0.00 NOT NULL,'+LFCR+
    'Constraint pk_NUTTZ_PRODUTOSPARCELADEDUTI primary key (PRDT_CODIGO,PRDTPD_ANO,PRDTPD_MES))', Result,
      //Constraint PRODUTOS
      'Constraint PRODUTOS_id_PARCDEDUTIVEL',
      'Alter table NUTTZ_PRODUTOSPARCELADEDUTIVEL'+LFCR+
      '  add Constraint PRODUTOS_id_PARCDEDUTIVEL foreign key (PRDT_CODIGO)'+LFCR+
      '  references NUTTZ_PRODUTOS (PRDT_CODIGO)');

  //NOTAFISCAIS
  DMCNX.CriarTabela('NUTTZ_NOTASFISCAIS',
    'Create table NUTTZ_NOTASFISCAIS ('+LFCR+
    '  NF_TIPO Char(1) Default ''S'' NOT NULL,'+LFCR+
    '  NF_NUMERO Number(7) NOT NULL,'+LFCR+
    '  ENT_CODIGO Number(5) Default 0,'+LFCR+
    '  NF_DEVOLUCAO Char(1) Default ''N'' NOT NULL,'+LFCR+
    '  NF_OPERACAO Char(1) Default ''V'' NOT NULL CONSTRAINT CHK_NF_OPERACAO CHECK (NF_OPERACAO in (''C'',''V'',''I'',''E'')),'+LFCR+
    '  NF_DATAOPERACAO Date NOT NULL,'+LFCR+
    '  NF_VALORMERCADORIA Number(18,2) Default 0.00,'+LFCR+
    '  NF_VALORICMS Number(18,2) Default 0.00,'+LFCR+
    '  NF_VALORIPI Number(18,2) Default 0.00,'+LFCR+
    '  NF_VALORPIS Number(18,2) Default 0.00,'+LFCR+
    '  NF_VALORCOFINS Number(18,2) Default 0.00,'+LFCR+
    '  NF_VALORII Number(18,2) Default 0.00,'+LFCR+
    '  NF_VALOROUTRASDESPESAS Number(18,2) Default 0.00,'+LFCR+
    '  NF_VALORTOTAL Number(18,2) Default 0.00,'+LFCR+
    '  NF_PARCELADEDUTIVEL Number(18,2) Default 0.00,'+LFCR+
    '  NF_STATUS Number(1) Default 0 NOT NULL,'+LFCR+
    'Constraint pk_NUTTZ_NOTASFISCAIS primary key (NF_TIPO,NF_NUMERO,ENT_CODIGO))', Result,
      //Constraint ENTIDADES
      'Constraint ENTIDADES, CFOPS',
      'Alter table NUTTZ_NOTASFISCAIS'+LFCR+
      '  add Constraint ENTIDADES_id_NOTASFISCAIS foreign key (ENT_CODIGO)'+LFCR+
      '  references NUTTZ_ENTIDADES (ENT_CODIGO)');

  //NOTAFISCAIS_ITENS
  DMCNX.CriarTabela('NUTTZ_NOTASFISCAIS_ITENS',
    'Create table NUTTZ_NOTASFISCAIS_ITENS ('+LFCR+
    '  NF_TIPO Char(1) Default ''S'' NOT NULL,'+LFCR+
    '  NF_NUMERO Number(7) NOT NULL,'+LFCR+
    '  ENT_CODIGO Number(5) Default 0,'+LFCR+
    '  NF_SEQ_LANCAMENTO Number(4) Default 0,'+LFCR+
    '  PRDT_CODIGO Number(6) NOT NULL,'+LFCR+
    '  CST_CODIGO Char(3) NOT NULL,'+LFCR+
    '  CFOP_CODIGO Char(4) NOT NULL,'+LFCR+
    '  NFI_DESCRICAO Varchar2(250) NOT NULL,'+LFCR+
    '  NFI_QUANTIDADE Number(7,2) Default 0.00,'+LFCR+
    '  NFI_VALORMERCADORIA Number(18,2) Default 0.00,'+LFCR+
    '  NFI_VALORICMS Number(18,2) Default 0.00,'+LFCR+
    '  NFI_VALORIPI Number(18,2) Default 0.00,'+LFCR+
    '  NFI_VALORPIS Number(18,2) Default 0.00,'+LFCR+
    '  NFI_VALORCOFINS Number(18,2) Default 0.00,'+LFCR+
    '  NFI_VALORII Number(18,2) Default 0.00,'+LFCR+
    '  NFI_VALOROUTRASDESPESAS Number(18,2) Default 0.00,'+LFCR+
    '  NFI_VALORTOTAL Number(18,2) Default 0.00,'+LFCR+
    '  NFI_PARCELADEDUTIVEL Number(18,2) Default 0,'+LFCR+
    'Constraint pk_NUTTZ_NOTASFISCAIS_ITENS primary key (NF_TIPO,NF_NUMERO,ENT_CODIGO,NF_SEQ_LANCAMENTO))', Result,
      //Constraint CFOPS
      'Constraint CFOPS, CST, PRODUTOS',
      'Alter table NUTTZ_NOTASFISCAIS_ITENS'+LFCR+
      '  add Constraint CFOP_id_NF_ITENS foreign key (CFOP_CODIGO)'+LFCR+
      '  references NUTTZ_CFOPS (CFOP_CODIGO);'+LFCR+
      //Constraint CST
      'Alter table NUTTZ_NOTASFISCAIS_ITENS'+LFCR+
      '  add Constraint CST_id_NF_ITENS foreign key (CST_CODIGO)'+LFCR+
      '  references NUTTZ_CST (CST_CODIGO);'+LFCR+
      //Constraint PRODUTOS
      'Alter table NUTTZ_NOTASFISCAIS_ITENS'+LFCR+
      '  add Constraint PRODUTOS_id_NF_ITENS foreign key (PRDT_CODIGO)'+LFCR+
      '  references NUTTZ_PRODUTOS (PRDT_CODIGO);');
end;

{*

  QT        = Somatória da quantidade
  Val.Merc. = Somatória dos valores das mercadorias
  Custo Médio = Val.Merc. / QT

  % CST = 1, 2, 6, 7 e 8  100%
          3 e 4            50%
          0 e 5            0%
  Parcela Dedutível = (Somatória de Val.Merc + ICMS + PIS + COFINS) * CST_FATORINOVAR / 100

*}
end.