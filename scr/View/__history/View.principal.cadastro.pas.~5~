unit View.principal.cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPanels, Vcl.ExtCtrls, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids
  ,udm ;

type
  TFormCadastroPadrao = class(TForm)
    ImageList1: TImageList;
    DataSource1: TDataSource;
    Pnlprincipal: TCardPanel;
    CardPesquisa: TCard;
    pnlpesquisa: TPanel;
    Label1: TLabel;
    EdtPesquisar: TEdit;
    bntPesquisar: TButton;
    pnlPequisarBotoes: TPanel;
    bntFechar: TButton;
    bntIncluir: TButton;
    bntAlterar: TButton;
    bntImprimir: TButton;
    bntExcluir: TButton;
    pnlGrid: TPanel;
    DBGrid1: TDBGrid;
    Cardcadastro: TCard;
    Panel1: TPanel;
    Button1: TButton;
    Button4: TButton;
    procedure bntIncluirClick(Sender: TObject);
    procedure bntFecharClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bntAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPadrao: TFormCadastroPadrao;

implementation

{$R *.dfm}

procedure TFormCadastroPadrao.bntAlterarClick(Sender: TObject);
begin
   Pnlprincipal.ActiveCard := cardcadastro;
end;

procedure TFormCadastroPadrao.bntFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormCadastroPadrao.bntIncluirClick(Sender: TObject);
begin
  Pnlprincipal.ActiveCard := cardcadastro;
end;

procedure TFormCadastroPadrao.Button1Click(Sender: TObject);
begin
  Pnlprincipal.ActiveCard := cardpesquisa;
end;

procedure TFormCadastroPadrao.FormShow(Sender: TObject);
begin
  Pnlprincipal.ActiveCard := CardPesquisa;

end;

end.
