unit udm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    SQLConexao: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);

  private
    ConSt ARQUIVOCONFIGURACAO =  'SistemaFinanceiro.cfg';
    { Private declarations }
  public
    { Public declarations }
    procedure CarregarConfiguracoes;
    procedure Conectar;
    Procedure Desconctar;


  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.CarregarConfiguracoes;
var
  ParametroNome: STRING ;
  ParametroValor: string;
  contador : integer;
  ListaParametros : TStringlist;
begin
  SQLConexao.Params.Clear;
  if not fileexists(ARQUIVOCONFIGURACAO) then
    raise EXCEPTION.Create('Arquivo de configuração');
  listaparametros := TStringList.Create;
  try
    ListaParametros.LoadFromFile(ARQUIVOCONFIGURACAO);
    for Contador := 0 to Pred(ListaParametros.Count) do
    begin
      if listaparametros[Contador].indexOF('=')> 0  then
      begin
        ParametroNome                 := ListaParametros[Contador].split(['='])[0].Trim;
        ParametroValor                := ListaParametros[Contador].split(['='])[1].Trim;

       Sqlconexao.Params.Add(parametronome+'='+parametrovalor);
      end;
    end;
   // Sqlconexao.Params.Database    := ListaParametros[2].split(['='])[1].Trim;
    FDPhysFBDriverLink1.VendorLib := ListaParametros[5].split(['='])[1].Trim;
  finally
    Listaparametros.Free;
  end;
end;

procedure TDataModule1.Conectar;
begin
  SQLConexao.Connected;
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  CarregarCOnfiguracoes;
  Conectar;
end;

procedure TDataModule1.Desconctar;
begin
  SQLConexao.Connected := False;
end;

end.
