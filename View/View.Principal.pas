unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TViewPrincipal = class(TForm)
    BtInserirClientes: TButton;
    BtInserirCarros: TButton;
    BtInserirVendas: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    BtCarregaClientes: TButton;
    BtCarregaCarros: TButton;
    BtCarregaVendas: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    BtConectarBD: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    procedure BtInserirClientesClick(Sender: TObject);
    procedure BtInserirCarrosClick(Sender: TObject);
    procedure BtInserirVendasClick(Sender: TObject);
    procedure BtConectarBDClick(Sender: TObject);
    procedure BtCarregaClientesClick(Sender: TObject);
    procedure BtCarregaCarrosClick(Sender: TObject);
    procedure BtCarregaVendasClick(Sender: TObject);
  private
    { Private declarations }
    procedure InserirDadosBD(ASql : String);
    function GeraCPF(const Ponto: Boolean): string;
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

uses Model.Conexao, FireDAC.Comp.Client;

procedure TViewPrincipal.BtCarregaCarrosClick(Sender: TObject);
begin
  DmConexao.QryModeloCarro.Active := not DmConexao.QryModeloCarro.Active;
end;

procedure TViewPrincipal.BtCarregaClientesClick(Sender: TObject);
begin
  DmConexao.QryClientes.Active := not DmConexao.QryClientes.Active;
end;

procedure TViewPrincipal.BtCarregaVendasClick(Sender: TObject);
begin
  DmConexao.QryVendas.Active := not DmConexao.QryVendas.Active;
end;

procedure TViewPrincipal.BtConectarBDClick(Sender: TObject);
begin
  try
     if DmConexao.ConectarBD then
       ShowMessage ('Servidor Conectado');
  finally
  end;

end;

procedure TViewPrincipal.BtInserirCarrosClick(Sender: TObject);
var
  i: Integer;
  FSql : String;
begin
  for i := 0 to 5 - 1 do
  begin
    FSql := ('INSERT INTO ModeloCarro (Nome, AnoLancamento) VALUES (' +QuotedStr('Modelo ' + IntToStr(i)) + ', 2024)');
    InserirDadosBD(FSql);
    FSql := '';
  end;

end;

procedure TViewPrincipal.BtInserirClientesClick(Sender: TObject);
var
  i: Integer;
  FSql : String;
begin
  for i := 0 to 5 - 1 do
  begin
    FSql := ('INSERT INTO Cliente (Nome, CPF, DataCadastro) VALUES ('+
      QuotedStr('Cliente ' + IntToStr(i)) + ', ' + QuotedStr(GeraCPF(false)) + ', ' +
      QuotedStr(DateToStr(Now)) + ')' );
    InserirDadosBD(FSql);
    FSql := '';
  end;

end;

procedure TViewPrincipal.BtInserirVendasClick(Sender: TObject);
var
  i: Integer;
  FSql : String;
begin
  for i := 1 to 5  do
  begin
    FSql :=('INSERT INTO Venda (ClienteID, ModeloCarroID, DataVenda) VALUES (' +
        IntToStr(i) + ', ' + IntToStr(i) + ', ' + QuotedStr(DateToStr(Now)) + ')');
    InserirDadosBD(FSql);
    FSql := '';
  end;

end;

function TViewPrincipal.GeraCPF(const Ponto: Boolean): string;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9, d1, d2: LongInt;
begin
 n1 := Trunc(Random(10));
 n2 := Trunc(Random(10));
 n3 := Trunc(Random(10));
 n4 := Trunc(Random(10));
 n5 := Trunc(Random(10));
 n6 := Trunc(Random(10));
 n7 := Trunc(Random(10));
 n8 := Trunc(Random(10));
 n9 := Trunc(Random(10));
 d1 := (n9 * 2) + (n8 * 3) + (n7 * 4) + (n6 *  5) + (n5 * 6) +
  (n4 * 7) + (n3 * 8) + (n2 * 9) + (n1 * 10);
 d1 := 11 - (d1 mod 11);

 if (d1 >= 10) then
   d1 := 0;
 d2 := (d1 * 2) + (n9 * 3) + (n8 * 4) + (n7 *  5) + (n6 *  6) +
  (n5 * 7) + (n4 * 8) + (n3 * 9) + (n2 * 10) + (n1 * 11);
 d2 := 11 - (d2 mod 11);

 if (d2>=10) then
   d2 := 0;

 Result := IntToStr(n1) + IntToStr(n2) + IntToStr(n3) + IntToStr(n4) + IntToStr(n5) + IntToStr(n6) +
            IntToStr(n7) + IntToStr(n8) + IntToStr(n9) + IntToStr(d1) + IntToStr(d2);
 if Ponto then
   Result := Copy(Result, 1, 3) + '.' + Copy(Result, 4, 3) + '.' + Copy(Result, 7, 3) + '-' + Copy(Result, 10, 2);

end;

procedure TViewPrincipal.InserirDadosBD(ASql: String);
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := DmConexao.FDConexao;
    FDQuery.SQL.Text := ASql;
    FDQuery.ExecSQL;
  finally
    FDQuery.Free;
  end;
end;

end.
