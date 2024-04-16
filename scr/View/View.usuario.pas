unit View.usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.principal.cadastro, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPanels, Model.usuario, Vcl.WinXCtrls;

type
  TfrmUsuarios = class(TFormCadastroPadrao)
    edtNome: TEdit;
    edtLogin: TEdit;
    edtSenha: TEdit;
    ToggleStatus: TToggleSwitch;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure bntPesquisarClick(Sender: TObject);
    procedure bntAlterarClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

procedure TfrmUsuarios.bntAlterarClick(Sender: TObject);
begin
  inherited;
  edtNome.Text := dmUsuarios.cdsUsuariosnome.AsString;
  edtLogin.Text := dmUsuarios.cdsUsuarioslogin.AsString;
  edtsenha.Text := dmUsuarios.cdsUsuariossenha.AsString;
  ToggleStatus.State  := tssON;
  if dmUsuarios.cdsUsuariosSTATUS.AsString = 'B' then
    ToggleStatus.state := tssOff;

end;

procedure TfrmUsuarios.bntPesquisarClick(Sender: TObject);
begin
  inherited;
  dmusuarios.cdsUsuarios.close;
  dmusuarios.cdsUsuarios.commandText := 'Select*from usuario';
  dmusuarios.cdsUsuarios.open;
//  dmusuarios.FDquery1.SQl.Clear;
//  dmusuarios.FDquery1.SQL.Add('Select*from usuario');
//  dmusuarios.FDquery1.Open;
end;

procedure TfrmUsuarios.Button4Click(Sender: TObject);
var
  LStatus : String;
begin
  if trim(edtNome.Text) = '' then
  begin
    edtNome.SetFocus;
    Application.MessageBox('O campo NÃO pode estar vazio.','Atenção', MB_OK + MB_ICONWARNING);
    abort;
  end;
  if trim(edtLogin.Text) = '' then
  begin
    edtNome.SetFocus;
    Application.MessageBox('O campo NÃO pode estar vazio.','Atenção', MB_OK + MB_ICONWARNING);
    abort;
  end;
  if trim(edtSenha.Text) = '' then
  begin
    edtNome.SetFocus;
    Application.MessageBox('O campo NÃO pode estar vazio.','Atenção', MB_OK + MB_ICONWARNING);
    abort;
  end;
  LStatus := 'A';
  if ToggleStatus.State := tssOff then
    Lstatus := 'B';
  dmUsuarios.cdsUsuariosNOME.AsString := trim(edtNome.Text);
  dmUsuarios.cdsUsuariosLOGIN.AsString := trim(edtLogin.Text);
  dmUsuarios.cdsUsuariosSenha.AsString := trim(edtSenha.Text);
  inherited;

end;

end.
