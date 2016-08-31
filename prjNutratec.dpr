program prjNutratec;

uses
  Forms,
  DefVar in '..\..\_RotBas\DefVar.pas',
  Funcoes in '..\..\_RotBas\Funcoes.pas',
  FuncoesDM in '..\..\_RotBas\FuncoesDM.pas',
  md5 in '..\..\_RotBas\md5.pas',
  UTraducao in '..\..\_RotBas\UTraducao.pas',
  DMSkin in '..\..\_RotBas\DMSkin.pas' {DMSKN: TDataModule},
  DMConexao in '..\..\_RotBas\DMConexao.pas' {DMCNX: TDataModule},
  frmPrincipal in '..\..\_RotBas\frmPrincipal.pas' {frmPrinc},
  frmGauge in '..\..\_RotBas\frmGauge.pas' {FGauge},
  FrmSplash in '..\..\_RotBas\FrmSplash.pas' {Splash},
  FrmLogin in '..\..\_RotBas\FrmLogin.pas' {Login},
  frmWebBrowser in '..\..\_RotBas\frmWebBrowser.pas' {FWebBrowser},
  FrmBrowseEdit in '..\..\_RotBas\FrmBrowseEdit.pas' {FBrowseEdit},
  frmEdita in '..\..\_RotBas\frmEdita.pas' {FoEdita},
  FrmCalendario in '..\..\_RotBas\FrmCalendario.pas' {FrmCal},
  frmAbout in '..\..\_RotBas\frmAbout.pas' {About},
  frmRelatorios in '..\..\_RotBas\frmRelatorios.pas' {Relatorios},
  frmExcluiRelatorio in '..\..\_RotBas\frmExcluiRelatorio.pas' {ExcluiRelatorio},
  frmEnviaEmail in '..\..\_RotBas\frmEnviaEmail.pas' {FoEnviaEMail},
  frmRegistraAplicacao in '..\..\_RotBas\frmRegistraAplicacao.pas' {FoRegistraAplicacao},
  frmTestaConexao in '..\..\_RotBas\frmTestaConexao.pas' {TestaConexao},
  frmEditaLista in '..\..\_RotBas\frmEditaLista.pas' {FEditaLista},
  frmMensagem in '..\..\_RotBas\frmMensagem.pas' {foMensagem},
  ConsultaCEP in '..\..\_RotBas\ConsultaCEP.pas',
  SPMenu in '..\..\_RotBas\SPMenu.pas' {frmMenu},
  SPMenuNutratec in 'SPMenuNutratec.pas' {foMenuNutratec},
  DMnutratec in 'DMnutratec.pas' {DMNT: TDataModule},
  frmPesquisa in '..\..\_RotBas\frmPesquisa.pas' {FormPesquisa},
  frmBEPaises in '..\..\_RotBas\frmBEPaises.pas' {FBEPaises},
  DMGenerico in '..\..\_RotBas\DMGenerico.pas' {DMGEN: TDataModule},
  frmBELogradouros in '..\..\_RotBas\frmBELogradouros.pas' {FBELogradouros},
  frmBECFOPs in 'frmBECFOPs.pas' {FBECFOPS},
  frmBECSTs in 'frmBECSTs.pas' {FBECSTS},
  frmBEEntidades in 'frmBEEntidades.pas' {FBEEntidades},
  frameEdita in '..\..\_RotBas\frameEdita.pas' {FrameEdit: TFrame},
  FrameEditEntidadesAquario in 'FrameEditEntidadesAquario.pas' {frameEditEntAquario: TFrame},
  frmEdImportaClientesXMLNFe in 'frmEdImportaClientesXMLNFe.pas' {foImportaClientesXMLNFe};

{$R *.res}

begin
  Application.MainFormOnTaskbar := True;
  Application.Initialize;
  Application.Title := 'Nutratec Ind. e Com. de Prod. Agrop. Ltda - ME';
  Application.CreateForm(TDMSKN, DMSKN);
  Application.CreateForm(TDMCNX, DMCNX);
  Application.CreateForm(TDMGEN, DMGEN);
  Application.CreateForm(TDMNT, DMNT);
  Application.CreateForm(TfoMenuNutratec, foMenuNutratec);
  Application.CreateForm(TFWebBrowser, FWebBrowser);
  Splash.Free;
  Application.Run;

  { TODO -cNutraTec : Criar tabela com dados da empresa EMITENTE }
end.
