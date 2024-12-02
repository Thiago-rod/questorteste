unit Model.Classes;

interface

 type
  TCliente = class
    ID: Integer;
    Nome: String;
    CPF: String;
    DataCadastro: TDate;
  end;

  TModeloCarro = class
    ID: Integer;
    Nome: String;
    AnoLancamento: Integer;
  end;

  TVenda = class
    ID: Integer;
    ClienteID: Integer;
    ModeloCarroID: Integer;
    DataVenda: TDate;
  end;

implementation

end.
