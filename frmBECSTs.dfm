inherited FBECSTS: TFBECSTS
  Caption = 'Cadastro de CSTs'
  ClientHeight = 472
  ClientWidth = 934
  ExplicitWidth = 950
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 13
  inherited SplitterLblForm: TSplitter
    Height = 472
    ExplicitHeight = 472
  end
  inherited pnEdicao: TPanel
    Width = 622
    Height = 472
    ExplicitWidth = 622
    ExplicitHeight = 472
    inherited ToolBar2: TToolBar
      Width = 622
      ExplicitWidth = 622
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
      Width = 622
      Height = 379
      ExplicitWidth = 622
      ExplicitHeight = 379
      inherited tsCadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 614
        ExplicitHeight = 350
        object Label1: TLabel
          Left = 10
          Top = 5
          Width = 39
          Height = 14
          Caption = 'C'#243'digo'
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
          Width = 65
          Height = 14
          Caption = 'D'#237'gito Fiscal'
          FocusControl = SMDBComboBox1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 10
          Top = 160
          Width = 62
          Height = 14
          Caption = 'Fator Fiscal'
          FocusControl = DBEdit3
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
          Width = 43
          Height = 21
          DataField = 'CODIGOCST'
          DataSource = DMNT.dsCST
          TabOrder = 0
          OnExit = DBEdit1Exit
        end
        object DBEdit2: TDBEdit
          Tag = 2
          Left = 10
          Top = 70
          Width = 591
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'DESCRICAO'
          DataSource = DMNT.dsCST
          TabOrder = 1
          OnExit = DBEdit1Exit
        end
        object SMDBComboBox1: TSMDBComboBox
          Tag = 3
          Left = 10
          Top = 125
          Width = 39
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'DIGITOFISCAL'
          DataSource = DMNT.dsCST
          EnableValues = False
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8')
          TabOrder = 2
          OnExit = DBEdit1Exit
        end
        object DBEdit3: TDBEdit
          Tag = 4
          Left = 10
          Top = 175
          Width = 39
          Height = 21
          DataField = 'FATORFISCAL'
          DataSource = DMNT.dsCST
          TabOrder = 3
          OnExit = DBEdit1Exit
        end
      end
    end
    inherited Panel3: TPanel
      Top = 437
      Width = 622
      ExplicitTop = 437
      ExplicitWidth = 622
      inherited Cancelar: TBitBtn
        Left = 542
        ExplicitLeft = 542
      end
      inherited Gravar: TBitBtn
        Left = 457
        ExplicitLeft = 457
      end
      inherited Aplicar: TBitBtn
        Left = 372
        ExplicitLeft = 372
      end
    end
  end
  inherited pnGrid: TPanel
    Height = 472
    ExplicitHeight = 472
    inherited GPanel2: TGPanel
      Top = 453
      ExplicitTop = 453
      inherited lblReg: TLabel
        Width = 285
        Height = 19
      end
    end
    inherited GridBrowse: TSMDBGrid
      Height = 453
    end
  end
  inherited GPanel1: TGPanel
    Height = 472
    ExplicitHeight = 472
    inherited lblForm: TAngleLabel
      Height = 472
      ExplicitHeight = 472
    end
  end
  inherited UCControls1: TUCControls
    GroupName = 'Cadastro de CSTs'
    UserControl = foMenuNutratec.UserControl1
  end
end
