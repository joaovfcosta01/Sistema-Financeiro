unit View.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuCadastros: TMenuItem;
    mnuRelatorio: TMenuItem;
    mnuAjuda: TMenuItem;
    mnuUsuarios: TMenuItem;
    procedure mnuUsuariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  View.Usuario,
  View.splash;

{$R *.dfm}

procedure TfrmPrincipal.mnuUsuariosClick(Sender: TObject);
begin
  FrmUsuarios.show;
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  frmsplash:= Tfrmsplash.Create(nil);
  try
    frmsplash.ShowModal;
  finally
     freeandnil(frmsplash);
  end;

end;

end.
