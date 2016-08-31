object DMIA: TDMIA
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 496
  Width = 913
  object qryCFOPS: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select * from nuttz_cfops order by cfop_codigo')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnPostError = PostError
    Left = 332
    Top = 11
    object qryCFOPSCFOP_CODIGO: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CFOP_CODIGO'
      Required = True
      EditMask = '9999;0; '
      FixedChar = True
      Size = 4
    end
    object qryCFOPSCFOP_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CFOP_DESCRICAO'
      Required = True
      Size = 250
    end
    object qryCFOPSCFOP_DEVOLUCAO: TStringField
      DefaultExpression = #39'N'#39
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'CFOP_DEVOLUCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCFOPSCFOP_FATOR: TIntegerField
      DefaultExpression = '1'
      DisplayLabel = 'Fator'
      DisplayWidth = 2
      FieldName = 'CFOP_FATOR'
      Visible = False
    end
    object qryCFOPSCFOP_USO: TStringField
      DefaultExpression = #39'D'#39
      DisplayLabel = 'USO'
      FieldName = 'CFOP_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsCFOPS: TDataSource
    DataSet = qryCFOPS
    Left = 343
    Top = 22
  end
  object qryPaises: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select * from nuttz_paises order by codigo_pais')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnPostError = PostError
    Left = 31
    Top = 11
    object qryPaisescodigo_pais: TStringField
      DisplayLabel = 'C'#243'digo Pa'#237's'
      FieldName = 'codigo_pais'
      Required = True
      EditMask = '99999;0; '
      FixedChar = True
      Size = 5
    end
    object qryPaisespais: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'pais'
      Required = True
      Size = 100
    end
  end
  object dsPaises: TDataSource
    DataSet = qryPaises
    Left = 42
    Top = 22
  end
  object qryLogradouros: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select * from nuttz_logradouros order by cep,diferenciador')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.DefaultValues = True
    AfterOpen = qryLogradourosAfterOpen
    OnDeleteError = PostError
    OnPostError = PostError
    Left = 131
    Top = 11
    object qryLogradourosCEP: TStringField
      DefaultExpression = #39'00000000'#39' '
      DisplayWidth = 9
      FieldName = 'CEP'
      Required = True
      EditMask = '99999-999;0; '
      FixedChar = True
      Size = 8
    end
    object qryLogradourosDiferenciador: TIntegerField
      DefaultExpression = '0 '
      DisplayWidth = 1
      FieldName = 'Diferenciador'
      ReadOnly = True
      Required = True
    end
    object qryLogradourosEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'Endereco'
      Size = 70
    end
    object qryLogradourosBairro: TStringField
      FieldName = 'Bairro'
      Size = 40
    end
    object qryLogradourosCidade: TStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object qryLogradourosEstado: TStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'SP'#39' '
      FieldName = 'Estado'
      Required = True
      EditMask = '>cc;0; '
      FixedChar = True
      Size = 2
    end
    object qryLogradourosDDD: TStringField
      DefaultExpression = #39'011'#39
      FieldName = 'DDD'
      EditMask = '999;0; '
      FixedChar = True
      Size = 3
    end
    object qryLogradourosCodigoIBGE: TStringField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'CodigoIBGE'
      Size = 7
    end
    object qryLogradourosCodigo_Pais: TStringField
      DefaultExpression = #39'01058'#39
      DisplayLabel = 'C'#243'digo Pa'#237's'
      FieldName = 'Codigo_Pais'
      Required = True
      EditMask = '99999;0; '
      FixedChar = True
      Size = 5
    end
  end
  object dsLogradouros: TDataSource
    DataSet = qryLogradouros
    Left = 142
    Top = 25
  end
  object qryConsPaises: TUniQuery
    Tag = 9999
    SQLRefresh.Strings = (
      'SELECT CODIGO_PAIS, PAIS FROM PAISES'
      'WHERE'
      '  CODIGO_PAIS = :CODIGO_PAIS')
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select * from nuttz_paises order by codigo_pais')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.DefaultValues = True
    Left = 31
    Top = 77
    object StringField1: TStringField
      DisplayLabel = 'C'#243'digo Pa'#237's'
      FieldName = 'codigo_pais'
      Required = True
      EditMask = '99999;0; '
      FixedChar = True
      Size = 5
    end
    object StringField2: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'pais'
      Required = True
      Size = 100
    end
  end
  object dsConsPaises: TDataSource
    DataSet = qryConsPaises
    Left = 51
    Top = 90
  end
  object qryConsLogradouros: TUniQuery
    KeyFields = 'CEP;DIFERENCIADOR'
    SQLInsert.Strings = (
      'INSERT INTO LOGRADOUROS'
      
        '  (CEP, DIFERENCIADOR, CODIGO_PAIS, ENDERECO, BAIRRO, CIDADE, ES' +
        'TADO, DDD, CODIGOIBGE)'
      'VALUES'
      
        '  (:CEP, :DIFERENCIADOR, :CODIGO_PAIS, :ENDERECO, :BAIRRO, :CIDA' +
        'DE, :ESTADO, :DDD, :CODIGOIBGE)')
    SQLDelete.Strings = (
      'DELETE FROM LOGRADOUROS'
      'WHERE'
      
        '  CEP = :Old_CEP AND DIFERENCIADOR = :Old_DIFERENCIADOR AND CODI' +
        'GO_PAIS = :Old_CODIGO_PAIS')
    SQLUpdate.Strings = (
      'UPDATE LOGRADOUROS'
      'SET'
      
        '  CEP = :CEP, DIFERENCIADOR = :DIFERENCIADOR, CODIGO_PAIS = :COD' +
        'IGO_PAIS, ENDERECO = :ENDERECO, BAIRRO = :BAIRRO, CIDADE = :CIDA' +
        'DE, ESTADO = :ESTADO, DDD = :DDD, CODIGOIBGE = :CODIGOIBGE'
      'WHERE'
      
        '  CEP = :Old_CEP AND DIFERENCIADOR = :Old_DIFERENCIADOR AND CODI' +
        'GO_PAIS = :Old_CODIGO_PAIS')
    SQLLock.Strings = (
      'SELECT NULL FROM LOGRADOUROS'
      'WHERE'
      
        'CEP = :Old_CEP AND DIFERENCIADOR = :Old_DIFERENCIADOR AND CODIGO' +
        '_PAIS = :Old_CODIGO_PAIS'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT CEP, DIFERENCIADOR, CODIGO_PAIS, ENDERECO, BAIRRO, CIDADE' +
        ', ESTADO, DDD, CODIGOIBGE FROM LOGRADOUROS'
      'WHERE'
      
        '  CEP = :CEP AND DIFERENCIADOR = :DIFERENCIADOR AND CODIGO_PAIS ' +
        '= :CODIGO_PAIS')
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'SELECT '
      '  nuttz_LOGRADOUROS.CEP,'
      '  nuttz_LOGRADOUROS.DIFERENCIADOR,'
      '  nuttz_LOGRADOUROS.CODIGO_PAIS,'
      '  nuttz_LOGRADOUROS.ENDERECO,'
      '  nuttz_LOGRADOUROS.BAIRRO,'
      '  nuttz_LOGRADOUROS.CIDADE,'
      '  nuttz_LOGRADOUROS.ESTADO,'
      '  nuttz_LOGRADOUROS.DDD,'
      '  nuttz_LOGRADOUROS.CODIGOIBGE,'
      '  nuttz_PAISES.PAIS'
      'FROM'
      '  nuttz_LOGRADOUROS'
      
        '  LEFT OUTER JOIN nuttz_PAISES ON (nuttz_LOGRADOUROS.CODIGO_PAIS' +
        ' = nuttz_PAISES.CODIGO_PAIS)'
      'ORDER BY'
      '  nuttz_LOGRADOUROS.CEP,'
      '  nuttz_LOGRADOUROS.DIFERENCIADOR')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.DefaultValues = True
    Left = 132
    Top = 77
    object qryConsLogradourosCEP: TStringField
      DefaultExpression = #39'00000000'#39' '
      FieldName = 'CEP'
      Required = True
      FixedChar = True
      Size = 8
    end
    object qryConsLogradourosDIFERENCIADOR: TIntegerField
      DefaultExpression = '0 '
      FieldName = 'DIFERENCIADOR'
      Required = True
    end
    object qryConsLogradourosCODIGO_PAIS: TStringField
      DefaultExpression = #39'01058'#39#10
      FieldName = 'CODIGO_PAIS'
      Required = True
      FixedChar = True
      Size = 5
    end
    object qryConsLogradourosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 70
    end
    object qryConsLogradourosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object qryConsLogradourosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qryConsLogradourosESTADO: TStringField
      DefaultExpression = #39'SP'#39' '
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryConsLogradourosDDD: TStringField
      DefaultExpression = #39'011'#39
      FieldName = 'DDD'
      FixedChar = True
      Size = 3
    end
    object qryConsLogradourosCODIGOIBGE: TStringField
      DefaultExpression = 'null'#10
      FieldName = 'CODIGOIBGE'
      Size = 7
    end
    object qryConsLogradourosPAIS: TStringField
      FieldName = 'PAIS'
      ReadOnly = True
      Size = 100
    end
  end
  object dsConsLogradouros: TDataSource
    DataSet = qryConsLogradouros
    Left = 148
    Top = 93
  end
  object qryProdutos: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select * from nuttz_produtos order by prdt_codigo')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    BeforePost = NovoRegistro
    OnDeleteError = PostError
    OnNewRecord = NovoRegistro
    OnPostError = PostError
    Left = 512
    Top = 11
    object qryProdutosPRDT_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'PRDT_CODIGO'
      Required = True
    end
    object qryProdutosPRDT_CODIGOALTERNATIVO: TStringField
      DisplayLabel = 'C'#243'digo Alternativo'
      FieldName = 'PRDT_CODIGOALTERNATIVO'
      Required = True
    end
    object qryProdutosPRDT_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRDT_DESCRICAO'
      Required = True
      Size = 250
    end
    object qryProdutosPRDT_UNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'PRDT_UNIDADE'
      Required = True
      EditMask = '>AA;0; '
      FixedChar = True
      Size = 2
    end
    object qryProdutosPRDT_TIPO: TStringField
      DefaultExpression = #39'P'#39' '
      DisplayLabel = 'Tipo'
      FieldName = 'PRDT_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryProdutosPRDT_TEMCOMPOSICAO: TStringField
      DefaultExpression = #39'N'#39' '
      DisplayLabel = 'Tem Composi'#231#227'o'
      FieldName = 'PRDT_TEMCOMPOSICAO'
      Required = True
      EditMask = '>a;0; '
      FixedChar = True
      Size = 1
    end
  end
  object dsProdutos: TDataSource
    DataSet = qryProdutos
    Left = 523
    Top = 22
  end
  object qryProdutosComposicao: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'SELECT'
      '  c.PRDTCMP_CODIGO,'
      '  c.PRDT_CODIGO,'
      '  p.PRDT_DESCRICAO,'
      '  c.PRDT_QTDEUTILIZADA'
      'FROM'
      '  nuttz_produtoscomposicao c'
      '  INNER JOIN nuttz_produtos p ON (c.PRDT_CODIGO = p.PRDT_CODIGO)'
      'WHERE'
      '  c.prdtcmp_codigo  = :pprdtcmp_codigo '
      'ORDER BY'
      '  c.prdtcmp_codigo,'
      '  c.prdt_codigo')
    CachedUpdates = True
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnNewRecord = qryProdutosComposicaoNewRecord
    OnPostError = PostError
    Left = 512
    Top = 76
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pprdtcmp_codigo'
        ParamType = ptInput
        Value = 0
      end>
    object qryProdutosComposicaoPRDTCMP_CODIGO: TIntegerField
      DisplayLabel = 'Produto Pai'
      FieldName = 'PRDTCMP_CODIGO'
      Required = True
    end
    object qryProdutosComposicaoPRDT_CODIGO: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRDT_CODIGO'
      Required = True
    end
    object qryProdutosComposicaoPRDT_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRDT_DESCRICAO'
      Size = 250
    end
    object qryProdutosComposicaoPRDT_QTDEUTILIZADA: TFloatField
      DisplayLabel = 'Qtde Utilizada'
      FieldName = 'PRDT_QTDEUTILIZADA'
      Required = True
    end
  end
  object dsProdutosComposicao: TDataSource
    DataSet = qryProdutosComposicao
    Left = 523
    Top = 87
  end
  object qryProdutosCustoMedio: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  nuttz_produtoscustomedio'
      'where'
      '  prdt_codigo = :pprdt_codigo'
      'order by'
      '  prdt_codigo, prdtcm_periodo desc')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnPostError = PostError
    Left = 512
    Top = 146
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pprdt_codigo'
        ParamType = ptInput
        Value = 0
      end>
    object qryProdutosCustoMedioPRDT_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRDT_CODIGO'
      Required = True
    end
    object qryProdutosCustoMedioPRDTCM_PERIODO: TDateTimeField
      DisplayLabel = 'Per'#237'odo'
      FieldName = 'PRDTCM_PERIODO'
      Required = True
    end
    object qryProdutosCustoMedioPRDTCM_CUSTOMEDIO: TFloatField
      DefaultExpression = '0 '
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'PRDTCM_CUSTOMEDIO'
      Required = True
    end
  end
  object dsProdutosCustoMedio: TDataSource
    DataSet = qryProdutosCustoMedio
    Left = 523
    Top = 157
  end
  object qryConsProdutos: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select'
      '  PRDT_CODIGO,'
      '  PRDT_CODIGOALTERNATIVO,'
      '  PRDT_TIPO,'
      '  PRDT_DESCRICAO'
      'from'
      '  NUTTZ_PRODUTOS'
      'where'
      '  (PRDT_CODIGO = :pPRDT_CODIGO) '
      '  OR (:pPRDT_CODIGO=0)')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.DefaultValues = True
    Left = 512
    Top = 337
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pPRDT_CODIGO'
        ParamType = ptInput
        Value = 0
      end>
    object qryConsProdutosPRDT_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRDT_CODIGO'
      Required = True
    end
    object qryConsProdutosPRDT_CODIGOALTERNATIVO: TStringField
      DisplayLabel = 'C'#243'digo Alternativo'
      FieldName = 'PRDT_CODIGOALTERNATIVO'
      Required = True
    end
    object qryConsProdutosPRDT_TIPO: TStringField
      DefaultExpression = #39'P'#39' '
      DisplayLabel = 'Tipo'
      FieldName = 'PRDT_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryConsProdutosPRDT_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRDT_DESCRICAO'
      Required = True
      Size = 250
    end
  end
  object dsConsProdutos: TDataSource
    DataSet = qryConsProdutos
    Left = 528
    Top = 348
  end
  object UniTransaction1: TUniTransaction
    DefaultConnection = DMCNX.ucCNX
    Left = 31
    Top = 295
  end
  object qryConsultaNFEnt: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'SELECT '
      '  N.NF_NUMERO AS "Nota Fiscal",'
      '  N.NF_STATUS AS "Status",'
      '  N.NF_DEVOLUCAO AS "Devolucao",'
      '  N.NF_OPERACAO AS "Operacao",'
      '  N.NF_DATAOPERACAO AS "Data Operacao",'
      '  N.NF_VALORMERCADORIA AS "Valor Mercadorias",'
      '  N.NF_VALORICMS AS "ICMS",'
      '  N.NF_VALORIPI AS "IPI",'
      '  N.NF_VALORPIS AS "PIS",'
      '  N.NF_VALORCOFINS AS "COFINS",'
      '  N.NF_VALORII AS "Importacao",'
      '  N.NF_VALOROUTRASDESPESAS AS "Outras Desp.",'
      '  N.NF_VALORTOTAL AS "Valor Total NF",'
      '  N.ENT_CODIGO AS "Entidade",'
      '  F.ENT_RAZAOSOCIAL AS "Razao Social"'
      'FROM'
      '  NUTTZ_NOTASFISCAIS N'
      
        '  LEFT OUTER JOIN NUTTZ_ENTIDADES F ON (N.ENT_CODIGO = F.ENT_COD' +
        'IGO)'
      'WHERE'
      '  (N.NF_DATAOPERACAO BETWEEN :PDTAINI AND :PDTAFIM)'
      '  AND (N.NF_TIPO = '#39'E'#39')'
      'ORDER BY'
      '  N.NF_DATAOPERACAO,'
      '  N.NF_NUMERO')
    Options.AutoPrepare = True
    OnDeleteError = PostError
    OnPostError = PostError
    Left = 612
    Top = 12
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'PDTAINI'
        ParamType = ptInput
        Value = 41970d
      end
      item
        DataType = ftDateTime
        Name = 'PDTAFIM'
        ParamType = ptInput
        Value = 42004d
      end>
    object qryConsultaNFEntNotaFiscal: TIntegerField
      FieldName = 'Nota Fiscal'
      Required = True
    end
    object qryConsultaNFEntStatus: TIntegerField
      DisplayWidth = 1
      FieldName = 'Status'
      Required = True
    end
    object qryConsultaNFEntDevolucao: TStringField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'Devolucao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryConsultaNFEntOperacao: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'Operacao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryConsultaNFEntDataOperacao: TDateTimeField
      DisplayLabel = 'Data Opera'#231#227'o'
      FieldName = 'Data Operacao'
      Required = True
    end
    object qryConsultaNFEntValorMercadorias: TFloatField
      FieldName = 'Valor Mercadorias'
    end
    object qryConsultaNFEntICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qryConsultaNFEntIPI: TFloatField
      FieldName = 'IPI'
    end
    object qryConsultaNFEntPIS: TFloatField
      FieldName = 'PIS'
    end
    object qryConsultaNFEntCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qryConsultaNFEntImportacao: TFloatField
      DisplayLabel = 'Importa'#231#227'o'
      FieldName = 'Importacao'
    end
    object qryConsultaNFEntOutrasDesp: TFloatField
      FieldName = 'Outras Desp.'
    end
    object qryConsultaNFEntValorTotalNF: TFloatField
      FieldName = 'Valor Total NF'
    end
    object qryConsultaNFEntEntidade: TIntegerField
      DisplayWidth = 5
      FieldName = 'Entidade'
      Required = True
    end
    object qryConsultaNFEntRazaoSocial: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'Razao Social'
      ReadOnly = True
      Size = 100
    end
  end
  object dsConsultaNFEnt: TDataSource
    DataSet = qryConsultaNFEnt
    Left = 628
    Top = 24
  end
  object qryConsultaNFSai: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'SELECT '
      '  N.NF_NUMERO AS "Nota Fiscal",'
      '  N.NF_STATUS AS "Status",'
      '  N.NF_DEVOLUCAO AS "Devolucao",'
      '  N.NF_OPERACAO AS "Operacao",'
      '  N.NF_DATAOPERACAO AS "Data Operacao",'
      '  N.NF_VALORMERCADORIA AS "Valor Mercadorias",'
      '  N.NF_VALORICMS AS "ICMS",'
      '  N.NF_VALORIPI AS "IPI",'
      '  N.NF_VALORPIS AS "PIS",'
      '  N.NF_VALORCOFINS AS "COFINS",'
      '  N.NF_VALOROUTRASDESPESAS AS "Outras Desp.",'
      '  N.NF_VALORTOTAL AS "Valor Total NF",'
      '  N.ENT_CODIGO AS "Entidade",'
      '  E.ENT_RAZAOSOCIAL AS "Razao Social"'
      'FROM'
      '  NUTTZ_NOTASFISCAIS N'
      
        '  LEFT OUTER JOIN NUTTZ_ENTIDADES E ON (N.ENT_CODIGO = E.ENT_COD' +
        'IGO)'
      'WHERE'
      '  (N.NF_DATAOPERACAO BETWEEN :PDTAINI AND :PDTAFIM)'
      '  AND (N.NF_TIPO = '#39'S'#39')'
      'ORDER BY'
      '  N.NF_DATAOPERACAO,'
      '  N.NF_NUMERO')
    Options.AutoPrepare = True
    OnDeleteError = PostError
    OnPostError = PostError
    Left = 712
    Top = 12
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'PDTAINI'
        ParamType = ptInput
        Value = 41949d
      end
      item
        DataType = ftDateTime
        Name = 'PDTAFIM'
        ParamType = ptInput
        Value = 41950d
      end>
    object qryConsultaNFSaiNotaFiscal: TIntegerField
      FieldName = 'Nota Fiscal'
      Required = True
    end
    object qryConsultaNFSaiStatus: TIntegerField
      DisplayWidth = 1
      FieldName = 'Status'
      Required = True
    end
    object qryConsultaNFSaiDevolucao: TStringField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'Devolucao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryConsultaNFSaiOperacao: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'Operacao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLTimeStampField1: TDateTimeField
      DisplayLabel = 'Data Opera'#231#227'o'
      FieldName = 'Data Operacao'
      Required = True
    end
    object FloatField1: TFloatField
      FieldName = 'Valor Mercadorias'
    end
    object FloatField2: TFloatField
      FieldName = 'ICMS'
    end
    object FloatField3: TFloatField
      FieldName = 'IPI'
    end
    object FloatField4: TFloatField
      FieldName = 'PIS'
    end
    object FloatField5: TFloatField
      FieldName = 'COFINS'
    end
    object qryConsultaNFSaiOutrasDesp: TFloatField
      FieldName = 'Outras Desp.'
    end
    object FloatField6: TFloatField
      FieldName = 'Valor Total NF'
    end
    object qryConsultaNFSaiEntidade: TIntegerField
      FieldName = 'Entidade'
      Required = True
    end
    object qryConsultaNFSaiRazaoSocial: TStringField
      FieldName = 'Razao Social'
      ReadOnly = True
      Size = 100
    end
  end
  object dsConsultaNFSai: TDataSource
    DataSet = qryConsultaNFSai
    Left = 728
    Top = 24
  end
  object qryNFEnt: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    Transaction = UniTransaction1
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  NUTTZ_NOTASFISCAIS'
      'where'
      '  --CODIGO_EMPRESA = :pCODIGO_EMPRESA AND'
      '  NF_TIPO = '#39'E'#39
      '  and NF_NUMERO = :pNF_NUMERO'
      '  and ENT_CODIGO = :pENT_CODIGO')
    CachedUpdates = True
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnNewRecord = qryNFEntNewRecord
    OnPostError = PostError
    Left = 612
    Top = 76
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pNF_NUMERO'
        ParamType = ptInput
        Value = 144150
      end
      item
        DataType = ftInteger
        Name = 'pENT_CODIGO'
        ParamType = ptInput
        Value = 0
      end>
    object qryNFEntNF_NUMERO: TIntegerField
      FieldName = 'NF_NUMERO'
      Required = True
    end
    object qryNFEntNF_STATUS: TIntegerField
      DefaultExpression = '0'
      DisplayWidth = 1
      FieldName = 'NF_STATUS'
      Required = True
    end
    object qryNFEntNF_TIPO: TStringField
      DefaultExpression = #39'E'#39
      FieldName = 'NF_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryNFEntNF_DEVOLUCAO: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'NF_DEVOLUCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryNFEntNF_OPERACAO: TStringField
      DefaultExpression = #39'C'#39
      FieldName = 'NF_OPERACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryNFEntENT_CODIGO: TIntegerField
      DefaultExpression = '0'
      FieldName = 'ENT_CODIGO'
      Required = True
    end
    object qryNFEntNF_DATAOPERACAO: TDateTimeField
      FieldName = 'NF_DATAOPERACAO'
      Required = True
    end
    object qryNFEntNF_VALORMERCADORIA: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORMERCADORIA'
    end
    object qryNFEntNF_VALORICMS: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORICMS'
    end
    object qryNFEntNF_VALORIPI: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORIPI'
    end
    object qryNFEntNF_VALORPIS: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORPIS'
    end
    object qryNFEntNF_VALORCOFINS: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORCOFINS'
    end
    object qryNFEntNF_VALORII: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORII'
    end
    object qryNFEntNF_VALOROUTRASDESPESAS: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALOROUTRASDESPESAS'
    end
    object qryNFEntNF_VALORTOTAL: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORTOTAL'
    end
    object qryNFEntNF_PARCELADEDUTIVEL: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_PARCELADEDUTIVEL'
    end
  end
  object dsNFEnt: TDataSource
    DataSet = qryNFEnt
    Left = 623
    Top = 87
  end
  object qryNFEntItens: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    Transaction = UniTransaction1
    SQL.Strings = (
      'SELECT'
      '  NF_TIPO,'
      '  NF_NUMERO,'
      '  ENT_CODIGO,'
      '  NF_SEQ_LANCAMENTO,'
      '  PRDT_CODIGO,'
      '  CST_CODIGO,'
      '  CFOP_CODIGO,'
      '  NFI_DESCRICAO,'
      '  NFI_QUANTIDADE,'
      '  NFI_VALORMERCADORIA,'
      '  NFI_VALORICMS,'
      '  NFI_VALORIPI,'
      '  NFI_VALORPIS,'
      '  NFI_VALORCOFINS,'
      '  NFI_VALORII,'
      '  NFI_VALOROUTRASDESPESAS,'
      '  NFI_VALORTOTAL,'
      '  NFI_PARCELADEDUTIVEL'
      'FROM'
      '  nuttz_notasfiscais_itens'
      'WHERE'
      '  --CODIGO_EMPRESA = :pCODIGO_EMPRESA AND'
      '  NF_TIPO = '#39'E'#39
      '  and NF_NUMERO = :pNF_NUMERO'
      '  and ENT_CODIGO = :pENT_CODIGO'
      'ORDER BY'
      '  nf_seq_lancamento')
    CachedUpdates = True
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    AfterDelete = qryNFEntItensAfterDelete
    OnDeleteError = PostError
    OnNewRecord = qryNFEntItensNewRecord
    OnPostError = PostError
    Left = 612
    Top = 146
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pnf_numero'
        ParamType = ptInput
        Value = 144150
      end
      item
        DataType = ftInteger
        Name = 'pENT_CODIGO'
        Value = 0
      end>
    object qryNFEntItensNF_NUMERO: TIntegerField
      FieldName = 'NF_NUMERO'
      Required = True
    end
    object qryNFEntItensNF_TIPO: TStringField
      DefaultExpression = #39'S'#39
      FieldName = 'NF_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryNFEntItensNF_SEQ_LANCAMENTO: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'SEQ'
      DisplayWidth = 4
      FieldName = 'NF_SEQ_LANCAMENTO'
      Required = True
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object qryNFEntItensENT_CODIGO: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'Entidade'
      DisplayWidth = 6
      FieldName = 'ENT_CODIGO'
      Required = True
    end
    object qryNFEntItensPRDT_CODIGO: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 6
      FieldName = 'PRDT_CODIGO'
      Required = True
    end
    object qryNFEntItensCST_CODIGO: TStringField
      DisplayLabel = 'CST'
      FieldName = 'CST_CODIGO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryNFEntItensCFOP_CODIGO: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CFOP_CODIGO'
      Required = True
      FixedChar = True
      Size = 4
    end
    object qryNFEntItensNFI_DESCRICAO: TStringField
      DisplayLabel = 'Drescri'#231#227'o'
      FieldName = 'NFI_DESCRICAO'
      Required = True
      Size = 250
    end
    object qryNFEntItensNFI_QUANTIDADE: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Quantidade'
      DisplayWidth = 7
      FieldName = 'NFI_QUANTIDADE'
    end
    object qryNFEntItensNFI_VALORMERCADORIA: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Valor Mercadoria'
      FieldName = 'NFI_VALORMERCADORIA'
    end
    object qryNFEntItensNFI_VALORICMS: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'ICMS'
      FieldName = 'NFI_VALORICMS'
    end
    object qryNFEntItensNFI_VALORIPI: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'IPI'
      FieldName = 'NFI_VALORIPI'
    end
    object qryNFEntItensNFI_VALORPIS: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'PIS'
      FieldName = 'NFI_VALORPIS'
    end
    object qryNFEntItensNFI_VALORCOFINS: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'COFINS'
      FieldName = 'NFI_VALORCOFINS'
    end
    object qryNFEntItensNFI_VALORII: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Imposto Importa'#231#227'o'
      FieldName = 'NFI_VALORII'
    end
    object qryNFEntItensNFI_VALOROUTRASDESPESAS: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Outras Despesas'
      FieldName = 'NFI_VALOROUTRASDESPESAS'
    end
    object qryNFEntItensNFI_VALORTOTAL: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Valor Total'
      FieldName = 'NFI_VALORTOTAL'
    end
    object qryNFEntItensNFI_PARCELADEDUTIVEL: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NFI_PARCELADEDUTIVEL'
    end
  end
  object dsNFEntItens: TDataSource
    DataSet = qryNFEntItens
    Left = 623
    Top = 157
  end
  object qryNFSai: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    Transaction = UniTransaction1
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  NUTTZ_NOTASFISCAIS'
      'where'
      '  --CODIGO_EMPRESA = :pCODIGO_EMPRESA AND'
      '  NF_TIPO = '#39'S'#39
      '  and NF_NUMERO = :pNF_NUMERO'
      '  and ENT_CODIGO = :pENT_CODIGO')
    CachedUpdates = True
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnNewRecord = qryNFSaiNewRecord
    OnPostError = PostError
    Left = 713
    Top = 76
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pNF_NUMERO'
        ParamType = ptInput
        Value = 14197
      end
      item
        DataType = ftInteger
        Name = 'pENT_CODIGO'
        Value = 0
      end>
    object qryNFSaiNF_NUMERO: TIntegerField
      FieldName = 'NF_NUMERO'
      Required = True
    end
    object qryNFSaiNF_STATUS: TIntegerField
      DefaultExpression = '0'
      FieldName = 'NF_STATUS'
      Required = True
    end
    object qryNFSaiNF_TIPO: TStringField
      DefaultExpression = #39'S'#39
      FieldName = 'NF_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryNFSaiENT_CODIGO: TIntegerField
      DefaultExpression = '0'
      FieldName = 'ENT_CODIGO'
      Required = True
    end
    object qryNFSaiNF_DEVOLUCAO: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'NF_DEVOLUCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryNFSaiNF_OPERACAO: TStringField
      DefaultExpression = #39'V'#39
      FieldName = 'NF_OPERACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryNFSaiNF_DATAOPERACAO: TDateTimeField
      FieldName = 'NF_DATAOPERACAO'
      Required = True
    end
    object qryNFSaiNF_VALORMERCADORIA: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORMERCADORIA'
    end
    object qryNFSaiNF_VALORICMS: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORICMS'
    end
    object qryNFSaiNF_VALORIPI: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORIPI'
    end
    object qryNFSaiNF_VALORPIS: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORPIS'
    end
    object qryNFSaiNF_VALORCOFINS: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORCOFINS'
    end
    object qryNFSaiNF_VALOROUTRASDESPESAS: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALOROUTRASDESPESAS'
    end
    object qryNFSaiNF_VALORTOTAL: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_VALORTOTAL'
    end
    object qryNFSaiNF_PARCELADEDUTIVEL: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NF_PARCELADEDUTIVEL'
    end
  end
  object dsNFSai: TDataSource
    DataSet = qryNFSai
    Left = 724
    Top = 87
  end
  object qryNFSaiItens: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    Transaction = UniTransaction1
    SQL.Strings = (
      'SELECT'
      '  NF_TIPO,'
      '  NF_NUMERO,'
      '  ENT_CODIGO,'
      '  NF_SEQ_LANCAMENTO,'
      '  PRDT_CODIGO,'
      '  CST_CODIGO,'
      '  CFOP_CODIGO,'
      '  NFI_DESCRICAO,'
      '  NFI_QUANTIDADE,'
      '  NFI_VALORMERCADORIA,'
      '  NFI_VALORICMS,'
      '  NFI_VALORIPI,'
      '  NFI_VALORPIS,'
      '  NFI_VALORCOFINS,'
      '  NFI_VALOROUTRASDESPESAS,'
      '  NFI_VALORTOTAL,'
      '  NFI_PARCELADEDUTIVEL'
      'FROM'
      '  nuttz_notasfiscais_itens'
      'WHERE'
      '  --CODIGO_EMPRESA = :pCODIGO_EMPRESA AND'
      '  NF_TIPO = '#39'S'#39
      '  and NF_NUMERO = :pNF_NUMERO'
      '  and ENT_CODIGO = :pENT_CODIGO'
      'ORDER BY'
      '  nf_seq_lancamento')
    CachedUpdates = True
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnNewRecord = qryNFSaiItensNewRecord
    OnPostError = PostError
    Left = 713
    Top = 146
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pnf_numero'
        ParamType = ptInput
        Value = 45246
      end
      item
        DataType = ftInteger
        Name = 'pENT_CODIGO'
        Value = 0
      end>
    object qryNFSaiItensNF_NUMERO: TIntegerField
      FieldName = 'NF_NUMERO'
      Required = True
    end
    object qryNFSaiItensNF_TIPO: TStringField
      DefaultExpression = #39'S'#39
      FieldName = 'NF_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryNFSaiItensNF_SEQ_LANCAMENTO: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'SEQ'
      DisplayWidth = 4
      FieldName = 'NF_SEQ_LANCAMENTO'
      Required = True
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object qryNFSaiItensENT_CODIGO: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'Entidade'
      DisplayWidth = 6
      FieldName = 'ENT_CODIGO'
      Required = True
    end
    object qryNFSaiItensPRDT_CODIGO: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 6
      FieldName = 'PRDT_CODIGO'
      Required = True
    end
    object qryNFSaiItensCST_CODIGO: TStringField
      DisplayLabel = 'CST'
      FieldName = 'CST_CODIGO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryNFSaiItensCFOP_CODIGO: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CFOP_CODIGO'
      Required = True
      FixedChar = True
      Size = 4
    end
    object qryNFSaiItensNFI_DESCRICAO: TStringField
      DisplayLabel = 'Drescri'#231#227'o'
      FieldName = 'NFI_DESCRICAO'
      Required = True
      Size = 250
    end
    object qryNFSaiItensNFI_QUANTIDADE: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Quantidade'
      DisplayWidth = 7
      FieldName = 'NFI_QUANTIDADE'
    end
    object qryNFSaiItensNFI_VALORMERCADORIA: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Valor Mercadoria'
      FieldName = 'NFI_VALORMERCADORIA'
    end
    object qryNFSaiItensNFI_VALORICMS: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'ICMS'
      FieldName = 'NFI_VALORICMS'
    end
    object qryNFSaiItensNFI_VALORIPI: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'IPI'
      FieldName = 'NFI_VALORIPI'
    end
    object qryNFSaiItensNFI_VALORPIS: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'PIS'
      FieldName = 'NFI_VALORPIS'
    end
    object qryNFSaiItensNFI_VALORCOFINS: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'COFINS'
      FieldName = 'NFI_VALORCOFINS'
    end
    object qryNFSaiItensNFI_VALOROUTRASDESPESAS: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Outras Despesas'
      FieldName = 'NFI_VALOROUTRASDESPESAS'
    end
    object qryNFSaiItensNFI_VALORTOTAL: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Valor Total'
      FieldName = 'NFI_VALORTOTAL'
    end
    object qryNFSaiItensNFI_PARCELADEDUTIVEL: TFloatField
      DefaultExpression = '0.00'
      FieldName = 'NFI_PARCELADEDUTIVEL'
    end
  end
  object dsNFSaiItens: TDataSource
    DataSet = qryNFSaiItens
    Left = 724
    Top = 157
  end
  object qryConsCFOPs: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select'
      '  CFOP_CODIGO,'
      '  CFOP_DEVOLUCAO,'
      '  CFOP_DESCRICAO'
      'from'
      '  NUTTZ_CFOPS'
      'where'
      '  ((CFOP_CODIGO = :pCFOP_CODIGO) OR (:pCFOP_CODIGO=0))'
      
        '  and ((CFOP_DEVOLUCAO = :pCFOP_DEVOLUCAO) OR (:pCFOP_DEVOLUCAO=' +
        #39' '#39'))')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.DefaultValues = True
    Left = 332
    Top = 77
    ParamData = <
      item
        DataType = ftString
        Name = 'pCFOP_CODIGO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pCFOP_DEVOLUCAO'
        ParamType = ptInput
        Value = 'N'
      end>
    object qryConsCFOPsCFOP_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CFOP_CODIGO'
      Required = True
      FixedChar = True
      Size = 4
    end
    object qryConsCFOPsCFOP_DEVOLUCAO: TStringField
      DefaultExpression = #39'N'#39
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'CFOP_DEVOLUCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryConsCFOPsCFOP_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CFOP_DESCRICAO'
      Required = True
      Size = 250
    end
  end
  object dsConsCFOPs: TDataSource
    DataSet = qryConsCFOPs
    Left = 348
    Top = 93
  end
  object qryParcelaDedutivel: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    Transaction = UniTransaction1
    SQL.Strings = (
      'SELECT'
      '  N.NF_DATAOPERACAO,'
      '  I.NF_NUMERO,'
      '  CASE'
      '    WHEN C.CFOP_DEVOLUCAO='#39'S'#39' THEN '#39'Devolu'#231#227'o'#39
      '    ELSE '#39'Aquisi'#231#227'o'#39
      '  END AS OPERACAO,'
      '  I.PRDT_CODIGO,'
      '  P.PRDT_TEMCOMPOSICAO,'
      '  I.NFI_DESCRICAO,'
      '  E.ENT_CNPJ || '#39' - '#39' || E.ENT_RAZAOSOCIAL AS ENT_RAZAOSOCIAL,'
      '  I.NFI_QUANTIDADE * C.CFOP_FATOR AS NFI_QUANTIDADE,'
      '  I.NFI_VALORMERCADORIA * C.CFOP_FATOR AS NFI_VALORMERCADORIA,'
      '  I.NFI_VALORICMS * C.CFOP_FATOR AS NFI_VALORICMS,'
      '  I.NFI_VALORPIS * C.CFOP_FATOR AS NFI_VALORPIS,'
      '  I.NFI_VALORCOFINS * C.CFOP_FATOR AS NFI_VALORCOFINS,'
      '  I.NFI_VALORIPI * C.CFOP_FATOR AS NFI_VALORIPI,'
      '  I.NFI_VALORII * C.CFOP_FATOR AS NFI_VALORII,'
      
        '  I.NFI_VALOROUTRASDESPESAS * C.CFOP_FATOR AS NFI_VALOROUTRASDES' +
        'PESAS,'
      '  I.NFI_VALORTOTAL * C.CFOP_FATOR AS NFI_VALORTOTAL,'
      '  I.CST_CODIGO,'
      '  S.CST_FATORINOVAR,'
      '  --ROUND( ((I.NFI_VALORMERCADORIA'
      '  --        +I.NFI_VALORICMS'
      '  --        +I.NFI_VALORPIS'
      
        '  --        +I.NFI_VALORCOFINS)*S.CST_FATORINOVAR/100),2) * C.CF' +
        'OP_FATOR AS PARCELA,'
      '  I.NFI_PARCELADEDUTIVEL'
      'FROM'
      '  NUTTZ_NOTASFISCAIS_ITENS I'
      
        '  LEFT OUTER JOIN NUTTZ_CFOPS C ON (I.CFOP_CODIGO = C.CFOP_CODIG' +
        'O)'
      
        '  LEFT OUTER JOIN NUTTZ_NOTASFISCAIS N ON (N.NF_TIPO = I.NF_TIPO' +
        ') AND (I.NF_NUMERO = N.NF_NUMERO) AND (I.ENT_CODIGO = N.ENT_CODI' +
        'GO)'
      
        '  LEFT OUTER JOIN NUTTZ_ENTIDADES E ON (I.ENT_CODIGO = E.ENT_COD' +
        'IGO)'
      '  LEFT OUTER JOIN NUTTZ_CST S ON (I.CST_CODIGO = S.CST_CODIGO)'
      
        '  LEFT OUTER JOIN NUTTZ_PRODUTOS P ON (I.PRDT_CODIGO = P.PRDT_CO' +
        'DIGO)'
      'WHERE'
      '  (I.NF_TIPO = '#39'E'#39')'
      '  AND   (N.NF_DATAOPERACAO BETWEEN :PDTAINI AND :PDTAFIM)'
      'ORDER BY'
      '  I.PRDT_CODIGO,'
      '  N.NF_DATAOPERACAO,'
      '  I.NF_NUMERO')
    CachedUpdates = True
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnNewRecord = qryNFSaiItensNewRecord
    OnPostError = PostError
    Left = 813
    Top = 11
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'PDTAINI'
        ParamType = ptInput
        Value = 41913d
      end
      item
        DataType = ftDateTime
        Name = 'PDTAFIM'
        ParamType = ptInput
        Value = 41943d
      end>
    object qryParcelaDedutivelNF_DATAOPERACAO: TDateTimeField
      DisplayLabel = 'Data Opera'#231#227'o'
      FieldName = 'NF_DATAOPERACAO'
    end
    object qryParcelaDedutivelNF_NUMERO: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'NF_NUMERO'
      ReadOnly = True
      Required = True
    end
    object qryParcelaDedutivelOPERACAO: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'OPERACAO'
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object qryParcelaDedutivelPRDT_CODIGO: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRDT_CODIGO'
      ReadOnly = True
      Required = True
    end
    object qryParcelaDedutivelPRDT_TEMCOMPOSICAO: TStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'PRDT_TEMCOMPOSICAO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryParcelaDedutivelNFI_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NFI_DESCRICAO'
      ReadOnly = True
      Required = True
      Size = 250
    end
    object qryParcelaDedutivelENT_RAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'ENT_RAZAOSOCIAL'
      ReadOnly = True
      Size = 100
    end
    object qryParcelaDedutivelNFI_QUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'NFI_QUANTIDADE'
      ReadOnly = True
    end
    object qryParcelaDedutivelNFI_VALORMERCADORIA: TFloatField
      DisplayLabel = 'Valor Mercadoria'
      FieldName = 'NFI_VALORMERCADORIA'
      ReadOnly = True
    end
    object qryParcelaDedutivelNFI_VALORICMS: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'NFI_VALORICMS'
      ReadOnly = True
    end
    object qryParcelaDedutivelNFI_VALORPIS: TFloatField
      DisplayLabel = 'PIS'
      FieldName = 'NFI_VALORPIS'
      ReadOnly = True
    end
    object qryParcelaDedutivelNFI_VALORCOFINS: TFloatField
      DisplayLabel = 'COFINS'
      FieldName = 'NFI_VALORCOFINS'
      ReadOnly = True
    end
    object qryParcelaDedutivelNFI_VALORIPI: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'NFI_VALORIPI'
      ReadOnly = True
    end
    object qryParcelaDedutivelNFI_VALORII: TFloatField
      DisplayLabel = 'Imposto Importa'#231#227'o'
      FieldName = 'NFI_VALORII'
      ReadOnly = True
    end
    object qryParcelaDedutivelNFI_VALOROUTRASDESPESAS: TFloatField
      DisplayLabel = 'Outras Despesas'
      FieldName = 'NFI_VALOROUTRASDESPESAS'
      ReadOnly = True
    end
    object qryParcelaDedutivelNFI_VALORTOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'NFI_VALORTOTAL'
      ReadOnly = True
    end
    object qryParcelaDedutivelCST_CODIGO: TStringField
      DisplayLabel = 'CST'
      FieldName = 'CST_CODIGO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryParcelaDedutivelCST_FATORINOVAR: TFloatField
      DisplayLabel = 'Fator Inovar'
      FieldName = 'CST_FATORINOVAR'
      ReadOnly = True
    end
    object qryParcelaDedutivelNFI_PARCELADEDUTIVEL: TFloatField
      DisplayLabel = 'Parcela Dedutivel'
      FieldName = 'NFI_PARCELADEDUTIVEL'
      ReadOnly = True
    end
  end
  object dsParcelaDedutivel: TDataSource
    DataSet = qryParcelaDedutivel
    Left = 824
    Top = 22
  end
  object qryCST: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select * from nuttz_cst order by cst_codigo')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnPostError = PostError
    Left = 413
    Top = 11
    object qryCSTCST_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CST_CODIGO'
      Required = True
      EditMask = '9.99;0; '
      FixedChar = True
      Size = 3
    end
    object qryCSTCST_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CST_DESCRICAO'
      Required = True
      Size = 150
    end
    object qryCSTCST_CODIGOINOVAR: TStringField
      DefaultExpression = #39'0'#39
      DisplayLabel = 'C'#243'd.Inovar'
      FieldName = 'CST_CODIGOINOVAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCSTCST_FATORINOVAR: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Fator Inovar'
      DisplayWidth = 3
      FieldName = 'CST_FATORINOVAR'
      DisplayFormat = '##0%'
      EditFormat = '##0%'
    end
  end
  object dsCST: TDataSource
    DataSet = qryCST
    Left = 424
    Top = 22
  end
  object qryConsCST: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select'
      '  CST_CODIGO,'
      '  CST_DESCRICAO'
      'from'
      '  NUTTZ_CST'
      'where'
      '  ((CST_CODIGO = :pCST_CODIGO) OR (:pCST_CODIGO=0))'
      'order by'
      '    CST_CODIGO')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.DefaultValues = True
    Left = 413
    Top = 77
    ParamData = <
      item
        DataType = ftString
        Name = 'pCST_CODIGO'
        ParamType = ptInput
        Value = '0'
      end>
    object qryConsCSTCST_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CST_CODIGO'
      Required = True
      EditMask = '9.99;0; '
      FixedChar = True
      Size = 3
    end
    object qryConsCSTCST_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CST_DESCRICAO'
      Required = True
      Size = 150
    end
  end
  object dsConsCST: TDataSource
    DataSet = qryConsCST
    Left = 429
    Top = 93
  end
  object qryParcDedutivel: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    Transaction = UniTransaction1
    SQL.Strings = (
      'SELECT'
      '  N.NF_DATAOPERACAO,'
      '  I.NF_NUMERO,'
      '  CASE'
      '    WHEN C.CFOP_DEVOLUCAO='#39'S'#39' THEN '#39'Devolu'#231#227'o'#39
      '    ELSE '#39'Aquisi'#231#227'o'#39
      '  END AS OPERACAO,'
      '  I.PRDT_CODIGO,'
      '  P.PRDT_TEMCOMPOSICAO,'
      '  I.NFI_DESCRICAO,'
      '  E.ENT_RAZAOSOCIAL,'
      '  I.NFI_QUANTIDADE * C.CFOP_FATOR AS NFI_QUANTIDADE,'
      '  I.NFI_VALORMERCADORIA * C.CFOP_FATOR AS NFI_VALORMERCADORIA,'
      '  I.NFI_VALORICMS * C.CFOP_FATOR AS NFI_VALORICMS,'
      '  I.NFI_VALORPIS * C.CFOP_FATOR AS NFI_VALORPIS,'
      '  I.NFI_VALORCOFINS * C.CFOP_FATOR AS NFI_VALORCOFINS,'
      '  I.NFI_VALORIPI * C.CFOP_FATOR AS NFI_VALORIPI,'
      '  I.NFI_VALORTOTAL * C.CFOP_FATOR AS NFI_VALORTOTAL,'
      '  I.CST_CODIGO,'
      '  S.CST_FATORINOVAR,'
      '  ROUND( ((I.NFI_VALORMERCADORIA'
      '          +I.NFI_VALORICMS'
      '          +I.NFI_VALORPIS'
      
        '          +I.NFI_VALORCOFINS)*S.CST_FATORINOVAR/100),2) * C.CFOP' +
        '_FATOR AS PARCELA,'
      '  I.NFI_PARCELADEDUTIVEL'
      'FROM'
      '  NUTTZ_NOTASFISCAIS_ITENS I'
      
        '  LEFT OUTER JOIN NUTTZ_CFOPS C ON (I.CFOP_CODIGO = C.CFOP_CODIG' +
        'O)'
      
        '  LEFT OUTER JOIN NUTTZ_NOTASFISCAIS N ON (N.NF_TIPO = I.NF_TIPO' +
        ') AND (I.NF_NUMERO = N.NF_NUMERO) AND (I.ENT_CODIGO = N.ENT_CODI' +
        'GO)'
      
        '  LEFT OUTER JOIN NUTTZ_ENTIDADES E ON (I.ENT_CODIGO = E.ENT_COD' +
        'IGO)'
      '  LEFT OUTER JOIN NUTTZ_CST S ON (I.CST_CODIGO = S.CST_CODIGO)'
      
        '  LEFT OUTER JOIN NUTTZ_PRODUTOS P ON (I.PRDT_CODIGO = P.PRDT_CO' +
        'DIGO)'
      'WHERE'
      '  (I.NF_TIPO = '#39'E'#39')'
      '  AND   (N.NF_DATAOPERACAO BETWEEN :PDTAINI AND :PDTAFIM)'
      'ORDER BY'
      '  I.PRDT_CODIGO,'
      '  N.NF_DATAOPERACAO,'
      '  I.NF_NUMERO')
    CachedUpdates = True
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnNewRecord = qryNFSaiItensNewRecord
    OnPostError = PostError
    Left = 813
    Top = 211
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'PDTAINI'
        ParamType = ptInput
        Value = 42005d
      end
      item
        DataType = ftDateTime
        Name = 'PDTAFIM'
        ParamType = ptInput
        Value = 42005d
      end>
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Data Opera'#231#227'o'
      FieldName = 'NF_DATAOPERACAO'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'NF_NUMERO'
      ReadOnly = True
      Required = True
    end
    object StringField10: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'OPERACAO'
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object qryParcDedutivelENT_RAZAOSOCIAL: TStringField
      FieldName = 'ENT_RAZAOSOCIAL'
      ReadOnly = True
      Size = 100
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRDT_CODIGO'
      ReadOnly = True
      Required = True
    end
    object StringField11: TStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'PRDT_TEMCOMPOSICAO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object StringField12: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NFI_DESCRICAO'
      ReadOnly = True
      Required = True
      Size = 250
    end
    object FloatField17: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'NFI_QUANTIDADE'
      ReadOnly = True
    end
    object FloatField18: TFloatField
      DisplayLabel = 'Valor Mercadoria'
      FieldName = 'NFI_VALORMERCADORIA'
      ReadOnly = True
    end
    object FloatField19: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'NFI_VALORICMS'
      ReadOnly = True
    end
    object FloatField20: TFloatField
      DisplayLabel = 'PIS'
      FieldName = 'NFI_VALORPIS'
      ReadOnly = True
    end
    object FloatField21: TFloatField
      DisplayLabel = 'COFINS'
      FieldName = 'NFI_VALORCOFINS'
      ReadOnly = True
    end
    object FloatField22: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'NFI_VALORIPI'
      ReadOnly = True
    end
    object FloatField23: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'NFI_VALORTOTAL'
      ReadOnly = True
    end
    object qryParcDedutivelCST_CODIGO: TStringField
      FieldName = 'CST_CODIGO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object FloatField24: TFloatField
      DisplayLabel = 'Fator Inovar'
      FieldName = 'CST_FATORINOVAR'
      ReadOnly = True
    end
    object FloatField25: TFloatField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      ReadOnly = True
    end
    object FloatField26: TFloatField
      DisplayLabel = 'Parcela Dedutivel'
      FieldName = 'NFI_PARCELADEDUTIVEL'
      ReadOnly = True
    end
  end
  object dsParcDedutivel: TDataSource
    DataSet = qryParcDedutivel
    Left = 824
    Top = 222
  end
  object qryProdutosMovimentacao: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'SELECT'
      '  NFI.NF_TIPO,'
      '  NFI.NF_NUMERO,'
      '  NF.NF_DATAOPERACAO,'
      '  NFI.NFI_QUANTIDADE,'
      '  NFI.NFI_VALORMERCADORIA,'
      '  NFI.NFI_VALORICMS,'
      '  NFI.NFI_VALORPIS,'
      '  NFI.NFI_VALORCOFINS,'
      '  NFI.NFI_VALORIPI,'
      '  NFI.NFI_VALORTOTAL,'
      '  NFI.CST_CODIGO,'
      '  NFI.NFI_PARCELADEDUTIVEL'
      'FROM'
      '  NUTTZ_NOTASFISCAIS_ITENS NFI'
      '  INNER JOIN NUTTZ_NOTASFISCAIS NF ON (NFI.NF_TIPO = NF.NF_TIPO)'
      '  AND (NFI.NF_NUMERO = NF.NF_NUMERO)'
      '  AND (NFI.ENT_CODIGO = NF.ENT_CODIGO)'
      'WHERE'
      '  (NFI.PRDT_CODIGO = :PPRDT_CODIGO)'
      'ORDER BY'
      '  NFI.NF_TIPO,'
      '  NFI.NF_NUMERO DESC')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnPostError = PostError
    Left = 512
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pPRDT_CODIGO'
        Value = 38417
      end>
    object qryProdutosMovimentacaoNF_TIPO: TStringField
      DefaultExpression = #39'S'#39
      DisplayLabel = 'Tipo'
      FieldName = 'NF_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryProdutosMovimentacaoNF_NUMERO: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'NF_NUMERO'
      Required = True
    end
    object qryProdutosMovimentacaoNF_DATAOPERACAO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'NF_DATAOPERACAO'
      ReadOnly = True
      Required = True
    end
    object qryProdutosMovimentacaoNFI_QUANTIDADE: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Quantidade'
      FieldName = 'NFI_QUANTIDADE'
    end
    object qryProdutosMovimentacaoNFI_VALORMERCADORIA: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Valor Mercadoria'
      FieldName = 'NFI_VALORMERCADORIA'
    end
    object qryProdutosMovimentacaoNFI_VALORICMS: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'ICMS'
      FieldName = 'NFI_VALORICMS'
    end
    object qryProdutosMovimentacaoNFI_VALORPIS: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'PIS'
      FieldName = 'NFI_VALORPIS'
    end
    object qryProdutosMovimentacaoNFI_VALORCOFINS: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'COFINS'
      FieldName = 'NFI_VALORCOFINS'
    end
    object qryProdutosMovimentacaoNFI_VALORIPI: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'IPI'
      FieldName = 'NFI_VALORIPI'
    end
    object qryProdutosMovimentacaoNFI_VALORTOTAL: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Valor Total'
      FieldName = 'NFI_VALORTOTAL'
    end
    object qryProdutosMovimentacaoCST_CODIGO: TStringField
      DisplayLabel = 'CST'
      FieldName = 'CST_CODIGO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryProdutosMovimentacaoNFI_PARCELADEDUTIVEL: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Parcela Dedut'#237'vel'
      FieldName = 'NFI_PARCELADEDUTIVEL'
    end
  end
  object dsProdutosMovimentacao: TDataSource
    DataSet = qryProdutosMovimentacao
    Left = 523
    Top = 227
  end
  object qryEntidades: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select * from nuttz_entidades order by ent_codigo')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    BeforePost = NovoRegistro
    OnDeleteError = PostError
    OnNewRecord = NovoRegistro
    OnPostError = PostError
    Left = 241
    Top = 11
    object qryEntidadesENT_CODIGO: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'ENT_CODIGO'
      ReadOnly = True
      Required = True
      DisplayFormat = '00000'
      EditFormat = '00000'
    end
    object qryEntidadesENT_CNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'ENT_CNPJ'
      EditMask = '!99.999.999/9999-99;0; '
      Size = 14
    end
    object qryEntidadesENT_RAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'ENT_RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object qryEntidadesENT_NOMEFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'ENT_NOMEFANTASIA'
      Required = True
      Size = 80
    end
    object qryEntidadesCEP: TStringField
      DefaultExpression = #39'00000000'#39
      FieldName = 'CEP'
      Required = True
      EditMask = '99999-999;0;0'
      FixedChar = True
      Size = 8
    end
    object qryEntidadesDIFERENCIADOR: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'DIF'
      DisplayWidth = 1
      FieldName = 'DIFERENCIADOR'
      Required = True
    end
    object qryEntidadesENT_NUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'ENT_NUMERO'
      FixedChar = True
      Size = 5
    end
    object qryEntidadesENT_COMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'ENT_COMPLEMENTO'
      Size = 40
    end
    object qryEntidadesENT_FONE_RES: TStringField
      DisplayLabel = 'Fone Residencial'
      FieldName = 'ENT_FONE_RES'
      Size = 16
    end
    object qryEntidadesENT_FONE_CEL: TStringField
      DisplayLabel = 'Fone Celular'
      FieldName = 'ENT_FONE_CEL'
      Size = 16
    end
    object qryEntidadesENT_FONE_FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'ENT_FONE_FAX'
      Size = 16
    end
    object qryEntidadesENT_EMAIL: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'ENT_EMAIL'
      Size = 50
    end
    object qryEntidadesENT_WEBSITE: TStringField
      DisplayLabel = 'Web Site'
      FieldName = 'ENT_WEBSITE'
      Size = 100
    end
    object qryEntidadesENT_RESPONSAVEL: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'ENT_RESPONSAVEL'
      Size = 60
    end
    object qryEntidadesENT_RESP_CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'ENT_RESP_CPF'
      Size = 11
    end
    object qryEntidadesENT_RESP_CARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'ENT_RESP_CARGO'
      Size = 40
    end
    object qryEntidadesENT_RESP_EMAIL: TStringField
      DisplayLabel = 'E-Mail Respons'#225'vel'
      FieldName = 'ENT_RESP_EMAIL'
      Size = 50
    end
    object qryEntidadesFOR_TIER: TIntegerField
      DisplayLabel = 'TIER'
      DisplayWidth = 1
      FieldName = 'FOR_TIER'
    end
    object qryEntidadesENT_CLIENTE: TStringField
      DefaultExpression = #39'N'#39
      DisplayLabel = 'Cliente'
      FieldName = 'ENT_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qryEntidadesENT_FORNECEDOR: TStringField
      DefaultExpression = #39'N'#39
      DisplayLabel = 'Fornecedor'
      FieldName = 'ENT_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
  end
  object dsEntidades: TDataSource
    DataSet = qryEntidades
    Left = 252
    Top = 22
  end
  object qryConsEntidades: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'select * from nuttz_entidades order by ent_codigo')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnPostError = PostError
    Left = 241
    Top = 82
    object IntegerField5: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'ENT_CODIGO'
      ReadOnly = True
      Required = True
      DisplayFormat = '00000'
      EditFormat = '00000'
    end
    object StringField4: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'ENT_CNPJ'
      EditMask = '!99.999.999/9999-99;0; '
      Size = 14
    end
    object StringField5: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'ENT_RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object StringField15: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'ENT_NOMEFANTASIA'
      Required = True
      Size = 80
    end
    object StringField16: TStringField
      DefaultExpression = #39'00000000'#39
      FieldName = 'CEP'
      Required = True
      EditMask = '99999-999;0;0'
      FixedChar = True
      Size = 8
    end
    object IntegerField6: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'DIF'
      DisplayWidth = 1
      FieldName = 'DIFERENCIADOR'
      Required = True
    end
    object StringField17: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'ENT_NUMERO'
      FixedChar = True
      Size = 5
    end
    object StringField18: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'ENT_COMPLEMENTO'
      Size = 40
    end
    object StringField19: TStringField
      DisplayLabel = 'Fone Residencial'
      FieldName = 'ENT_FONE_RES'
      Size = 16
    end
    object StringField20: TStringField
      DisplayLabel = 'Fone Celular'
      FieldName = 'ENT_FONE_CEL'
      Size = 16
    end
    object StringField21: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'ENT_FONE_FAX'
      Size = 16
    end
    object StringField22: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'ENT_EMAIL'
      Size = 50
    end
    object StringField23: TStringField
      DisplayLabel = 'Web Site'
      FieldName = 'ENT_WEBSITE'
      Size = 100
    end
    object StringField24: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'ENT_RESPONSAVEL'
      Size = 60
    end
    object StringField25: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'ENT_RESP_CPF'
      Size = 11
    end
    object StringField26: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'ENT_RESP_CARGO'
      Size = 40
    end
    object StringField27: TStringField
      DisplayLabel = 'E-Mail Respons'#225'vel'
      FieldName = 'ENT_RESP_EMAIL'
      Size = 50
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'TIER'
      DisplayWidth = 1
      FieldName = 'FOR_TIER'
    end
  end
  object dsConsEntidades: TDataSource
    DataSet = qryConsEntidades
    Left = 252
    Top = 98
  end
  object scptCalculaParcelaDedutivel: TUniScript
    SQL.Strings = (
      'UPDATE NUTTZ_NOTASFISCAIS_ITENS A'
      '  SET A.NFI_PARCELADEDUTIVEL ='
      '      ROUND((A.NFI_VALORMERCADORIA +A.NFI_VALORII)'
      
        '      * (SELECT C.CST_FATORINOVAR FROM NUTTZ_CST C WHERE C.CST_C' +
        'ODIGO = A.CST_CODIGO)/100,2)'
      
        '      * (SELECT B.CFOP_FATOR FROM NUTTZ_CFOPS B WHERE B.CFOP_COD' +
        'IGO = A.CFOP_CODIGO)'
      'WHERE'
      '  (A.NF_TIPO = '#39'E'#39')'
      '  AND (A.NF_NUMERO'
      '      IN (SELECT D.NF_NUMERO'
      '            FROM NUTTZ_NOTASFISCAIS D'
      '           WHERE (D.NF_TIPO = A.NF_TIPO)'
      '             AND (D.NF_NUMERO = A.NF_NUMERO)'
      '             AND (D.ENT_CODIGO = A.ENT_CODIGO)'
      
        '             AND (D.NF_DATAOPERACAO BETWEEN :PDTAINI AND :PDTAFI' +
        'M)'
      '  ));'
      ''
      'UPDATE NUTTZ_NOTASFISCAIS N'
      '   SET N.NF_PARCELADEDUTIVEL ='
      '     (SELECT SUM(I.NFI_PARCELADEDUTIVEL)'
      '        FROM NUTTZ_NOTASFISCAIS_ITENS I'
      '       WHERE (I.NF_TIPO = N.NF_TIPO)'
      '         AND (I.NF_NUMERO = N.NF_NUMERO)'
      '         AND (I.ENT_CODIGO = N.ENT_CODIGO)'
      '    GROUP BY I.NF_TIPO, I.NF_NUMERO, I.ENT_CODIGO)'
      'WHERE'
      '  (N.NF_DATAOPERACAO BETWEEN :PDTAINI AND :PDTAFIM);'
      ''
      'INSERT INTO NUTTZ_PRODUTOSPARCELADEDUTIVEL'
      '  (PRDTPD_ANO,PRDTPD_MES,PRDT_CODIGO,PRDTPD_VALORUNITARIO)'
      'SELECT DISTINCT'
      '  EXTRACT(YEAR FROM N.NF_DATAOPERACAO) as Ano,'
      '  EXTRACT(MONTH FROM N.NF_DATAOPERACAO) as Mes,'
      '  I.PRDT_CODIGO,'
      
        '  ROUND(SUM(I.NFI_PARCELADEDUTIVEL)/SUM(I.NFI_QUANTIDADE),2) as ' +
        'ValorUnitario'
      'FROM'
      '  NUTTZ_NOTASFISCAIS_ITENS I'
      '  INNER JOIN NUTTZ_NOTASFISCAIS N ON (I.NF_TIPO = N.NF_TIPO)'
      '  AND (I.NF_NUMERO = N.NF_NUMERO)'
      '  AND (I.ENT_CODIGO = N.ENT_CODIGO)'
      'WHERE'
      '  (N.NF_DATAOPERACAO BETWEEN :PDTAINI AND :PDTAFIM)'
      'GROUP BY'
      '  EXTRACT(YEAR FROM N.NF_DATAOPERACAO),'
      '  EXTRACT(MONTH FROM N.NF_DATAOPERACAO),'
      '  I.PRDT_CODIGO'
      'HAVING'
      '  (SUM(I.NFI_QUANTIDADE)>0)'
      
        '  AND (ROUND(SUM(I.NFI_PARCELADEDUTIVEL)/SUM(I.NFI_QUANTIDADE),2' +
        ') > 0);')
    OnError = scptDeletaNFError
    AutoCommit = True
    Connection = DMCNX.ucCNX
    Transaction = UniTransaction1
    Left = 815
    Top = 80
  end
  object qryDeletaNF: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    Transaction = UniTransaction1
    SQL.Strings = (
      'BEGIN'
      ''
      '  DELETE FROM nuttz_notasfiscais_itens'
      '   WHERE nf_tipo = :pnf_tipo'
      '     and nf_numero = :pnf_numero'
      '     and ent_codigo = :pent_codigo;'
      ''
      '  DELETE FROM nuttz_notasfiscais'
      '   WHERE nf_tipo = :pnf_tipo'
      '     and nf_numero = :pnf_numero'
      '     and ent_codigo = :pent_codigo;'
      ''
      'END;')
    CachedUpdates = True
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnPostError = PostError
    Left = 667
    Top = 211
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pnf_tipo'
      end
      item
        DataType = ftUnknown
        Name = 'pnf_numero'
      end
      item
        DataType = ftUnknown
        Name = 'pent_codigo'
      end>
  end
  object scptDeletaProdutos: TUniScript
    SQL.Strings = (
      'DELETE FROM nuttz_produtosparceladedutivel'
      ' WHERE prdt_codigo = :pprdt_codigo;'
      ''
      'DELETE FROM nuttz_produtoscomposicao'
      ' WHERE prdtcmp_codigo = :pprdt_codigo;'
      ''
      'DELETE FROM nuttz_produtoscustomedio'
      ' WHERE prdt_codigo = :pprdt_codigo;'
      ''
      'DELETE FROM nuttz_produtos'
      ' WHERE prdt_codigo = :pprdt_codigo;')
    OnError = scptDeletaNFError
    AutoCommit = True
    Connection = DMCNX.ucCNX
    Transaction = UniTransaction1
    Left = 515
    Top = 400
  end
  object scptDeletaNF: TUniScript
    SQL.Strings = (
      'DELETE FROM nuttz_notasfiscais_itens'
      ' WHERE nf_tipo = :pnf_tipo'
      '   and nf_numero = :pnf_numero'
      '   and ent_codigo = :pent_codigo;'
      ''
      'DELETE FROM nuttz_notasfiscais'
      ' WHERE nf_tipo = :pnf_tipo'
      '   and nf_numero = :pnf_numero'
      '   and ent_codigo = :pent_codigo;')
    OnError = scptDeletaNFError
    AutoCommit = True
    Connection = DMCNX.ucCNX
    Transaction = UniTransaction1
    Left = 670
    Top = 265
  end
  object qryProdutosParcelaDedutivel: TUniQuery
    DataTypeMap = <>
    Connection = DMCNX.ucCNX
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  NUTTZ_PRODUTOSPARCELADEDUTIVEL PPD'
      'WHERE'
      '  (PPD.PRDT_CODIGO = :PPRDT_CODIGO)'
      'ORDER BY'
      '  PPD.PRDTPD_ANO DESC,'
      '  PPD.PRDTPD_MES DESC')
    Options.TrimVarChar = True
    Options.PrepareUpdateSQL = True
    Options.AutoPrepare = True
    Options.CompressBlobMode = cbClient
    Options.DefaultValues = True
    OnDeleteError = PostError
    OnPostError = PostError
    Left = 512
    Top = 277
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pPRDT_CODIGO'
        Value = 14
      end>
    object qryProdutosParcelaDedutivelPRDT_CODIGO: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRDT_CODIGO'
      Required = True
    end
    object qryProdutosParcelaDedutivelPRDTPD_ANO: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'Ano'
      FieldName = 'PRDTPD_ANO'
      Required = True
    end
    object qryProdutosParcelaDedutivelPRDTPD_MES: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'M'#234's'
      FieldName = 'PRDTPD_MES'
      Required = True
    end
    object qryProdutosParcelaDedutivelPRDTPD_VALORUNITARIO: TFloatField
      DefaultExpression = '0.00'
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'PRDTPD_VALORUNITARIO'
    end
  end
  object dsProdutosParcelaDedutivel: TDataSource
    DataSet = qryProdutosParcelaDedutivel
    Left = 523
    Top = 288
  end
  object scptDeletaParcDedutPrd: TUniScript
    SQL.Strings = (
      'DELETE FROM nuttz_produtosparceladedutivel PPD'
      ' WHERE'
      
        '   PPD.PRDTPD_ANO || PPD.PRDTPD_MES BETWEEN :PANOINI || :PMESINI' +
        ' AND :PANOFIM || :PMESFIM;')
    OnError = scptDeletaNFError
    AutoCommit = True
    Connection = DMCNX.ucCNX
    Transaction = UniTransaction1
    Left = 813
    Top = 145
  end
end
