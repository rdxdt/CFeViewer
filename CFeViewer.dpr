program CFeViewer;

uses
  Vcl.Forms,
  UFrmMain in 'UFrmMain.pas' {frmMain},
  UdlgWait in 'UdlgWait.pas' {dlgWait},
  UrelSintetico in 'UrelSintetico.pas' {relSintetico},
  LogManager in '..\delphi-comum\LogManager.pas',
  UrelTotalDia in 'UrelTotalDia.pas' {relTotalDia},
  URelFatICMS in 'URelFatICMS.pas' {relFatICMS};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'CFeViewer';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdlgWait, dlgWait);
  Application.CreateForm(TrelFatICMS, relFatICMS);
  Application.Run;
end.
