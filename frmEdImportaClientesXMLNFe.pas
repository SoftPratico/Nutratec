unit frmEdImportaClientesXMLNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmEdita, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxImageComboBox, ImgList, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, zHint, StdCtrls,
  Buttons, ExtCtrls, GPanel, ComCtrls, Mask, DBCtrls;

type
  TfoImportaClientesXMLNFe = class(TFoEdita)
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    cxGrid1DBTableView1Arquivo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DBMemo1: TDBMemo;
    lblMsgStatusImportacao: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foImportaClientesXMLNFe: TfoImportaClientesXMLNFe;

implementation

uses
  DMnutratec, PerlRegEx, IOUtils, DMGenerico, Funcoes, DefVar, DMConexao, DMSkin;

{$R *.dfm}

procedure TfoImportaClientesXMLNFe.BitBtn1Click(Sender: TObject);
var
  vArquivo: string;
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    for vArquivo in OpenDialog1.Files do
      DMNT.tbImportaClientesXMLNFe.AppendRecord([DMNT.tbImportaClientesXMLNFe.RecordCount+1, 0, vArquivo, '']);
    DMNT.tbImportaClientesXMLNFe.First;
  end;
end;

procedure TfoImportaClientesXMLNFe.BitBtn2Click(Sender: TObject);
begin
  inherited;
  DMNT.tbImportaClientesXMLNFe.Close;
  DMNT.tbImportaClientesXMLNFe.Open;
end;

procedure TfoImportaClientesXMLNFe.BitBtn3Click(Sender: TObject);
type
  TEntidade = record
   CNPJ : String;
   CPF : String;
   xNome : String;
   xFant: String;
   xLgr : String;
   nro : String;
   xCpl : String;
   xBairro : String;
   cMun : String;
   xMun : String;
   UF : String;
   CEP : String;
   cPais : String;
   xPais : String;
   fone : String;
   IE : String;
   email : String;
  end;
var
  RegEx: TPerlRegEx;
  vLog: TStrings;
  vUltPais: string;
  vUltCEP: String;
  vUltDoc: String;
  vDif: Integer;
  vXMLSaida: Boolean;
  vXMLDevolucao: Boolean;
  vEmit: TEntidade;
  vDest: TEntidade;
Const
  //regexTipoNF = '<tpNF>(.*?)<\/tpNF>';
  regexNFDevolucao = '<finNFe>(.*?)<\/finNFe>';
  regexEmitNF = '<emit>.*?((<CNPJ>(.*?)<\/CNPJ>).*?)?((<CPF>(.*?)<\/CPF>).*?)?' +
                '((<xNome>(.*?)<\/xNome>).*?)?((<xFant>(.*?)<\/xFant>).*?)?' +
                '((<enderEmit>.*?((<xLgr>(.*?)<\/xLgr>).*?)?((<nro>(.*?)<\/nro>).*?)?' +
                '((<xCpl>(.*?)<\/xCpl>).*?)?((<xBairro>(.*?)<\/xBairro>).*?)?' +
                '((<cMun>(.*?)<\/cMun>).*?)?((<xMun>(.*?)<\/xMun>).*?)?' +
                '((<UF>(.*?)<\/UF>).*?)?((<CEP>(.*?)<\/CEP>).*?)?' +
                '((cPais>(.*?)<\/cPais>).*?)?((xPais>(.*?)<\/xPais>).*?)?' +
                '((fone>(.*?)<\/fone>).*?)?<\/enderEmit>).*?)?' +
                '((<IE>(.*?)<\/IE).*?)?<\/emit>';
  regexDestNF = '<dest>.*?((<CNPJ>(.*?)<\/CNPJ>).*?)?((<CPF>(.*?)<\/CPF>).*?)?' +
                '((<idEstrangeiro>(.*?)<\/idEstrangeiro>).*?)?((<xNome>(.*?)<\/xNome>).*?)?' +
                '((<enderDest>.*?((<xLgr>(.*?)<\/xLgr>).*?)?((<nro>(.*?)<\/nro>).*?)?' +
                '((<xCpl>(.*?)<\/xCpl>).*?)?((<xBairro>(.*?)<\/xBairro>).*?)?' +
                '((<cMun>(.*?)<\/cMun>).*?)?((<xMun>(.*?)<\/xMun>).*?)?((<UF>(.*?)<\/UF>).*?)?' +
                '((<CEP>(.*?)<\/CEP>).*?)?((cPais>(.*?)<\/cPais>).*?)?((xPais>(.*?)<\/xPais>).*?)?' +
                '((fone>(.*?)<\/fone>).*?)?<\/enderDest>).*?)?((<indIEDest>(.*?)<\/indIEDest).*?)?' +
                '((<IE>(.*?)<\/IE).*?)?((<ISUF>(.*?)<\/ISUF).*?)?' +
                '((<IM>(.*?)<\/IM).*?)?' +
                '((<email>(.*?)<\/email).*?)?<\/dest>';
