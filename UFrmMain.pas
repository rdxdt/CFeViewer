unit UFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Datasnap.DBClient, System.ImageList, Vcl.ImgList, JvBaseDlg,
  JvSelectDirectory, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, ACBrDFeReport, ACBrSATExtratoClass, ACBrSATExtratoReportClass,
  ACBrSATExtratoFortesFr, ACBrBase, ACBrSAT,MidasLib, RLXLSXFilter,
  RLHTMLFilter, RLFilters, RLPDFFilter, Math, pcnConversao,MaskUtils,
  JvBrowseFolder, DateUtils, Vcl.ToolWin, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.Buttons, JclSecurity,LogManager,
  IdHashMessageDigest, JvComponentBase, JvComputerInfoEx,IniFiles,
  ACBrPosPrinter,ShellApi;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    pgcVisualiza: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgListagem: TDBGrid;
    Panel2: TPanel;
    edtListQtd: TLabeledEdit;
    edtListTotal: TLabeledEdit;
    btnAbrirArquivos: TButton;
    edtFolder: TButtonedEdit;
    Label3: TLabel;
    ImageList1: TImageList;
    ACBrSAT1: TACBrSAT;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    dsListagem: TDataSource;
    pgcCFe: TPageControl;
    tabIde: TTabSheet;
    tabEmit: TTabSheet;
    tabDest: TTabSheet;
    tabDet: TTabSheet;
    tabTotais: TTabSheet;
    tabPagamentos: TTabSheet;
    edtIdecUF: TLabeledEdit;
    edtIdecNF: TLabeledEdit;
    edtIdeMod: TLabeledEdit;
    edtIdeNrSerie: TLabeledEdit;
    edtIdeNCFe: TLabeledEdit;
    edtIdeDEmi: TLabeledEdit;
    edtIdeHEmi: TLabeledEdit;
    edtIdeCDV: TLabeledEdit;
    edtIdeTpAmb: TLabeledEdit;
    edtIdeCNPJ: TLabeledEdit;
    edtIdeSignAc: TLabeledEdit;
    edtIdeAssinaturaQRCode: TLabeledEdit;
    edtIdeNrCaixa: TLabeledEdit;
    edtEmitCNPJ: TLabeledEdit;
    edtEmitxNome: TLabeledEdit;
    edtEmitxLgr: TLabeledEdit;
    edtEmitnro: TLabeledEdit;
    edtEmitxCpl: TLabeledEdit;
    edtEmitxBairro: TLabeledEdit;
    edtEmitxMun: TLabeledEdit;
    edtEmitCEP: TLabeledEdit;
    edtemitIE: TLabeledEdit;
    edtEmitCRegTrib: TLabeledEdit;
    edtEmitindRatISSQN: TLabeledEdit;
    edtDestNome: TLabeledEdit;
    edtDestCPFCNPJ: TLabeledEdit;
    tabInfCpl: TTabSheet;
    lvwProdutos: TListView;
    lblQtdProd: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    edtTotIcmsValor: TLabeledEdit;
    edtTotIcmsProd: TLabeledEdit;
    edtTotIcmsDesc: TLabeledEdit;
    edtTotIcmsPIS: TLabeledEdit;
    edtTotIcmsCOFINS: TLabeledEdit;
    edtTotICMSPISST: TLabeledEdit;
    edtTotICMSCOFINSST: TLabeledEdit;
    edtTotICMSOutro: TLabeledEdit;
    edtTotISSQNvBC: TLabeledEdit;
    edtTotISSQNISS: TLabeledEdit;
    edtTotISSQNPIS: TLabeledEdit;
    edtTotISSQNCOFINS: TLabeledEdit;
    edtTotISSQNPISST: TLabeledEdit;
    edtTotISSQNCOFINSST: TLabeledEdit;
    edtTotvCFe: TLabeledEdit;
    edtTotvDesc: TLabeledEdit;
    edtTotLei: TLabeledEdit;
    lvwPagamentos: TListView;
    memInfCpl: TMemo;
    edtEmitIM: TLabeledEdit;
    edtEmitRegTribISS: TLabeledEdit;
    tabEntrega: TTabSheet;
    edtEntregaxLgr: TLabeledEdit;
    edtEntreganro: TLabeledEdit;
    edtEntregaxCpl: TLabeledEdit;
    edtEntregaxBairro: TLabeledEdit;
    edtEntregaxMun: TLabeledEdit;
    edtEntregaUF: TLabeledEdit;
    edtTotvAcre: TLabeledEdit;
    lblPgtoTroco: TLabel;
    lblPgtoTotal: TLabel;
    tabOBSFisco: TTabSheet;
    lvwOBSFisco: TListView;
    lblFileName: TLabel;
    sd1: TJvBrowseForFolderDialog;
    tbrDetalhes: TToolBar;
    tbExtrato: TToolButton;
    tbrListagem: TToolBar;
    tbAnalitico: TToolButton;
    tabSobre: TTabSheet;
    RLPDFFilter1: TRLPDFFilter;
    Image1: TImage;
    Label4: TLabel;
    lblVersion: TLabel;
    GroupSobre: TGroupBox;
    Label6: TLabel;
    LinkLabel1: TLinkLabel;
    JvComputerInfoEx1: TJvComputerInfoEx;
    ACBrPosPrinter1: TACBrPosPrinter;
    tbSintetico: TToolButton;
    dsTotalDia: TDataSource;
    tbICMS: TToolButton;
    cdsTotalDiaICMS: TClientDataSet;
    dsTotalDiaICMS: TDataSource;
    cdsTotalDiaICMSDataTotal: TDateField;
    cdsTotalDiaICMSQtdCupons: TIntegerField;
    cdsTotalDiaICMSTotal: TCurrencyField;
    cdsTotalDiaICMSvICMS: TCurrencyField;
    cdsTotalDiaICMSvICMSST: TCurrencyField;
    cdsTotalDiaICMSvPISCOFINSST: TCurrencyField;
    cdsListagem: TClientDataSet;
    cdsListagemDataEmissao: TDateField;
    cdsListagemnCFe: TIntegerField;
    cdsListagemNrCaixa: TIntegerField;
    cdsListagemQtdItens: TIntegerField;
    cdsListagemTotal: TCurrencyField;
    cdsListagemArquivo: TStringField;
    cdsListagemDinheiro: TCurrencyField;
    cdsListagemCheque: TCurrencyField;
    cdsListagemCartao: TCurrencyField;
    cdsListagemTicket: TCurrencyField;
    cdsListagemOutros: TCurrencyField;
    cdsListagemvICMS: TCurrencyField;
    cdsListagemvICMSST: TCurrencyField;
    cdsListagemvPisCofinsST: TCurrencyField;
    cdsTotalDia: TClientDataSet;
    cdsTotalDiaDataTotal: TDateField;
    cdsTotalDiaQtd: TIntegerField;
    cdsTotalDiaTotal: TCurrencyField;
    cdsTotalDiaqtdCupons: TIntegerField;
    cdsTotalDiaDinheiro: TCurrencyField;
    cdsTotalDiaCheque: TCurrencyField;
    cdsTotalDiaCartao: TCurrencyField;
    cdsTotalDiaTicket: TCurrencyField;
    cdsTotalDiaOutros: TCurrencyField;
    edtListDin: TLabeledEdit;
    edtListChe: TLabeledEdit;
    edtListCar: TLabeledEdit;
    edtListTkt: TLabeledEdit;
    edtListOut: TLabeledEdit;
    edtListICMS: TLabeledEdit;
    edtListICMSST: TLabeledEdit;
    edtListICMSPISCOF: TLabeledEdit;
    chkFileDate: TCheckBox;
    function GetAppVersionStr(szFile:String): string;
    procedure FitGrid(const DBGrid: TDBGrid);
    function FormatCPF(CPF : String):String;
    function FormatCNPJ(CNPJ :String):String;
    function FormatCEP(CEP : String):String;
    function FormatFone(Fone : String):String;
    procedure ListFileDir(Path: string; FileList: TStrings);
    procedure CarregarCFe(FileName : String);
    procedure btnAbrirArquivosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgListagemDblClick(Sender: TObject);
    procedure edtFolderRightButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure tbExtratoClick(Sender: TObject);
    procedure tbAnaliticoClick(Sender: TObject);
    procedure tbSinteticoClick(Sender: TObject);
    procedure tbICMSClick(Sender: TObject);
    procedure LinkLabel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ini : TIniFile;
    logMgr : TLogManager;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses UdlgWait,UrelSintetico, UrelTotalDia, URelFatICMS;

