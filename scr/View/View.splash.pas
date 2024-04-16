unit View.splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmSplash = class(TForm)
    pnlPrincipal: TPanel;
    imgLogo: TImage;
    lblStatus: TLabel;
    ProgressBar1: TProgressBar;
    lblNomeAplicacao: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  if progressbar1.Position <= 100 then
  begin
    progressbar1.StepIt;
    case ProgressBar1.Position of
      2: lblstatus.Caption:= 'Carregando dependencias...';
      20: lblstatus.Caption:= 'Conectando ao banco de dados...';
      40: lblstatus.Caption:= 'Carregando as configurações...';
      80: lblstatus.Caption:= 'To quase la...';
      90: lblstatus.Caption:= 'iniciando a aplicação...';
    end;
  end;
  if progressbar1.Position = 100 then
    close;

end;

end.