//
//<dest>.*?((<CNPJ>(.*?)<\/CNPJ>).*?)?((<CPF>(.*?)<\/CPF>).*?)?((<idEstrangeiro>(.*?)<\/idEstrangeiro>).*?)?((<xNome>(.*?)<\/xNome>).*?)?((<enderDest>.*?((<xLgr>(.*?)<\/xLgr>).*?)?((<nro>(.*?)<\/nro>).*?)?((<xCpl>(.*?)<\/xCpl>).*?)?((<xBairro>(.*?)<\/xBairro>).*?)?((<cMun>(.*?)<\/cMun>).*?)?((<xMun>(.*?)<\/xMun>).*?)?((<UF>(.*?)<\/UF>).*?)?((<CEP>(.*?)<\/CEP>).*?)?((cPais>(.*?)<\/cPais>).*?)?((xPais>(.*?)<\/xPais>).*?)?((fone>(.*?)<\/fone>).*?)?<\/enderDest>).*?)?((<indIEDest>(.*?)<\/indIEDest).*?)?((<IE>(.*?)<\/IE).*?)?((<ISUF>(.*?)<\/ISUF).*?)?((<IM>(.*?)<\/IM).*?)?((<email>(.*?)<\/email).*?)?<\/dest>
  function Importar(pEntidade: TEntidade; var pLog: TStrings; pCliente: Boolean): Integer;
  var
    vCNPJ, vCPF, vxNome, vxFant, vxLgr, vnro, vxCpl, vxBairro, vcMun, vxMun, vUF, vCEP, vcPais, vxPais, vfone, vIE, vemail: String;
  begin
    Result := 1; //Status de XML com algum erro
    pLog.Clear;
    try
      vCNPJ := pEntidade.CNPJ;
      vCPF := pEntidade.CPF;
      vxNome := pEntidade.xNome;
      vxFant := pEntidade.xFant;
      vxLgr := pEntidade.xLgr;
      vnro := pEntidade.nro;
      vxCpl := pEntidade.xCpl;
      vxBairro := pEntidade.xBairro;
      vcMun := pEntidade.cMun;
      vxMun := pEntidade.xMun;
      vUF := pEntidade.UF;
      vCEP := pEntidade.CEP;
      vcPais := pEntidade.cPais;
      vxPais := pEntidade.xPais;
      vfone := pEntidade.fone;
      vIE := pEntidade.IE;
      vemail := pEntidade.email;

      if (vcPais <> '') then
      begin
        if (vcPais <> vUltPais) then
        begin
          vUltPais := vcPais;
          if not DMGEN.qryPaises.Locate('codigopais', vcPais, []) then
          begin
            DMGEN.qryPaises.AppendRecord([vcPais, vxPais]);
            pLog.Add('Inserido país '+vxPais);
          end
          else
            pLog.Add('País já cadastrado : '+vxPais);
        end
        else
          pLog.Add('País '+vxPais+' já processado');

        if (vCEP <> '') then  //Verificar quando UF for Exterior
        begin
          if (vCEP <> vUltCEP) then
          begin
            vUltCEP := vCEP;
            if not DMGEN.qryLogradouros.Locate('CEP;Endereco;Bairro', VarArrayOf([vCEP,vxLgr,vxBairro]), []) then
            begin
              DMGEN.qryLogradouros.Append;
              DMGEN.qryLogradourosCEP.Value := vCEP;
              DMGEN.qryLogradourosEndereco.Value := vxLgr;
              DMGEN.qryLogradourosBairro.Value := vxBairro;
              DMGEN.qryLogradourosCodigoIBGE.Value := vcMun;
              DMGEN.qryLogradourosCidade.Value := vxMun;
              DMGEN.qryLogradourosUF.Value := vUF;
              DMGEN.qryLogradourosCodigo_Pais.Value := vcPais;
              DMGEN.qryLogradouros.Post;
              pLog.Add('Inserido CEP '+vCEP);
            end
            else
              pLog.Add('CEP já cadastrado : '+vCEP);
            vDif := DMGEN.qryLogradourosDiferenciador.Value;
          end
          else
            pLog.Add('CEP '+vCEP+' já processado');

          if (vCNPJ+VCPF <> '') then
          begin
            if (vUltDoc <> vCNPJ+VCPF) then
            begin
              vUltDoc := vCNPJ+VCPF;
              if not DMNT.qryEntidades.Locate('CNPJ_CPF', vUltDoc, []) then
              begin
                DMNT.qryEntidades.Append;
                DMNT.qryEntidadesCLIENTE.Value := iif(pCliente,'S','N');
                DMNT.qryEntidadesFORNECEDOR.Value := iif(pCliente,'N','S');
                DMNT.qryEntidadesCEP.Value := vCEP;
                DMNT.qryEntidadesDIFERENCIADOR.Value := vDif;
                DMNT.qryEntidadesCNPJ_CPF.Value := vUltDoc;
                DMNT.qryEntidadesDATAINCLUSAO.Value := Now;
                DMNT.qryEntidadesEMAIL.Value := vemail;
                DMNT.qryEntidadesEND_COMPLEMENTO.Value := vxCpl;
                DMNT.qryEntidadesEND_NUMERO.Value := vnro;
                DMNT.qryEntidadesFONE_RESIDENCIAL.Value := vfone;
                DMNT.qryEntidadesIE_RG.Value := vIE;
                DMNT.qryEntidadesNOMEFANTASIA.Value := vxFant;
                DMNT.qryEntidadesRAZAOSOCIAL.Value := vxNome;
                DMNT.qryEntidadesUSUARIO_INCLUSAO.Value := UsuID;
                DMNT.qryEntidadesOBSERVACAO.Value := 'Entidade importada do xml '+DMNT.tbImportaClientesXMLNFeArquivo.Value;
                DMNT.qryEntidades.Post;
                pLog.Add('Inserido entidade '+vxNome);
                Result := 2; //Status de XML correto
              end
              else
              begin
                if (pCliente and (DMNT.qryEntidadesCLIENTE.Value = 'S')) or
                   (not DMNT.qryEntidadesDATAALTERACAO.IsNull) or
                   (not pCliente and (DMNT.qryEntidadesFORNECEDOR.Value = 'S')) then
                  pLog.Add('Entidade '+vxNome+' já cadastrada')
                else
                begin
                  DMNT.qryEntidades.Edit;
                  DMNT.qryEntidadesCLIENTE.Value := iif(pCliente and (DMNT.qryEntidadesCLIENTE.Value <> 'S'),'S',DMNT.qryEntidadesCLIENTE.Value);
                  DMNT.qryEntidadesFORNECEDOR.Value := iif(not pCliente and (DMNT.qryEntidadesFORNECEDOR.Value <> 'S'),'S',DMNT.qryEntidadesFORNECEDOR.Value);
                  DMNT.qryEntidades.Post;
                  pLog.Add('Atualizado entidade '+vxNome);
                  Result := 2; //Status de XML correto
                end;
              end;
            end
            else
              pLog.Add('Entidade '+vxNome+' já cadastrada');

          end
          else
            pLog.Add('Entidade não encontrada no XML');

        end
        else
          pLog.Add('CEP não encontrado no XML');

      end
      else
        pLog.Add('País não encontrado no XML');

    except
      on E: Exception do
        pLog.Add( E.Message);
    end;
  end;

  procedure LerEmitente(var pEntidade: TEntidade; pRegex: TPerlRegex);
  begin
    pEntidade.CNPJ := pRegex.Groups[3];
    pEntidade.CPF := pRegex.Groups[6];
    pEntidade.xNome := pRegex.Groups[9];
    pEntidade.xFant := pRegex.Groups[12];
    pEntidade.xLgr := pRegex.Groups[17];
    pEntidade.nro := pRegex.Groups[20];
    pEntidade.xCpl := pRegex.Groups[23];
    pEntidade.xBairro := pRegex.Groups[26];
    pEntidade.cMun := pRegex.Groups[29];
    pEntidade.xMun := pRegex.Groups[32];
    pEntidade.UF := pRegex.Groups[35];
    pEntidade.CEP := pRegex.Groups[38];
    pEntidade.cPais := StrCaracter(pRegex.Groups[41],5,'0');
    pEntidade.xPais := pRegex.Groups[44];
    pEntidade.fone := pRegex.Groups[47];
    pEntidade.IE := pRegex.Groups[50];
    pEntidade.email := '';
  end;

  procedure LerDestinatario(var pEntidade: TEntidade; pRegex: TPerlRegex);
  begin
    pEntidade.CNPJ := pRegex.Groups[3];
    pEntidade.CPF := pRegex.Groups[6];
    pEntidade.xNome := pRegex.Groups[12];
    pEntidade.xFant := pEntidade.xNome;
    pEntidade.xLgr := pRegex.Groups[17];
    pEntidade.nro := pRegex.Groups[20];
    pEntidade.xCpl := pRegex.Groups[23];
    pEntidade.xBairro := pRegex.Groups[26];
    pEntidade.cMun := pRegex.Groups[29];
    pEntidade.xMun := pRegex.Groups[32];
    pEntidade.UF := pRegex.Groups[35];
    pEntidade.CEP := pRegex.Groups[38];
    pEntidade.cPais := StrCaracter(pRegex.Groups[41],5,'0');
    pEntidade.xPais := pRegex.Groups[44];
    pEntidade.fone := pRegex.Groups[47];
    pEntidade.IE := pRegex.Groups[53];
    pEntidade.email := pRegex.Groups[62];
  end;

