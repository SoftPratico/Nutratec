unit FrameEditEntidadesAquario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frameEdita, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxGridLevel, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView, cxGrid,
  ComCtrls, ToolWin, cxDropDownEdit, cxCalc;

type
  TframeEditEntAquario = class(TFrameEdit)
    cxGridDBTableView1TIPO: TcxGridDBColumn;
    cxGridDBTableView1LITROS: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frameEditEntAquario: TframeEditEntAquario;

implementation

uses DMnutratec;

{$R *.dfm}

end.
