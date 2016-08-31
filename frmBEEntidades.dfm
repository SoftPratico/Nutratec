inherited FBEEntidades: TFBEEntidades
  Caption = 'Cadastro de Entidades'
  ClientHeight = 564
  ClientWidth = 1258
  ExplicitTop = -88
  ExplicitWidth = 1274
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited SplitterLblForm: TSplitter
    Height = 564
    ExplicitHeight = 584
  end
  inherited pnEdicao: TPanel
    Width = 946
    Height = 564
    ExplicitWidth = 946
    ExplicitHeight = 564
    inherited ToolBar2: TToolBar
      Width = 946
      ButtonWidth = 69
      ExplicitWidth = 946
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
        ExplicitWidth = 71
      end
      inherited Filtrar: TToolButton
        ExplicitWidth = 60
      end
      inherited Novo: TToolButton
        ExplicitWidth = 46
      end
      inherited Alterar: TToolButton
        ExplicitWidth = 51
      end
      inherited Excluir: TToolButton
        ExplicitWidth = 49
      end
      inherited Importar: TToolButton
        ExplicitWidth = 47
      end
      inherited Exportar: TToolButton
        ExplicitWidth = 45
      end
      inherited ToolButton17: TToolButton
        Enabled = False
      end
      inherited Sair: TToolButton
        Enabled = False
        ExplicitWidth = 69
      end
      object ImportaClientesXMLNFe: TToolButton
        Left = 622
        Top = 0
        Cursor = crHandPoint
        Hint = 'Importar clientes a partir do arquivo XML da NF-e'
        AutoSize = True
        Caption = 'Importar XML'
        Enabled = False
        ImageIndex = 49
        Wrap = True
        OnClick = ImportaClientesXMLNFeClick
      end
    end
    inherited pcEdit: TPageControl
      Width = 946
      Height = 471
      OnChange = pcEditChange
      ExplicitWidth = 946
      ExplicitHeight = 471
      inherited tsCadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 938
        ExplicitHeight = 442
        object Label10: TLabel
          Left = 10
          Top = 5
          Width = 39
          Height = 14
          Caption = 'C'#243'digo'
          FocusControl = DBEdit11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 85
          Width = 102
          Height = 14
          Caption = 'Raz'#227'o Social/Nome'
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
          Top = 47
          Width = 125
          Height = 14
          Caption = 'Nome Fantasia/Apelido'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 104
          Top = 5
          Width = 52
          Height = 14
          Caption = 'CNPJ/CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 334
          Top = 5
          Width = 117
          Height = 14
          Caption = 'Inscri'#231#227'o Estadual/RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 718
          Top = 134
          Width = 93
          Height = 14
          Anchors = [akTop, akRight]
          Caption = 'Fone Residencial'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 718
          Top = 186
          Width = 89
          Height = 14
          Anchors = [akTop, akRight]
          Caption = 'Fone Comercial '
          FocusControl = DBEdit8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 718
          Top = 236
          Width = 39
          Height = 14
          Anchors = [akTop, akRight]
          Caption = 'Celular'
          FocusControl = DBEdit9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 10
          Top = 269
          Width = 32
          Height = 14
          Caption = 'E-Mail'
          FocusControl = DBEdit12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 520
          Top = 269
          Width = 48
          Height = 14
          Caption = 'Web Site'
          FocusControl = DBEdit10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit11: TDBEdit
          Left = 10
          Top = 20
          Width = 69
          Height = 21
          DataField = 'CODIGOENTIDADE'
          DataSource = DMNT.dsEntidades
          TabOrder = 0
          OnChange = DBEdit11Change
          OnExit = ExecutaValidacao
        end
        object GroupBox2: TGroupBox
          Left = 750
          Top = 5
          Width = 175
          Height = 47
          Anchors = [akTop, akRight]
          Caption = 'Tipo Entidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object DBCheckBox1: TDBCheckBox
            Left = 10
            Top = 21
            Width = 79
            Height = 17
            Caption = 'Cliente'
            DataField = 'CLIENTE'
            DataSource = DMNT.dsEntidades
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = DBCheckBox1Click
          end
          object DBCheckBox2: TDBCheckBox
            Left = 93
            Top = 21
            Width = 79
            Height = 17
            Caption = 'Fornecedor'
            DataField = 'FORNECEDOR'
            DataSource = DMNT.dsEntidades
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = DBCheckBox1Click
          end
        end
        object DBEdit2: TDBEdit
          Tag = 2
          Left = 10
          Top = 99
          Width = 915
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'RAZAOSOCIAL'
          DataSource = DMNT.dsEntidades
          TabOrder = 5
          OnExit = ExecutaValidacao
        end
        object DBEdit3: TDBEdit
          Tag = 3
          Left = 10
          Top = 61
          Width = 915
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NOMEFANTASIA'
          DataSource = DMNT.dsEntidades
          TabOrder = 4
          OnExit = ExecutaValidacao
        end
        object DBEditCNPJCPF1: TDBEditCNPJCPF
          Left = 104
          Top = 21
          Width = 197
          Height = 21
          DataField = 'CNPJ_CPF'
          DataSource = DMNT.dsEntidades
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 334
          Top = 21
          Width = 191
          Height = 21
          DataField = 'IE_RG'
          DataSource = DMNT.dsEntidades
          TabOrder = 2
          OnExit = ExecutaValidacao
        end
        object GroupBox1: TGroupBox
          Left = 10
          Top = 124
          Width = 699
          Height = 143
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          DesignSize = (
            699
            143)
          object Label1: TLabel
            Left = 585
            Top = 44
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            AutoSize = False
            Caption = 'N'#250'mero'
            FocusControl = DBEdit4
            Transparent = True
            ExplicitLeft = 492
          end
          object Label4: TLabel
            Left = 5
            Top = 19
            Width = 31
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'C.E.P.'
            Transparent = True
          end
          object DBEdit4: TDBEdit
            Tag = 4
            Left = 633
            Top = 41
            Width = 59
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'END_NUMERO'
            DataSource = DMNT.dsEntidades
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnExit = ExecutaValidacao
          end
          object lkpCEP: TDBLookupComboPlus
            Tag = 6
            Left = 41
            Top = 15
            Width = 76
            Height = 21
            DisplayFields.Strings = (
              'edtEndereco;Endereco'
              'edtBairro;Bairro'
              'edtCidade;Cidade'
              'edtEstado;UF'
              'DBEdit5;Diferenciador')
            DataField = 'CEP'
            DataSource = DMNT.dsEntidades
            LookupSource = DMGEN.dsConsLogradouros
            LookupDisplay = 'CEP;Endereco;Bairro;Cidade;UF'
            LookupField = 'CEP'
            DropDownWidth = 400
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ListColor = clInfoBk
            ListFont.Charset = DEFAULT_CHARSET
            ListFont.Color = clWindowText
            ListFont.Height = -11
            ListFont.Name = 'MS Sans Serif'
            ListFont.Style = []
            ListCursor = crDefault
            ButtonCursor = crHandPoint
            ParentFont = False
            TabOrder = 0
            OnExit = ExecutaValidacao
          end
          object edtEndereco: TEdit
            Tag = 998
            Left = 5
            Top = 41
            Width = 571
            Height = 21
            TabStop = False
            Anchors = [akLeft, akTop, akRight]
            Color = clCream
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object edtBairro: TEdit
            Tag = 998
            Left = 5
            Top = 66
            Width = 687
            Height = 21
            TabStop = False
            Anchors = [akLeft, akTop, akRight]
            Color = clCream
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object edtCidade: TEdit
            Tag = 998
            Left = 5
            Top = 91
            Width = 653
            Height = 21
            TabStop = False
            Anchors = [akLeft, akTop, akRight]
            Color = clCream
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object edtEstado: TEdit
            Tag = 998
            Left = 661
            Top = 91
            Width = 31
            Height = 21
            TabStop = False
            Anchors = [akTop, akRight]
            Color = clCream
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit5: TDBEdit
            Tag = 997
            Left = 128
            Top = 15
            Width = 18
            Height = 21
            DataField = 'DIFERENCIADOR'
            DataSource = DMNT.dsEntidades
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit6: TDBEdit
            Tag = 6
            Left = 5
            Top = 116
            Width = 687
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'END_COMPLEMENTO'
            DataSource = DMNT.dsEntidades
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnExit = ExecutaValidacao
          end
        end
        object DBEdit7: TDBEdit
          Tag = 7
          Left = 715
          Top = 154
          Width = 207
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'FONE_RESIDENCIAL'
          DataSource = DMNT.dsEntidades
          TabOrder = 7
          OnExit = ExecutaValidacao
        end
        object DBEdit8: TDBEdit
          Tag = 8
          Left = 718
          Top = 203
          Width = 207
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'FONE_COMERCIAL'
          DataSource = DMNT.dsEntidades
          TabOrder = 8
          OnExit = ExecutaValidacao
        end
        object DBEdit9: TDBEdit
          Tag = 9
          Left = 718
          Top = 254
          Width = 207
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'FONE_CELULAR'
          DataSource = DMNT.dsEntidades
          TabOrder = 9
          OnExit = ExecutaValidacao
        end
        object DBEdit12: TDBEdit
          Left = 10
          Top = 284
          Width = 501
          Height = 21
          DataField = 'EMAIL'
          DataSource = DMNT.dsEntidades
          TabOrder = 10
        end
        object DBEdit10: TDBEdit
          Tag = 10
          Left = 520
          Top = 284
          Width = 406
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'SITE'
          DataSource = DMNT.dsEntidades
          TabOrder = 11
          OnExit = ExecutaValidacao
        end
        object Panel1: TPanel
          Left = 0
          Top = 312
          Width = 938
          Height = 128
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 12
          object pnlCliente: TPanel
            Left = 0
            Top = 0
            Width = 665
            Height = 128
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label13: TLabel
              Left = 10
              Top = 0
              Width = 89
              Height = 14
              Caption = 'Time de Futebol'
              FocusControl = DBEdit13
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 10
              Top = 45
              Width = 108
              Height = 14
              Caption = 'Data de Nascimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit13: TDBEdit
              Tag = 9
              Left = 10
              Top = 17
              Width = 199
              Height = 21
              DataField = 'TIMEFUTEBOL'
              DataSource = DMNT.dsEntidades
              TabOrder = 0
              OnExit = ExecutaValidacao
            end
            object DBEditDate1: TDBEditDate
              Left = 10
              Top = 58
              Width = 108
              Height = 21
              EditMask = '99/99/9999;0; '
              MaxLength = 10
              TabOrder = 1
              DataField = 'DATANASCIMENTO'
              DataSource = DMNT.dsEntidades
              MaxYear = 2016
            end
            object GroupBox3: TGroupBox
              Left = 220
              Top = 0
              Width = 175
              Height = 128
              Align = alRight
              Caption = 'Aqu'#225'rios'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              inline frameEditEntAquario1: TframeEditEntAquario
                Left = 2
                Top = 15
                Width = 171
                Height = 111
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ExplicitLeft = 2
                ExplicitTop = 15
                ExplicitWidth = 171
                ExplicitHeight = 111
                inherited tlbEdita: TToolBar
                  Width = 171
                  ExplicitWidth = 171
                  inherited btnIncluir: TToolButton
                    ExplicitWidth = 59
                  end
                  inherited btnExcluir: TToolButton
                    Left = 59
                    ExplicitLeft = 59
                  end
                end
                inherited grdEditaReg: TcxGrid
                  Width = 171
                  Height = 85
                  LookAndFeel.SkinName = ''
                  ExplicitWidth = 171
                  ExplicitHeight = 85
                  inherited cxGridDBTableView1: TcxGridDBTableView
                    Styles.Background = nil
                    Styles.Content = nil
                    Styles.ContentEven = nil
                    Styles.ContentOdd = nil
                    Styles.FilterBox = nil
                    Styles.Inactive = nil
                    Styles.IncSearch = nil
                    Styles.Selection = nil
                    Styles.Footer = nil
                    Styles.Group = nil
                    Styles.GroupByBox = nil
                    Styles.Header = nil
                    Styles.Indicator = nil
                    Styles.Preview = nil
                  end
                end
              end
            end
            object GroupBox4: TGroupBox
              AlignWithMargins = True
              Left = 405
              Top = 0
              Width = 260
              Height = 128
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alRight
              Caption = 'Pontos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              object cxGrid1: TcxGrid
                Left = 2
                Top = 15
                Width = 256
                Height = 111
                Align = alClient
                BorderStyle = cxcbsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object cxGrid1DBTableView1: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  Navigator.Buttons.First.Visible = True
                  Navigator.Buttons.PriorPage.Visible = True
                  Navigator.Buttons.Prior.Visible = True
                  Navigator.Buttons.Next.Visible = True
                  Navigator.Buttons.NextPage.Visible = True
                  Navigator.Buttons.Last.Visible = True
                  Navigator.Buttons.Insert.Visible = True
                  Navigator.Buttons.Append.Visible = False
                  Navigator.Buttons.Delete.Visible = True
                  Navigator.Buttons.Edit.Visible = True
                  Navigator.Buttons.Post.Visible = True
                  Navigator.Buttons.Cancel.Visible = True
                  Navigator.Buttons.Refresh.Visible = True
                  Navigator.Buttons.SaveBookmark.Visible = True
                  Navigator.Buttons.GotoBookmark.Visible = True
                  Navigator.Buttons.Filter.Visible = True
                  DataController.DataSource = DMNT.dsEntidades_Pontos
                  DataController.Summary.DefaultGroupSummaryItems = <
                    item
                      Kind = skSum
                      Position = spFooter
                      Column = cxGrid1DBTableView1PONTOS
                    end
                    item
                      Kind = skSum
                      Column = cxGrid1DBTableView1PONTOS
                    end>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      Column = cxGrid1DBTableView1PONTOS
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.AlwaysShowEditor = True
                  OptionsBehavior.FocusCellOnTab = True
                  OptionsBehavior.FocusFirstCellOnNewRecord = True
                  OptionsBehavior.GoToNextCellOnEnter = True
                  OptionsBehavior.FocusCellOnCycle = True
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsCustomize.ColumnMoving = False
                  OptionsCustomize.ColumnSorting = False
                  OptionsCustomize.DataRowSizing = True
                  OptionsData.Appending = True
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsSelection.HideFocusRectOnExit = False
                  OptionsSelection.UnselectFocusedRecordOnExit = False
                  OptionsView.ShowEditButtons = gsebAlways
                  OptionsView.CellAutoHeight = True
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderAutoHeight = True
                  Styles.StyleSheet = DMSKN.GridTableViewStyleSheetDevExpress
                  object cxGrid1DBTableView1NF: TcxGridDBColumn
                    DataBinding.FieldName = 'NF'
                    Width = 53
                  end
                  object cxGrid1DBTableView1DATA_NF: TcxGridDBColumn
                    DataBinding.FieldName = 'DATA_NF'
                    Width = 117
                  end
                  object cxGrid1DBTableView1TIPO: TcxGridDBColumn
                    DataBinding.FieldName = 'TIPO'
                    Width = 36
                  end
                  object cxGrid1DBTableView1PONTOS: TcxGridDBColumn
                    DataBinding.FieldName = 'PONTOS'
                    Width = 50
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  GridView = cxGrid1DBTableView1
                end
              end
            end
          end
          object Panel4: TPanel
            AlignWithMargins = True
            Left = 675
            Top = 0
            Width = 250
            Height = 127
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 13
            Margins.Bottom = 1
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object pnlObservacao: TGroupBox
              Left = 0
              Top = 38
              Width = 250
              Height = 89
              Align = alClient
              Caption = 'Observa'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object DBMemo1: TDBMemo
                Left = 2
                Top = 15
                Width = 246
                Height = 72
                Align = alClient
                BorderStyle = bsNone
                DataField = 'OBSERVACAO'
                DataSource = DMNT.dsEntidades
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object pnlFornecedor: TPanel
              Left = 0
              Top = 0
              Width = 250
              Height = 38
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                250
                38)
              object Label15: TLabel
                Left = 0
                Top = -1
                Width = 173
                Height = 14
                Caption = 'Conta Banc'#225'ria p/ Transfer'#234'ncia'
                FocusControl = DBEdit14
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit14: TDBEdit
                Tag = 9
                Left = 0
                Top = 14
                Width = 250
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                Constraints.MaxWidth = 250
                DataField = 'CONTABANCARIATRANSF'
                DataSource = DMNT.dsEntidades
                TabOrder = 0
                OnExit = ExecutaValidacao
              end
            end
          end
        end
      end
    end
    inherited Panel3: TPanel
      Top = 529
      Width = 946
      ExplicitTop = 529
      ExplicitWidth = 946
      inherited Cancelar: TBitBtn
        Left = 866
        ExplicitLeft = 866
      end
      inherited Gravar: TBitBtn
        Left = 781
        ExplicitLeft = 781
      end
      inherited Aplicar: TBitBtn
        Left = 696
        ExplicitLeft = 696
      end
    end
  end
  inherited pnGrid: TPanel
    Height = 564
    ExplicitHeight = 564
    inherited GPanel2: TGPanel
      Top = 545
      ExplicitTop = 545
      inherited lblReg: TLabel
        Width = 285
        Height = 19
      end
    end
    inherited GridBrowse: TSMDBGrid
      Height = 545
    end
  end
  inherited GPanel1: TGPanel
    Height = 564
    ExplicitHeight = 564
    inherited lblForm: TAngleLabel
      Height = 564
      ExplicitHeight = 584
    end
  end
  inherited UCControls1: TUCControls
    GroupName = 'Cadastro de Entidades'
    UserControl = foMenuNutratec.UserControl1
  end
end
