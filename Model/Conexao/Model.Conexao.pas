unit Model.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Vcl.Dialogs, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDmConexao = class(TDataModule)
    FDConexao: TFDConnection;
    QryModeloCarro: TFDQuery;
    QryClientes: TFDQuery;
    QryVendas: TFDQuery;
    QryModeloCarroID: TFDAutoIncField;
    QryModeloCarroNome: TWideStringField;
    QryModeloCarroAnoLancamento: TIntegerField;
    QryClientesID: TFDAutoIncField;
    QryClientesNome: TWideStringField;
    QryClientesCPF: TStringField;
    QryClientesDataCadastro: TDateField;
    QryVendasID: TFDAutoIncField;
    QryVendasClienteID: TIntegerField;
    QryVendasModeloCarroID: TIntegerField;
    QryVendasDataVenda: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
    function ConectarBD : Boolean;
  end;

var
  DmConexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmConexao }

function TDmConexao.ConectarBD: Boolean;
begin
  Result := False;
  try
    FDConexao.Connected := True;
    Result := True;
  Except
    on E: Exception do
      ShowMessage('Não foi possível conectar ao Banco de Dados.');

  end;

end;

end.
