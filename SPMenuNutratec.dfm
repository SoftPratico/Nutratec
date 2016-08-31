inherited foMenuNutratec: TfoMenuNutratec
  Caption = 'Nutratec Ind. e Com. de Prod. Agrop. Ltda - ME'
  ClientHeight = 624
  ClientWidth = 1184
  Color = 16709606
  ExplicitWidth = 1200
  ExplicitHeight = 680
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 603
    Width = 1184
    ExplicitTop = 583
    ExplicitWidth = 1184
  end
  inherited clbMenu: TCoolBar
    Width = 1184
    Bands = <
      item
        Control = tbAtalhos
        ImageIndex = -1
        MinHeight = 50
        Width = 1182
      end>
    ParentDoubleBuffered = False
    ExplicitWidth = 1184
    inherited tbAtalhos: TToolBar
      Width = 1182
      ButtonWidth = 56
      ExplicitWidth = 1182
      inherited ToolButton1: TToolButton
        Action = actPaises
        ImageIndex = 38
        ExplicitWidth = 56
      end
      inherited ToolButton2: TToolButton
        Left = 185
        Action = actLogradouros
        ExplicitLeft = 185
        ExplicitWidth = 56
      end
      inherited ToolButton3: TToolButton
        Left = 241
        Action = actEntidades
        ImageIndex = 31
        ExplicitLeft = 241
        ExplicitWidth = 56
      end
      inherited ToolButton4: TToolButton
        Left = 297
        ExplicitLeft = 297
        ExplicitWidth = 56
      end
      inherited ToolButton5: TToolButton
        Left = 353
        ExplicitLeft = 353
        ExplicitWidth = 56
      end
      inherited ToolButton6: TToolButton [6]
        Left = 409
        ExplicitLeft = 409
        ExplicitWidth = 56
      end
      inherited ToolButton7: TToolButton [7]
        Left = 465
        ExplicitLeft = 465
        ExplicitWidth = 56
      end
      inherited ToolButton8: TToolButton
        Left = 521
        ExplicitLeft = 521
        ExplicitWidth = 56
      end
      inherited ToolButton9: TToolButton
        Left = 577
        ExplicitLeft = 577
        ExplicitWidth = 56
      end
      inherited ToolButton10: TToolButton
        Left = 633
        ExplicitLeft = 633
        ExplicitWidth = 56
      end
      inherited ToolButton0: TToolButton
        Left = 689
        ExplicitLeft = 689
      end
      inherited LogOff: TToolButton
        Left = 693
        ExplicitLeft = 693
        ExplicitWidth = 56
      end
      inherited Calendario: TToolButton
        Left = 749
        ExplicitLeft = 749
        ExplicitWidth = 56
      end
      inherited Calculadora: TToolButton
        Left = 805
        ExplicitLeft = 805
        ExplicitWidth = 56
      end
      inherited Sair: TToolButton
        Left = 861
        ExplicitLeft = 861
        ExplicitWidth = 56
      end
    end
  end
  inherited sbPrin: TStatusBarPro
    Top = 604
    Width = 1184
    Panels = <
      item
        Alignment = taCenter
        Text = '1.0.0.0'
        Width = 55
      end
      item
        Alignment = taCenter
        Text = 'Usu'#225'rio'
        Width = 100
      end
      item
        Alignment = taCenter
        Text = 'Path'
        Width = 200
      end
      item
        AutoSize = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 24
        ParentFont = False
        Width = 695
      end
      item
        AutoWidth = True
        ImageIndex = 45
        Text = 'C'#243'pia Demonstrativa'
        Width = 118
      end>
    ExplicitTop = 604
    ExplicitWidth = 1184
  end
  inherited MDITab1: TMDITab
    Width = 1184
    ExplicitWidth = 1184
  end
  inherited UserControl1: TUserControl
    ApplicationID = 'Nutratec'
    ExtraRights = <
      item
        FormName = 'FELTiposEnderecos'
        CompName = 'Primeiro'
        Caption = 'Primeiro'
        GroupName = 'Lista dos Tipos de Endere'#231'os'
      end
      item
        FormName = 'FELTiposEnderecos'
        CompName = 'Anterior'
        Caption = 'Anterior'
        GroupName = 'Lista dos Tipos de Endere'#231'os'
      end
      item
        FormName = 'FELTiposEnderecos'
        CompName = 'Proximo'
        Caption = 'Pr'#243'ximo'
        GroupName = 'Lista dos Tipos de Endere'#231'os'
      end
      item
        FormName = 'FELTiposEnderecos'
        CompName = 'Ultimo'
        Caption = #218'ltimo'
        GroupName = 'Lista dos Tipos de Endere'#231'os'
      end
      item
        FormName = 'FELTiposEnderecos'
        CompName = 'Pesquisar'
        Caption = 'Pesquisar'
        GroupName = 'Lista dos Tipos de Endere'#231'os'
      end
      item
        FormName = 'FELTiposEnderecos'
        CompName = 'Filtrar'
        Caption = 'Filtrar'
        GroupName = 'Lista dos Tipos de Endere'#231'os'
      end
      item
        FormName = 'FELTiposEnderecos'
        CompName = 'Novo'
        Caption = 'Novo'
        GroupName = 'Lista dos Tipos de Endere'#231'os'
      end
      item
        FormName = 'FELTiposEnderecos'
        CompName = 'Alterar'
        Caption = 'Alterar'
        GroupName = 'Lista dos Tipos de Endere'#231'os'
      end
      item
        FormName = 'FELTiposEnderecos'
        CompName = 'Excluir'
        Caption = 'Excluir'
        GroupName = 'Lista dos Tipos de Endere'#231'os'
      end
      item
        FormName = 'FELTiposEnderecos'
        CompName = 'Exportar'
        Caption = 'Exportar'
        GroupName = 'Lista dos Tipos de Endere'#231'os'
      end
      item
        FormName = 'FELTiposEnderecos'
        CompName = 'Importar'
        Caption = 'Importar'
        GroupName = 'Lista dos Tipos de Endere'#231'os'
      end
      item
        FormName = 'Relatorios'
        CompName = 'actNovo'
        Caption = 'Novo'
        GroupName = 'Relat'#243'rios'
      end
      item
        FormName = 'Relatorios'
        CompName = 'actAlterar'
        Caption = 'Alterar'
        GroupName = 'Relat'#243'rios'
      end
      item
        FormName = 'Relatorios'
        CompName = 'actExcluir'
        Caption = 'Excluir'
        GroupName = 'Relat'#243'rios'
      end
      item
        FormName = 'Relatorios'
        CompName = 'actExportar'
        Caption = 'Exportar'
        GroupName = 'Relat'#243'rios'
      end
      item
        FormName = 'Relatorios'
        CompName = 'actVisualizar'
        Caption = 'Visualizar'
        GroupName = 'Relat'#243'rios'
      end
      item
        FormName = 'Relatorios'
        CompName = 'actImprimir'
        Caption = 'Imprimir'
        GroupName = 'Relat'#243'rios'
      end
      item
        FormName = 'Relatorios'
        CompName = 'mnImpCadastros'
        Caption = 'Cadastros'
        GroupName = 'Relat'#243'rios'
      end
      item
        FormName = 'Relatorios'
        CompName = 'mnImpMovimentacoes'
        Caption = 'Movimenta'#231#245'es'
        GroupName = 'Relat'#243'rios'
      end
      item
        FormName = 'Relatorios'
        CompName = 'mnImpGerenciais'
        Caption = 'Gerenciais'
        GroupName = 'Relat'#243'rios'
      end
      item
        FormName = 'FBEPaises'
        CompName = 'Primeiro'
        Caption = 'Primeiro'
        GroupName = 'Cadastro de Paises'
      end
      item
        FormName = 'FBEPaises'
        CompName = 'Anterior'
        Caption = 'Anterior'
        GroupName = 'Cadastro de Paises'
      end
      item
        FormName = 'FBEPaises'
        CompName = 'Proximo'
        Caption = 'Pr'#243'ximo'
        GroupName = 'Cadastro de Paises'
      end
      item
        FormName = 'FBEPaises'
        CompName = 'Ultimo'
        Caption = #218'ltimo'
        GroupName = 'Cadastro de Paises'
      end
      item
        FormName = 'FBEPaises'
        CompName = 'Pesquisar'
        Caption = 'Pesquisar'
        GroupName = 'Cadastro de Paises'
      end
      item
        FormName = 'FBEPaises'
        CompName = 'Filtrar'
        Caption = 'Filtrar'
        GroupName = 'Cadastro de Paises'
      end
      item
        FormName = 'FBEPaises'
        CompName = 'Novo'
        Caption = 'Novo'
        GroupName = 'Cadastro de Paises'
      end
      item
        FormName = 'FBEPaises'
        CompName = 'Alterar'
        Caption = 'Alterar'
        GroupName = 'Cadastro de Paises'
      end
      item
        FormName = 'FBEPaises'
        CompName = 'Excluir'
        Caption = 'Excluir'
        GroupName = 'Cadastro de Paises'
      end
      item
        FormName = 'FBEPaises'
        CompName = 'Exportar'
        Caption = 'Exportar'
        GroupName = 'Cadastro de Paises'
      end
      item
        FormName = 'FBEPaises'
        CompName = 'Importar'
        Caption = 'Importar'
        GroupName = 'Cadastro de Paises'
      end
      item
        FormName = 'FBELogradouros'
        CompName = 'Primeiro'
        Caption = 'Primeiro'
        GroupName = 'Cadastro de Logradouros'
      end
      item
        FormName = 'FBELogradouros'
        CompName = 'Anterior'
        Caption = 'Anterior'
        GroupName = 'Cadastro de Logradouros'
      end
      item
        FormName = 'FBELogradouros'
        CompName = 'Proximo'
        Caption = 'Pr'#243'ximo'
        GroupName = 'Cadastro de Logradouros'
      end
      item
        FormName = 'FBELogradouros'
        CompName = 'Ultimo'
        Caption = #218'ltimo'
        GroupName = 'Cadastro de Logradouros'
      end
      item
        FormName = 'FBELogradouros'
        CompName = 'Pesquisar'
        Caption = 'Pesquisar'
        GroupName = 'Cadastro de Logradouros'
      end
      item
        FormName = 'FBELogradouros'
        CompName = 'Filtrar'
        Caption = 'Filtrar'
        GroupName = 'Cadastro de Logradouros'
      end
      item
        FormName = 'FBELogradouros'
        CompName = 'Novo'
        Caption = 'Novo'
        GroupName = 'Cadastro de Logradouros'
      end
      item
        FormName = 'FBELogradouros'
        CompName = 'Alterar'
        Caption = 'Alterar'
        GroupName = 'Cadastro de Logradouros'
      end
      item
        FormName = 'FBELogradouros'
        CompName = 'Excluir'
        Caption = 'Excluir'
        GroupName = 'Cadastro de Logradouros'
      end
      item
        FormName = 'FBELogradouros'
        CompName = 'Exportar'
        Caption = 'Exportar'
        GroupName = 'Cadastro de Logradouros'
      end
      item
        FormName = 'FBELogradouros'
        CompName = 'Importar'
        Caption = 'Importar'
        GroupName = 'Cadastro de Logradouros'
      end
      item
        FormName = 'FBECFOPS'
        CompName = 'Primeiro'
        Caption = 'Primeiro'
        GroupName = 'Cadastro de CFOPs'
      end
      item
        FormName = 'FBECFOPS'
        CompName = 'Anterior'
        Caption = 'Anterior'
        GroupName = 'Cadastro de CFOPs'
      end
      item
        FormName = 'FBECFOPS'
        CompName = 'Proximo'
        Caption = 'Pr'#243'ximo'
        GroupName = 'Cadastro de CFOPs'
      end
      item
        FormName = 'FBECFOPS'
        CompName = 'Ultimo'
        Caption = #218'ltimo'
        GroupName = 'Cadastro de CFOPs'
      end
      item
        FormName = 'FBECFOPS'
        CompName = 'Pesquisar'
        Caption = 'Pesquisar'
        GroupName = 'Cadastro de CFOPs'
      end
      item
        FormName = 'FBECFOPS'
        CompName = 'Filtrar'
        Caption = 'Filtrar'
        GroupName = 'Cadastro de CFOPs'
      end
      item
        FormName = 'FBECFOPS'
        CompName = 'Novo'
        Caption = 'Novo'
        GroupName = 'Cadastro de CFOPs'
      end
      item
        FormName = 'FBECFOPS'
        CompName = 'Alterar'
        Caption = 'Alterar'
        GroupName = 'Cadastro de CFOPs'
      end
      item
        FormName = 'FBECFOPS'
        CompName = 'Excluir'
        Caption = 'Excluir'
        GroupName = 'Cadastro de CFOPs'
      end
      item
        FormName = 'FBECFOPS'
        CompName = 'Importar'
        Caption = 'Importar'
        GroupName = 'Cadastro de CFOPs'
      end
      item
        FormName = 'FBECFOPS'
        CompName = 'Exportar'
        Caption = 'Exportar'
        GroupName = 'Cadastro de CFOPs'
      end
      item
        FormName = 'FBECSTS'
        CompName = 'Primeiro'
        Caption = 'Primeiro'
        GroupName = 'Cadastro de CSTs'
      end
      item
        FormName = 'FBECSTS'
        CompName = 'Anterior'
        Caption = 'Anterior'
        GroupName = 'Cadastro de CSTs'
      end
      item
        FormName = 'FBECSTS'
        CompName = 'Proximo'
        Caption = 'Pr'#243'ximo'
        GroupName = 'Cadastro de CSTs'
      end
      item
        FormName = 'FBECSTS'
        CompName = 'Ultimo'
        Caption = #218'ltimo'
        GroupName = 'Cadastro de CSTs'
      end
      item
        FormName = 'FBECSTS'
        CompName = 'Pesquisar'
        Caption = 'Pesquisar'
        GroupName = 'Cadastro de CSTs'
      end
      item
        FormName = 'FBECSTS'
        CompName = 'Filtrar'
        Caption = 'Filtrar'
        GroupName = 'Cadastro de CSTs'
      end
      item
        FormName = 'FBECSTS'
        CompName = 'Novo'
        Caption = 'Novo'
        GroupName = 'Cadastro de CSTs'
      end
      item
        FormName = 'FBECSTS'
        CompName = 'Alterar'
        Caption = 'Alterar'
        GroupName = 'Cadastro de CSTs'
      end
      item
        FormName = 'FBECSTS'
        CompName = 'Excluir'
        Caption = 'Excluir'
        GroupName = 'Cadastro de CSTs'
      end
      item
        FormName = 'FBECSTS'
        CompName = 'Importar'
        Caption = 'Importar'
        GroupName = 'Cadastro de CSTs'
      end
      item
        FormName = 'FBECSTS'
        CompName = 'Exportar'
        Caption = 'Exportar'
        GroupName = 'Cadastro de CSTs'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'Primeiro'
        Caption = 'Primeiro'
        GroupName = 'Cadastro de Entidades'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'Anterior'
        Caption = 'Anterior'
        GroupName = 'Cadastro de Entidades'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'Proximo'
        Caption = 'Pr'#243'ximo'
        GroupName = 'Cadastro de Entidades'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'Ultimo'
        Caption = #218'ltimo'
        GroupName = 'Cadastro de Entidades'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'Pesquisar'
        Caption = 'Pesquisar'
        GroupName = 'Cadastro de Entidades'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'Filtrar'
        Caption = 'Filtrar'
        GroupName = 'Cadastro de Entidades'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'Novo'
        Caption = 'Novo'
        GroupName = 'Cadastro de Entidades'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'Alterar'
        Caption = 'Alterar'
        GroupName = 'Cadastro de Entidades'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'Excluir'
        Caption = 'Excluir'
        GroupName = 'Cadastro de Entidades'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'Importar'
        Caption = 'Importar'
        GroupName = 'Cadastro de Entidades'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'Exportar'
        Caption = 'Exportar'
        GroupName = 'Cadastro de Entidades'
      end
      item
        FormName = 'FBEEntidades'
        CompName = 'ImportaClientesXMLNFe'
        Caption = 'Importar XML'
        GroupName = 'Cadastro de Entidades'
      end>
  end
  inherited ActionList1: TActionList
    object actNFsEntrada: TAction [0]
      Tag = 123
      Category = '&Vendas'
      Caption = 'Notas Fiscais de &Entrada'
      ImageIndex = 53
      OnExecute = actExecute
    end
    object actCFOP: TAction [6]
      Tag = 118
      Category = '&Produto'
      Caption = 'CFOP'
      Hint = 'Cadastro de CFOP'
      ImageIndex = 57
      OnExecute = actExecute
    end
    object actEntidades: TAction
      Tag = 112
      Category = '&Principais'
      Caption = '&Entidades'
      Hint = 'Manuten'#231#227'o no cadastro de entidades'
      ImageIndex = 56
      OnExecute = actExecute
    end
    object actProdutos: TAction
      Tag = 120
      Category = '&Produto'
      Caption = '&Produtos'
      Hint = 'Manuten'#231#227'o no cadastro de produtos'
      ImageIndex = 44
      OnExecute = actExecute
    end
    object actNFsSaida: TAction
      Tag = 124
      Category = '&Vendas'
      Caption = 'Notas Fiscais de &Sa'#237'da'
      ImageIndex = 53
      OnExecute = actExecute
    end
    object actImportarDados: TAction
      Tag = 127
      Category = 'U&tilit'#225'rios'
      Caption = '&Importar Dados de Terceiros'
      Hint = 'Importa dados do software de terceiros'
      ImageIndex = 7
      OnExecute = actExecute
    end
    object actParcDedut: TAction
      Tag = 125
      Category = '&Vendas'
      Caption = 'Parc. Dedut'#237'vel'
      Hint = 'Gera parcelas dedut'#237'veis'
      ImageIndex = 54
      OnExecute = actExecute
    end
    object actCST: TAction
      Tag = 126
      Category = '&Produto'
      Caption = 'CST'
      Hint = 'Cadastro de CST'
      ImageIndex = 57
      OnExecute = actExecute
    end
  end
  inherited MainMenu1: TMainMenu
    inherited Arquivos1: TMenuItem
      inherited Paises2: TMenuItem
        ImageIndex = 33
      end
      object Montadoras1: TMenuItem [3]
        Action = actEntidades
      end
      object N2: TMenuItem [4]
        Caption = '-'
      end
      object CFOP1: TMenuItem [5]
        Action = actCFOP
      end
      object CST1: TMenuItem [6]
        Action = actCST
      end
      object N4: TMenuItem [7]
        Caption = '-'
      end
    end
    inherited Lanamentos1: TMenuItem
      object NotasFiscaisEntrada1: TMenuItem
        Action = actNFsEntrada
      end
      object NotasFiscaisdeSada1: TMenuItem
        Action = actNFsSaida
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object ParcelaDedutvel1: TMenuItem
        Action = actParcDedut
      end
    end
    inherited Utilitrios1: TMenuItem
      object ImportarDadosdeTerceiros1: TMenuItem [6]
        Action = actImportarDados
      end
      object N5: TMenuItem [7]
        Caption = '-'
      end
    end
  end
  object mnNFs: TPopupMenu [11]
    Images = DMCNX.ImageListMnu
    Left = 120
    Top = 280
    object NotasFiscaisdeEntrada1: TMenuItem
      Action = actNFsEntrada
    end
    object NotasFiscaisdeSada2: TMenuItem
      Action = actNFsSaida
    end
  end
end