begin
  inherited;

  DBMemo1.Visible := False;
  lblMsgStatusImportacao.Visible := True;

  RegEx := TPerlRegEx.Create;
  try
    RegEx.Options := [preCaseLess, preMultiLine, preSingleLine];

    DMGEN.qryPaises.DisableControls;
    DMGEN.qryLogradouros.DisableControls;
    DMNT.qryEntidades.DisableControls;
    try
      vLog := TStringList.Create;
      DMNT.tbImportaClientesXMLNFe.First;
      while not DMNT.tbImportaClientesXMLNFe.Eof do
      begin
        lblMsgStatusImportacao.Caption := DMNT.tbImportaClientesXMLNFeArquivo.Value;
        lblMsgStatusImportacao.Refresh;
        //
        DMNT.tbImportaClientesXMLNFe.Edit;
        DMNT.tbImportaClientesXMLNFeStatus.Value := 1;

        RegEx.Subject := TFile.ReadAllText(DMNT.tbImportaClientesXMLNFeArquivo.Value);

        RegEx.RegEx := regexEmitNF;
        if Regex.Match then
        begin
          LerEmitente(vEmit, RegEx);

          RegEx.RegEx := regexDestNF;
          if Regex.Match then
          begin
            LerDestinatario(vDest, RegEx);

            if vEmit.CNPJ + vEmit.CPF <> vDest.CNPJ + vDest.CPF then
            begin
              RegEx.RegEx := regexNFDevolucao;
              RegEx.Match;
              vXMLDevolucao := RegEx.Groups[1] = '4';

              if vEmit.CNPJ + vEmit.CPF = EmpresaSistema.CNPJ then
              begin
                if not vXMLDevolucao then
                  DMNT.tbImportaClientesXMLNFeStatus.Value := Importar(vDest, vLog, True) //Cliente
                else
                  DMNT.tbImportaClientesXMLNFeStatus.Value := Importar(vDest, vLog, False); // Fornecedor
              end
              else
                if vDest.CNPJ + vDest.CPF = EmpresaSistema.CNPJ then
                begin
                  if not vXMLDevolucao then
                    DMNT.tbImportaClientesXMLNFeStatus.Value := Importar(vEmit, vLog, False) // Fornecedor
                  else
                    DMNT.tbImportaClientesXMLNFeStatus.Value := Importar(vEmit, vLog, True); //Cliente
                end;
            end
            else
              vLog.Add('XML de devolução da própria empresa');
          end
          else
            vLog.Add('XML sem informações para cadastro');
        end
        else
          vLog.Add('XML sem informações para cadastro');

        DMNT.tbImportaClientesXMLNFeLog.Value := vLog.Text;
        DMNT.tbImportaClientesXMLNFe.Post;
        DMNT.tbImportaClientesXMLNFe.Next;
      end;
    finally
      //
      DMGEN.qryPaises.EnableControls;
      DMGEN.qryLogradouros.EnableControls;
      DMNT.qryEntidades.EnableControls;
      //
      FreeAndNil( vLog);
    end;
  finally
    FreeAndNil(RegEx);
    lblMsgStatusImportacao.Visible := False;
    DBMemo1.Visible := True;
  end;
end;

end.
