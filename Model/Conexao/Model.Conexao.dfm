object DmConexao: TDmConexao
  Height = 480
  Width = 640
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=Banco_Questor'
      'User_Name=sa'
      'Password=Admin@'
      'Server=(local)'
      'DriverID=MSSQL')
    Connected = True
    Left = 56
    Top = 56
  end
  object QryModeloCarro: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT ID'
      '      ,Nome'
      '      ,AnoLancamento'
      '  FROM ModeloCarro')
    Left = 56
    Top = 296
    object QryModeloCarroID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryModeloCarroNome: TWideStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 100
    end
    object QryModeloCarroAnoLancamento: TIntegerField
      FieldName = 'AnoLancamento'
      Origin = 'AnoLancamento'
    end
  end
  object QryClientes: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT ID'
      '      ,Nome'
      '      ,CPF'
      '      ,DataCadastro'
      '  FROM Cliente'
      '')
    Left = 200
    Top = 296
    object QryClientesID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryClientesNome: TWideStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 100
    end
    object QryClientesCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      FixedChar = True
      Size = 11
    end
    object QryClientesDataCadastro: TDateField
      FieldName = 'DataCadastro'
      Origin = 'DataCadastro'
    end
  end
  object QryVendas: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT ID'
      '      ,ClienteID'
      '      ,ModeloCarroID'
      '      ,DataVenda'
      '  FROM Venda')
    Left = 344
    Top = 296
    object QryVendasID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryVendasClienteID: TIntegerField
      FieldName = 'ClienteID'
      Origin = 'ClienteID'
    end
    object QryVendasModeloCarroID: TIntegerField
      FieldName = 'ModeloCarroID'
      Origin = 'ModeloCarroID'
    end
    object QryVendasDataVenda: TDateField
      FieldName = 'DataVenda'
      Origin = 'DataVenda'
    end
  end
end
