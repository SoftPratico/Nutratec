inherited FBECFOPS: TFBECFOPS
  Caption = 'Cadastro de CFOPs'
  ClientHeight = 413
  ClientWidth = 946
  ExplicitWidth = 962
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited SplitterLblForm: TSplitter
    Height = 413
    ExplicitHeight = 413
  end
  inherited pnEdicao: TPanel
    Width = 634
    Height = 413
    ExplicitWidth = 634
    ExplicitHeight = 413
    inherited ToolBar2: TToolBar
      Width = 634
      ExplicitWidth = 634
      inherited Primeiro: TToolButton
        ExplicitWidth = 45
      end
      inherited Anterior: TToolButton
        ExplicitWidth = 44
      end
      inherited Proximo: TToolButton
        ExplicitWidth = 44
      end
      inherited Ultimo: TToolButton
        ExplicitWidth = 39
      end
      inherited Pesquisar: TToolButton
        ExplicitWidth = 67
      end
      inherited Filtrar: TToolButton
        ExplicitWidth = 67
      end
      inherited Importar: TToolButton
        ExplicitWidth = 47
      end
      inherited Exportar: TToolButton
        ExplicitWidth = 45
      end
    end
    inherited pcEdit: TPageControl
      Width = 634
      Height = 320
      ExplicitWidth = 634
      ExplicitHeight = 320
      inherited tsCadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 626
        ExplicitHeight = 291
        object Label1: TLabel
          Left = 10
          Top = 5
          Width = 29
          Height = 14
          Caption = 'CFOP'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 55
          Width = 54
          Height = 14
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 10
          Top = 110
          Width = 56
          Height = 14
          Caption = 'Devolu'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 10
          Top = 165
          Width = 21
          Height = 14
          Caption = 'Uso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Tag = 1
          Left = 10
          Top = 20
          Width = 55
          Height = 21
          DataField = 'CODIGOCFOP'
          DataSource = DMNT.dsCFOPS
          MaxLength = 4
          TabOrder = 0
          OnExit = ExecutaValidacao
        end
        object DBEdit2: TDBEdit
          Tag = 2
          Left = 10
          Top = 70
          Width = 601
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'DESCRICAO'
          DataSource = DMNT.dsCFOPS
          TabOrder = 1
          OnExit = ExecutaValidacao
        end
        object cbxTipoPessoa: TSMDBComboBox
          Tag = 3
          Left = 10
          Top = 125
          Width = 66
          Height = 19
          Style = csOwnerDrawFixed
          DataField = 'DEVOLUCAO'
          DataSource = DMNT.dsCFOPS
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
          OnExit = ExecutaValidacao
        end
        object SMDBComboBox1: TSMDBComboBox
          Tag = 4
          Left = 10
          Top = 180
          Width = 119
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'USO'
          DataSource = DMNT.dsCFOPS
          EnableValues = True
          Items.Strings = (
            'Importa'#231#227'o'
            'Exporta'#231#227'o'
            'Dentro do Estado'
            'Fora do Estado'
            'Servi'#231'o')
          TabOrder = 3
          Values.Strings = (
            'I'
            'E'
            'D'
            'F'
            'S')
        end
      end
    end
    inherited Panel3: TPanel
      Top = 378
      Width = 634
      ExplicitTop = 378
      ExplicitWidth = 634
      inherited Cancelar: TBitBtn
        Left = 554
        ExplicitLeft = 554
      end
      inherited Gravar: TBitBtn
        Left = 469
        ExplicitLeft = 469
      end
      inherited Aplicar: TBitBtn
        Left = 384
        ExplicitLeft = 384
      end
    end
  end
  inherited pnGrid: TPanel
    Height = 413
    ExplicitHeight = 413
    inherited GPanel2: TGPanel
      Top = 394
      ExplicitTop = 394
      inherited lblReg: TLabel
        Width = 285
        Height = 19
      end
    end
    inherited GridBrowse: TSMDBGrid
      Height = 394
    end
  end
  inherited GPanel1: TGPanel
    Height = 413
    ExplicitHeight = 413
    inherited lblForm: TAngleLabel
      Height = 413
      ExplicitHeight = 413
    end
  end
  inherited UCControls1: TUCControls
    GroupName = 'Cadastro de CFOPs'
    UserControl = foMenuNutratec.UserControl1
  end
end