procedure TfrmMain.tbSinteticoClick(Sender: TObject);
var
  diaAtual : TDate;
  total,din,che,car,tkt,outros : Currency;
  qtdItens,qtdCupons : Integer;
begin
  cdsTotalDia.EmptyDataSet;
  cdsListagem.First;
  diaAtual := cdsListagem.FieldByName('DataEmissao').AsDateTime;
  total := 0;
  qtdItens := 0;
  qtdCupons := 0;
  din := 0;
  che :=0 ;
  car := 0;
  tkt := 0;
  outros := 0;
  dlgWait.pBar.Position := 0;
  dlgWait.pBar.Max := cdsListagem.RecordCount;
  dlgWait.lblTask.Caption := 'Processando registros';
  dlgWait.Show;
  Application.ProcessMessages;
  if cdsListagem.IsEmpty then
    begin
      dlgWait.Close;
      MessageBox(Self.Handle,'Não há nenhum registro para processar',PWideChar(Self.Caption),MB_OK+MB_APPLMODAL+MB_ICONERROR);
      Exit;
    end;
  while not cdsListagem.Eof do
    begin
      if diaAtual = cdsListagem.FieldByName('DataEmissao').AsDateTime then
        begin
          //Soma Valores
          Inc(qtdCupons);
          qtdItens := qtdItens + cdsListagem.FieldByName('QtdItens').AsInteger;
          total := total + cdsListagem.FieldByName('Total').AsCurrency;
          din := din + cdsListagem.FieldByName('Dinheiro').AsCurrency;
          che := che+ cdsListagem.FieldByName('Cheque').AsCurrency ;
          car := car + cdsListagem.FieldByName('Cartao').AsCurrency;
          tkt := tkt + cdsListagem.FieldByName('Ticket').AsCurrency;
          outros := outros + cdsListagem.FieldByName('Outros').AsCurrency;
        end
      else
        begin
          //Adiciona no relatório
          cdsTotalDia.AppendRecord([diaAtual, qtdItens, total,qtdCupons,din,che,car,tkt,outros]);
          //Soma o primeiro registro
          diaAtual := cdsListagem.FieldByName('DataEmissao').AsDateTime;
          total := cdsListagem.FieldByName('Total').AsCurrency;
          qtdItens := cdsListagem.FieldByName('qtdItens').AsInteger;
          qtdCupons := 1;
          din := cdsListagem.FieldByName('Dinheiro').AsCurrency;
          che :=cdsListagem.FieldByName('Cheque').AsCurrency;
          car := cdsListagem.FieldByName('Cartao').AsCurrency;
          tkt := cdsListagem.FieldByName('Ticket').AsCurrency;
          outros := cdsListagem.FieldByName('Outros').AsCurrency;
        end;

      dlgWait.pBar.Position := cdsListagem.RecNo;
      dlgWait.lblTask.Caption := 'Processando registros '+IntToStr(cdsListagem.RecNo)+' de '+IntToStr(cdsListagem.RecordCount);
      Application.ProcessMessages;
      cdsListagem.Next;
    end;
  cdsTotalDia.AppendRecord([diaAtual, qtdItens, total,qtdCupons,din,che,car,tkt,outros]);
  dlgWait.Close;
  relTotalDia := TrelTotalDia.Create(frmMain);
  relTotalDia.RLReport1.Preview();
  relTotalDia.Destroy;
