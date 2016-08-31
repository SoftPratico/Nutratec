inherited frameEditEntAquario: TframeEditEntAquario
  inherited tlbEdita: TToolBar
    inherited btnIncluir: TToolButton
      ExplicitWidth = 60
    end
  end
  inherited grdEditaReg: TcxGrid
    LookAndFeel.SkinName = ''
    inherited cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DMNT.dsEntidades_Aquario
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoInsertOnNewItemRowFocusing]
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
      object cxGridDBTableView1TIPO: TcxGridDBColumn
        DataBinding.FieldName = 'TIPO'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'CICL'#205'DEOS'
          'DOCE'
          'MARINHO'
          'PLANTADO')
        Properties.Sorted = True
        Options.Moving = False
        Options.Sorting = False
      end
      object cxGridDBTableView1LITROS: TcxGridDBColumn
        DataBinding.FieldName = 'LITROS'
        Options.Moving = False
        Options.Sorting = False
      end
    end
  end
end
