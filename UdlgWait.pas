unit UdlgWait;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TdlgWait = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    lblTask: TLabel;
    pBar: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgWait: TdlgWait;

implementation

{$R *.dfm}

end.