end;

procedure TfrmMain.tbICMSClick(Sender: TObject);
var
  diaAtual : TDate;
  total,vICMS,vICMSST,vPISCOFINSST : Currency;
  qtdCupons : Integer;
begin
  cdsTotalDiaICMS.EmptyDataSet;
  cdsListagem.First;
  diaAtual := cdsListagem.FieldByName('DataEmissao').AsDateTime;
  total := 0;
  qtdCupons := 0;
  vICMS := 0;
  vICMSST :=0 ;
  vPISCOFINSST := 0;
  dlgWait.pBar.Position := 0;
  dlgWait.pBar.Max := cdsListagem.RecordCount;
  dlgWait.lblTask.Caption := 'Processando registros';
  dlgWait.Show;
  Application.ProcessMessages;
  if cdsListagem.IsEmpty then
    begin
      dlgWait.Close;
      MessageBox(Self.Handle,'Não há nenhum registro para processar',PWideChar(Self.Caption),MB_OK+MB_APPLMODAL+MB_ICONERROR);
      Exit;
    end;
  while not cdsListagem.Eof do
    begin
      if diaAtual = cdsListagem.FieldByName('DataEmissao').AsDateTime then
        begin
          //Soma Valores
          //qtdItens := qtdItens + cdsListagem.FieldByName('QtdItens').AsInteger;
          Inc(qtdCupons);
          total := total + cdsListagem.FieldByName('Total').AsCurrency;
          vICMS := vICMS + cdsListagem.FieldByName('vICMS').AsCurrency;
          vICMSST := vICMSST+ cdsListagem.FieldByName('vICMSST').AsCurrency ;
          vPISCOFINSST := vPISCOFINSST + cdsListagem.FieldByName('vPisCofinsST').AsCurrency;
        end
      else
        begin
          //Adiciona no relatório
          cdsTotalDiaICMS.AppendRecord([diaAtual, qtdCupons, total,vICMS,vICMSST,vPISCOFINSST]);
          //Soma o primeiro registro
          diaAtual := cdsListagem.FieldByName('DataEmissao').AsDateTime;
          total := cdsListagem.FieldByName('Total').AsCurrency;
          qtdCupons := 1;
          vICMS := cdsListagem.FieldByName('vICMS').AsCurrency;
          vICMSST :=cdsListagem.FieldByName('vICMSST').AsCurrency;
          vPISCOFINSST := cdsListagem.FieldByName('vPISCOFINSST').AsCurrency;
        end;

      dlgWait.pBar.Position := cdsListagem.RecNo;
      dlgWait.lblTask.Caption := 'Processando registros '+IntToStr(cdsListagem.RecNo)+' de '+IntToStr(cdsListagem.RecordCount);
      Application.ProcessMessages;
      cdsListagem.Next;
    end;
  cdsTotalDiaICMS.AppendRecord([diaAtual, qtdCupons, total,vICMS,vICMSST,vPISCOFINSST]);
  dlgWait.Close;
  relFatICMS := TrelFatICMS.Create(frmMain);
  relFatICMS.RLReport1.Preview();
  relFatICMS.Destroy;
end;

function TfrmMain.GetAppVersionStr(szFile:String): string;
var
  Exe: string;
  Size, Handle: DWORD;
  Buffer: TBytes;
  FixedPtr: PVSFixedFileInfo;
begin
  try
    Exe := szFile;
    Size := GetFileVersionInfoSize(PChar(Exe), Handle);
    if Size = 0 then
      RaiseLastOSError;
    SetLength(Buffer, Size);
    if not GetFileVersionInfo(PChar(Exe), Handle, Size, Buffer) then
      begin
        Result := 'N/A';
        Exit;
      end;
    if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then
      begin
        Result := 'N/A';
        Exit;
      end;
    Result := Format('%d.%d.%d.%d',
      [LongRec(FixedPtr.dwFileVersionMS).Hi,  //major
      LongRec(FixedPtr.dwFileVersionMS).Lo,  //minor
      LongRec(FixedPtr.dwFileVersionLS).Hi,  //release
      LongRec(FixedPtr.dwFileVersionLS).Lo]) //build
  except on E:Exception do
    Result := 'N/A';
  end;
