program AppProjetoQuestor;

uses
  Vcl.Forms,
  View.Principal in 'View\View.Principal.pas' {ViewPrincipal},
  Model.Conexao in 'Model\Conexao\Model.Conexao.pas' {DmConexao: TDataModule},
  Model.Classes in 'Model\Model.Classes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.Run;
end.