end;


procedure TfrmMain.FitGrid(const DBGrid: TDBGrid);
var
  i: integer;
  TotWidth : integer;
  VarWidth : integer;
  ResizableColumnCount : integer;
  AColumn : TColumn;
begin
  //Quantas colunas precisam de auto-redimensionamento
  ResizableColumnCount := 0;
  for i := 0 to -1 + DBGrid.Columns.Count do
    begin
      TotWidth := TotWidth + DBGrid.Columns[i].Width;
      if DBGrid.Columns[i].Field.Tag <> 0 then
      Inc(ResizableColumnCount);
    end;
  //adiciona 1px para a linha de separação de colunas
  if dgColLines in DBGrid.Options then
  TotWidth := TotWidth + DBGrid.Columns.Count;
  //Adiciona indicador de largura
  if dgIndicator in DBGrid.Options then
  TotWidth := TotWidth + IndicatorWidth;
  //Largura recebe o valor de "left"
  VarWidth := DBGrid.ClientWidth - TotWidth;
  //Distribuição por igual da VarWidth
  //para todas as colunas auto-redimensionáveis
  if ResizableColumnCount > 0 then
    VarWidth := varWidth div ResizableColumnCount;
  for i := 0 to -1 + DBGrid.Columns.Count do
    begin
      AColumn := DBGrid.Columns[i];
      if AColumn.Field.Tag <> 0 then
        begin
          AColumn.Width := AColumn.Width + VarWidth;
          if AColumn.Width < AColumn.Field.Tag then
          AColumn.Width := AColumn.Field.Tag;
        end;
    end;
end;

function TfrmMain.FormatCPF(CPF: string):String;
begin
  Result := FormatMaskText('000\.000\.000\-00;0;', CPF);
end;

function TfrmMain.FormatCNPJ(CNPJ: string):String;
begin
  Result := FormatMaskText('00\.000\.000\/0000\-00;0;', CNPJ);
end;

function TfrmMain.FormatCEP(CEP: string):String;
begin
  Result :=FormatMaskText('00000\-000;0;', CEP);
end;

function TfrmMain.FormatFone(Fone: string):String;
begin
  case Length(Fone) of
    8:  Result := FormatMaskText('0000-00009;0;',Fone);
    9:  Result := FormatMaskText('0000-00009;0;',Fone);
    10: Result := FormatMaskText('\(00\)000000009;0;', Fone);
    11: Result := FormatMaskText('\(00\)000000009;0;', Fone);
  else
    Result := Fone;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  logMgr := TLogManager.Create(lmFile,Self.Handle);
  logMgr.Module := 'MGR';
  if not DirectoryExists(ExtractFilePath(Application.ExeName)+'logs') then
      CreateDir(ExtractFilePath(Application.ExeName)+'logs');
  logMgr.LogDirectory := ExtractFilePath(Application.ExeName)+'logs';
  logMgr.FallbackMode := lmMsgBox;
  logMgr.Fallback := true;
  pgcVisualiza.ActivePageIndex :=0;
  pgcCFe.ActivePageIndex := 0;
  dtpInicial.Date := Now;
  dtpFinal.Date := Now;
  Self.Caption := 'Planos CFeViewer '+GetAppVersionStr(Application.ExeName);
  lblVersion.Caption := 'Versão '+ GetAppVersionStr(Application.ExeName);
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  FitGrid(dbgListagem);
  GroupSobre.Top := Round((tabSobre.Height / 2)) - Round((GroupSobre.Height / 2));
  GroupSobre.Left := Round((tabSobre.Width / 2)) - Round((GroupSobre.Width / 2));
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  FitGrid(dbgListagem);
  GroupSobre.Top := Round((tabSobre.Height / 2)) - Round((GroupSobre.Height / 2));
  GroupSobre.Left := Round((tabSobre.Width / 2)) - Round((GroupSobre.Width / 2));
end;

procedure TfrmMain.LinkLabel1Click(Sender: TObject);
begin
  ShellExecute(Self.Handle,'open','https://github.com/rdxdt',nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmMain.ListFileDir(Path: string; FileList: TStrings);
var
  SR: TSearchRec;
begin
  if FindFirst(Path + '*.xml', faAnyFile, SR) = 0 then
  begin
    repeat
      if (SR.Attr <> faDirectory) then
      begin
        FileList.Add(Path+SR.Name);
      end;
    until FindNext(SR) <> 0;
    FindClose(SR);
  end;
end;

procedure TfrmMain.tbExtratoClick(Sender: TObject);
begin
  ACBrSAT1.ImprimirExtrato;
end;

procedure TfrmMain.tbAnaliticoClick(Sender: TObject);
begin
  relSintetico := TrelSintetico.Create(frmMain);
  relSintetico.RLReport1.Preview;
  relSintetico.Destroy;
end;

procedure TfrmMain.CarregarCFe(FileName: string);
var
  I : Integer;
  L : TListItem;
  pgtoTotal : Currency;
begin
  //Limpar Campos
  pgtoTotal := 0;
  for I := 0 to frmMain.ComponentCount -1 do
    begin
      if frmMain.Components[i] is TEdit then
        begin
          if (frmMain.Components[i].Name = 'edtListQtd') or (frmMain.Components[i].Name = 'edtListTotal') then
            Continue
          else
            TEdit(frmMain.Components[i]).Clear;
        end;
    end;
  lvwPagamentos.Clear;
  lvwProdutos.Clear;
  lvwOBSFisco.Clear;
  memInfCpl.Clear;
  //Carregar CFe no Objeto
  ACBrSAT1.CFe.LoadFromFile(FileName);
  //Carregar ide
  with ACBrSAT1.CFe.ide do
    begin
      edtIdeCUF.Text := IntToStr(cUF);
      edtIdeCNF.Text := IntToStr(cNF);
      edtIdeMod.Text := IntToStr(modelo);
      edtIdeNrSerie.Text := IntToStr(nSerieSAT);
      edtIdeNCFe.Text := IntToStr(nCFe);
      edtIdeDEmi.Text := DateToStr(dEmi);
      edtIdeHEmi.Text := TimeToStr(hEmi);
      edtIdeCDV.Text := IntToStr(cDV);
      case tpAmb of
        taProducao: edtIdeTpAmb.Text := 'Produção';
        taHomologacao: edtIdeTpAmb.Text := 'Homologação';
      end;
      edtIdeCNPJ.Text := FormatCNPJ(CNPJ);
      edtIdeSignAC.Text := signAC;
      edtIdeAssinaturaQRCode.Text := assinaturaQRCode;
    end;
  //Carregar Emit
  with ACBrSAT1.CFe.Emit do
    begin
      edtEmitCNPJ.Text := FormatCNPJ(CNPJ);
      edtEmitxNome.Text := xNome;
      edtEmitxLgr.Text := EnderEmit.xLgr;
      edtEmitnro.Text := EnderEmit.nro;
      edtEmitxCpl.Text := EnderEmit.xCpl;
      edtEmitxBairro.Text := EnderEmit.xBairro;
      edtEmitxMun.Text := EnderEmit.xMun;
      edtEmitCEP.Text := FormatCep(IntToStr(EnderEmit.CEP));
      edtEmitIE.Text := IE;
      edtEmitIM.Text := IM;
      case cRegTrib of
        RTSimplesNacional  : edtEmitCRegTrib.Text := 'Simples Nacional';
        RTRegimeNormal     : edtEmitCRegTrib.Text := 'Regime Normal';
      end;
      case cRegTribISSQN of
        RTISSMicroempresaMunicipal  : edtEmitRegTribISS.Text := 'Microempresa Municipal';
        RTISSEstimativa             : edtEmitRegTribISS.Text := 'Estimativa';
        RTISSSociedadeProfissionais : edtEmitRegTribISS.Text := 'Sociedade Profissionais';
        RTISSCooperativa            : edtEmitRegTribISS.Text := 'Cooperativa';
        RTISSMEI                    : edtEmitRegTribISS.Text := 'MEI';
        RTISSMEEPP                  : edtEmitRegTribISS.Text := 'ME-EPP';
        RTISSNenhum                 : edtEmitRegTribISS.Text := 'Nenhum';
      end;
      case indRatISSQN of
      irSim : edtEmitindRatISSQN.Text := 'Sim';
      irNao : edtEmitindRatISSQN.Text := 'Não';
      end;
    end;
  //Carregar Dest
  with ACBrSAT1.CFe.Dest do
    begin
      edtDestNome.Text := xNome;
      case Length(CNPJCPF) of
        11: edtDestCPFCNPJ.Text := FormatCPF(CNPJCPF);
        14: edtDestCPFCNPJ.Text := FormatCNPJ(CNPJCPF);
      end;
    end;
  //Carregar Entrega
  with ACBrSAT1.CFe.Entrega do
    begin
      edtEntregaxLgr.Text := xLgr;
      edtEntreganro.Text := nro;
      edtEntregaxCpl.Text := xCpl;
      edtEntregaxBairro.Text := xBairro;
      edtEntregaxMun.Text := xMun;
      edtEntregaUF.Text := UF;
    end;
  //Carregar Det
  with ACBrSAT1.CFe.Det do
    begin
      lblQtdProd.Caption := 'Qtd de Produtos: '+IntToStr(Count);
        for I := 0 to Count -1 do
          begin
            L := lvwProdutos.Items.Add;
            L.Caption := IntToStr(Items[i].nItem);
            L.SubItems.Add(Items[i].Prod.cProd);
            L.SubItems.Add(Items[i].Prod.cEAN);
            L.SubItems.Add(Items[i].Prod.xProd);
            L.SubItems.Add(Items[i].Prod.NCM);
            L.SubItems.Add(Items[i].Prod.CEST);
            L.SubItems.Add(Items[i].Prod.CFOP);
            L.SubItems.Add(Items[i].Prod.uCom);
            L.SubItems.Add(CurrToStr(Items[i].Prod.qCom));
            L.SubItems.Add(FloatToStr(Items[i].Prod.vUnCom));
            L.SubItems.Add(CurrToStrF(Items[i].Prod.vProd,ffCurrency,3));
            L.SubItems.Add(CurrToStrF(Items[i].Prod.vDesc,ffCurrency,3));
            L.SubItems.Add(CurrToStrF(Items[i].Prod.vOutro,ffCurrency,3));
            L.SubItems.Add(CurrToStrF(Items[i].Prod.vItem,ffCurrency,3));
            L.SubItems.Add(CurrToStrF(Items[i].Prod.vRatDesc,ffCurrency,3));
            L.SubItems.Add(CurrToStrF(Items[i].Prod.vRatAcr,ffCurrency,3));
            L.SubItems.Add(Items[i].infAdProd);
          end;
    end;
  //Carregar Totais
  with ACBrSAT1.CFe.Total do
    begin
      edtTotICmsValor.Text := CurrToStrF(ICMSTot.vICMS,ffCurrency,3);
      edtTotIcmsProd.Text := CurrToStrF(ICMSTot.vProd,ffCurrency,3);
      edtTotIcmsDesc.Text := CurrToStrF(ICMSTot.vDesc,ffCurrency,3);
      edtTotIcmsOutro.Text := CurrToStrF(ICMSTot.vOutro,ffCurrency,3);
      edtTotICMSPIS.Text := CurrToStrF(ICMSTot.vPIS,ffCurrency,3);
      edtTotICMSCOFINS.Text := CurrToStrF(ICMSTot.vCOFINS,ffCurrency,3);
      edtTotICMSPISST.Text := CurrToStrF(ICMSTot.vPISST,ffCurrency,3);
      edtTotICMSCOFINSST.Text := CurrToStrF(ICMSTot.vCOFINSST,ffCurrency,3);
      edtTotISSQNvBC.Text := CurrToStrF(ISSQNTot.vBC,ffCurrency,3);
      edtTotISSQNISS.Text := CurrToStrF(ISSQNTot.vISS,ffCurrency,3);
      edtTotISSQNPIS.Text := CurrToStrF(ISSQNTot.vPIS,ffCurrency,3);
      edtTotISSQNCOFINS.Text := CurrToStrF(ISSQNTot.vCOFINS,ffCurrency,3);
      edtTotISSQNPISST.Text := CurrToStrF(ISSQNTot.vPISST,ffCurrency,3);
      edtTotISSQNCOFINSST.Text := CurrToStrF(ISSQNTot.vCOFINSST,ffCurrency,3);
      edtTotvCfe.Text := CurrToStrF(vCFe,ffCurrency,3);
      edtTotvDesc.Text := CurrToStrF(DescAcrEntr.vDescSubtot,ffCurrency,3);
      edtTotvAcre.Text := CurrToStrF(DescAcrEntr.vDescSubtot,ffCurrency,3);
      edtTotLei.Text := CurrToStrF(vCFeLei12741,ffCurrency,3);
    end;
  //Pagamentos
  with ACBrSAT1.CFe.Pagto do
    begin
      for I := 0 to Count -1 do
        begin
          L := lvwPagamentos.Items.Add;
          case Items[i].cMP of
            mpDinheiro:         L.Caption := 'Dinheiro';
            mpCheque:           L.Caption := 'Cheque';
            mpCartaodeCredito:  L.Caption := 'Cartão de Crédito';
            mpCartaodeDebito:   L.Caption := 'Cartão de Débito';
            mpCreditoLoja:      L.Caption := 'Crédito da Loja';
            mpValeAlimentacao:  L.Caption := 'Vale-Alimentação';
            mpValeRefeicao:     L.Caption := 'Vale-Refeição';
            mpValePresente:     L.Caption := 'Vale-Presente';
            mpValeCombustivel: L.Caption := 'Vale-Combustível';
            mpOutros:          L.Caption := 'Outros';
          end;
          L.SubItems.Add(CurrToStrf(Items[i].vMP,ffCurrency,3));
          pgtoTotal := pgtoTotal + Items[i].vMP;
          L.SubItems.Add(IntToStr(Items[i].cAdmC));
        end;
      lblPgtoTotal.Caption := 'Total: '+CurrToStrF(pgtoTotal,ffCurrency,3);
      lblPgtoTroco.Caption := 'Troco: '+IntToStr(Count);
    end;
  //Carregar OBSFisco
  with ACBrSAT1.CFe.obsFisco do
    for I := 0 to Count -1 do
      begin
        L := lvwOBSFisco.Items.Add();
        L.Caption := Items[i].xCampo;
        L.SubItems.Add(Items[i].xTexto);
      end;
  //Carregar Informações Adicionais
  memInfCpl.Text := ACBrSAT1.CFe.InfAdic.infCpl;
end;

procedure TfrmMain.dbgListagemDblClick(Sender: TObject);
begin
  if FileExists(edtFolder.Text+'\'+cdsListagem.FieldByName('Arquivo').AsString) then
    begin
      CarregarCFe(edtFolder.Text+'\'+cdsListagem.FieldByName('Arquivo').AsString);
      lblFileName.Caption := 'Visualizando :'+ cdsListagem.FieldByName('Arquivo').AsString;
      pgcVisualiza.ActivePageIndex := 1;
      pgcCFe.ActivePageIndex := 0;
    end;

end;

procedure TfrmMain.edtFolderRightButtonClick(Sender: TObject);
var
tmp,ano,mes : String;
a,m : Integer;
begin
  if sd1.Execute then
    begin
      edtFolder.Text := sd1.Directory;
      tmp := sd1.Directory;
      while(Pos('\',tmp) > 0) do
        Delete(tmp,1,Pos('\',tmp));
      ano := Copy(tmp,1,4);
      mes := Copy(tmp,5,2);
      if TryStrToInt(ano,a) and TryStrToInt(mes,m) then
        begin
          dtpInicial.Date := EncodeDate(a,m,1);
          dtpFinal.Date := EndOfAMonth(a,m);
        end;
    end;
end;

procedure TfrmMain.btnAbrirArquivosClick(Sender: TObject);
var
  FileList : TStringList;
  ncm : String;
  valorTotal, din, che, car, tkt, outros, icmsnormal, icmsst, piscofinsst: Currency;
  dint, chet, cart, tktt, outrost, icmsnormalt, icmsstt, piscofinsstt :Currency;
  I,J,CFeCount: Integer;
  fDate : TDatetime;
begin
  try
    dlgWait.Show;
    dlgWait.pBar.Position := 0;
    dlgWait.lblTask.Caption := 'Listando arquivos';
    Application.ProcessMessages;
    cdsListagem.EmptyDataSet;
    FileList := TStringList.Create;
    ListFileDir(edtFolder.Text+'\',FileList);
    ValorTotal := 0;
    CFeCount := 0 ;
    dint := 0;
    chet := 0;
    cart := 0;
    tktt := 0;
    outrost := 0;
    icmsnormalt := 0;
    icmsstt := 0;
    piscofinsstt := 0;
    if FileList.Count > 0 then
      begin
        dlgWait.pBar.Max := FileList.Count -1;
        for I := 0 to FileList.Count -1 do
          begin
            dlgWait.lblTask.Caption := 'Carregando arquivos '+IntToStr(i+1)+' de '+IntToStr(FileList.Count);
            dlgWait.pBar.Position := i;
            Application.ProcessMessages;
            ACBrSAT1.CFe.LoadFromFile(FileList.Strings[i]);
            if (Floor(ACBrSAT1.CFe.ide.dEmi) >= Floor(dtpInicial.Date)) and (Floor(ACBrSAT1.CFe.ide.dEmi) <= Floor(dtpFinal.Date))  then
              begin
                din         := 0;
                che         := 0;
                car         := 0;
                tkt         := 0;
                outros      := 0;
                icmsnormal  := 0;
                icmsst      := 0;
                piscofinsst := 0;
                for J := 0 to ACBrSAT1.CFe.Det.Count - 1 do
                  begin
                    ncm := Copy(ACBrSAT1.CFe.Det.Items[j].Prod.NCM,1,2);
                    if (ncm ='48') or (ncm = '96') then
                      icmsst := icmsst + (ACBrSAT1.CFe.Det.Items[j].Prod.vUnCom * ACBrSAT1.CFe.Det.Items[j].Prod.qCom) - ACBrSAT1.CFe.Det.Items[j].Prod.vDesc
                    else if (ncm ='33') or (ncm = '35') then
                      piscofinsst := piscofinsst + (ACBrSAT1.CFe.Det.Items[j].Prod.vUnCom * ACBrSAT1.CFe.Det.Items[j].Prod.qCom) - ACBrSAT1.CFe.Det.Items[j].Prod.vDesc
                    else
                      icmsnormal := icmsnormal + (ACBrSAT1.CFe.Det.Items[j].Prod.vUnCom * ACBrSAT1.CFe.Det.Items[j].Prod.qCom) - ACBrSAT1.CFe.Det.Items[j].Prod.vDesc
                  end;
                for J := 0 to ACBrSAT1.CFe.Pagto.Count -1 do
                  begin
                    case ACBrSAT1.CFe.Pagto.Items[j].cMP of
                      mpDinheiro: din := din + ACBrSAT1.CFe.Pagto.Items[j].vMP - ACBrSAT1.CFe.Pagto.vTroco;
                      mpCheque : che := che +  ACBrSAT1.CFe.Pagto.Items[j].vMP;
                      mpCartaodeDebito : car := car + ACBrSAT1.CFe.Pagto.Items[j].vMP;
                      mpCartaodeCredito: car := car + ACBrSAT1.CFe.Pagto.Items[j].vMP;
                      mpValePresente : tkt := tkt + ACBrSAT1.CFe.Pagto.Items[j].vMP;
                    else
                      outros := outros + ACBrSAT1.CFe.Pagto.Items[j].vMP;
                    end;
                  end;
                dint := dint+ din;
                chet := chet+ che;
                cart := cart+ car;
                tktt := tktt+ tkt;
                outrost := outrost+ outros;
                icmsnormalt := icmsnormalt+ icmsnormal;
                icmsstt := icmsstt+ icmsst;
                piscofinsstt := piscofinsstt+ piscofinsst;
                cdsListagem.AppendRecord([ACBrSAT1.CFe.ide.dEmi, //DataEmissao
                                          ACBrSAT1.CFe.ide.nCFe, //nCFe
                                          ACBrSAT1.CFe.ide.numeroCaixa, //NrCaixa
                                          ACBrSAT1.CFe.Det.Count, //QtdItens
                                          ACBrSAT1.CFe.Total.vCFe, //Total
                                          ExtractFileName(FileList.Strings[i]), //Arquivo
                                          din, //Dinheiro
                                          che, //Cheque
                                          car, // Cartão
                                          tkt, // Ticket
                                          outros, //Outros
                                          icmsnormal,//vICMS
                                          icmsst,    //vICMSST
                                          piscofinsst]); //vPisCofinsST
                valorTotal := valorTotal + ACBrSAT1.CFe.Total.vCFe;
                Inc(CFeCount);
              end
            else
              begin
                if chkFileDate.Checked then
                  FileAge(FileList.Strings[i],fDate);
                  begin
                    if (Floor(fDate) >= Floor(dtpInicial.Date)) and (Floor(fDate) <= Floor(dtpFinal.Date)) then
                      begin
                        din         := 0;
                        che         := 0;
                        car         := 0;
                        tkt         := 0;
                        outros      := 0;
                        icmsnormal  := 0;
                        icmsst      := 0;
                        piscofinsst := 0;
                        for J := 0 to ACBrSAT1.CFe.Det.Count - 1 do
                          begin
                            ncm := Copy(ACBrSAT1.CFe.Det.Items[j].Prod.NCM,1,2);
                            if (ncm ='48') or (ncm = '96') then
                              icmsst := icmsst + (ACBrSAT1.CFe.Det.Items[j].Prod.vUnCom * ACBrSAT1.CFe.Det.Items[j].Prod.qCom) - ACBrSAT1.CFe.Det.Items[j].Prod.vDesc
                            else if (ncm ='33') or (ncm = '35') then
                              piscofinsst := piscofinsst + (ACBrSAT1.CFe.Det.Items[j].Prod.vUnCom * ACBrSAT1.CFe.Det.Items[j].Prod.qCom) - ACBrSAT1.CFe.Det.Items[j].Prod.vDesc
                            else
                              icmsnormal := icmsnormal + (ACBrSAT1.CFe.Det.Items[j].Prod.vUnCom * ACBrSAT1.CFe.Det.Items[j].Prod.qCom) - ACBrSAT1.CFe.Det.Items[j].Prod.vDesc
                          end;
                        for J := 0 to ACBrSAT1.CFe.Pagto.Count -1 do
                          begin
                            case ACBrSAT1.CFe.Pagto.Items[j].cMP of
                              mpDinheiro: din := din + ACBrSAT1.CFe.Pagto.Items[j].vMP - ACBrSAT1.CFe.Pagto.vTroco;
                              mpCheque : che := che +  ACBrSAT1.CFe.Pagto.Items[j].vMP;
                              mpCartaodeDebito : car := car + ACBrSAT1.CFe.Pagto.Items[j].vMP;
                              mpCartaodeCredito: car := car + ACBrSAT1.CFe.Pagto.Items[j].vMP;
                              mpValePresente : tkt := tkt + ACBrSAT1.CFe.Pagto.Items[j].vMP;
                            else
                              outros := outros + ACBrSAT1.CFe.Pagto.Items[j].vMP;
                            end;
                          end;
                        dint := dint+ din;
                        chet := chet+ che;
                        cart := cart+ car;
                        tktt := tktt+ tkt;
                        outrost := outrost+ outros;
                        icmsnormalt := icmsnormalt+ icmsnormal;
                        icmsstt := icmsstt+ icmsst;
                        piscofinsstt := piscofinsstt+ piscofinsst;
                        cdsListagem.AppendRecord([fDate, //DataEmissao
                                          ACBrSAT1.CFe.ide.nCFe, //nCFe
                                          ACBrSAT1.CFe.ide.numeroCaixa, //NrCaixa
                                          ACBrSAT1.CFe.Det.Count, //QtdItens
                                          ACBrSAT1.CFe.Total.vCFe, //Total
                                          ExtractFileName(FileList.Strings[i]), //Arquivo
                                          din, //Dinheiro
                                          che, //Cheque
                                          car, // Cartão
                                          tkt, // Ticket
                                          outros, //Outros
                                          icmsnormal,//vICMS
                                          icmsst,    //vICMSST
                                          piscofinsst]); //vPisCofinsST
                        valorTotal := valorTotal + ACBrSAT1.CFe.Total.vCFe;
                        Inc(CFeCount);
                      end;
                  end;
              end;
          end;
        edtListQtd.Text := IntToStr(CFeCount);
        edtListTotal.Text := CurrToStrF(valorTotal,ffCurrency,3);
        edtListDin.Text := CurrToStrF(dint,ffCurrency,3);
        edtListChe.Text := CurrToStrF(chet,ffCurrency,3);
        edtListCar.Text := CurrToStrF(cart,ffCurrency,3);
        edtListTkt.Text := CurrToStrF(tktt,ffCurrency,3);
        edtListOut.Text := CurrToStrF(outrost,ffCurrency,3);
        edtListICMS.Text := CurrToStrF(icmsnormalt,ffCurrency,3);
        edtListICMSST.Text := CurrToStrF(icmsstt,ffCurrency,3);
        edtListICMSPISCOF.Text := CurrToStrF(piscofinsstt,ffCurrency,3);
      end
    else
      begin
        MessageBox(Self.Handle,'Não foi possível localizar nenhum arquivo XML na pasta indicada.',PWideChar(Self.Caption),+MB_ICONWARNING+MB_APPLMODAL+MB_OK);
      end;
    dlgWait.Close;
    frmMain.ACBrSAT1.CFe.Clear;
    FileList.Destroy;
  except on E:Exception do
    begin
      MessageBox(Self.Handle,PWideChar('Ocorreu um erro abrindo os arquivos.'+#13+'Erro:'+E.Message),PWideChar(Self.Caption),+MB_ICONERROR+MB_APPLMODAL+MB_OK);
      if Assigned(FileList) then
        FileList.Destroy;
    end;
  end;
end;

end.
