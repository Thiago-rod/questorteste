object ViewPrincipal: TViewPrincipal
  Left = 0
  Top = 0
  Caption = 'PROJETO QUESTOR'
  ClientHeight = 913
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 64
    Width = 673
    Height = 833
    TabOrder = 0
    object Label1: TLabel
      Left = 216
      Top = 8
      Width = 231
      Height = 37
      Caption = 'PROJETO QUESTOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid3: TDBGrid
      Left = 24
      Top = 640
      Width = 633
      Height = 161
      DataSource = DataSource3
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ClienteID'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ModeloCarroID'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataVenda'
          Width = 100
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 24
      Top = 399
      Width = 633
      Height = 161
      DataSource = DataSource2
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AnoLancamento'
          Width = 100
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 136
      Width = 633
      Height = 161
      DataSource = DataSource1
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataCadastro'
          Width = 100
          Visible = True
        end>
    end
    object BtInserirVendas: TButton
      Left = 24
      Top = 585
      Width = 201
      Height = 49
      Caption = 'Inserir 5 novas vendas'
      TabOrder = 3
      OnClick = BtInserirVendasClick
    end
    object BtInserirClientes: TButton
      Left = 24
      Top = 81
      Width = 201
      Height = 49
      Caption = 'Inserir 5 novos clientes'
      TabOrder = 4
      OnClick = BtInserirClientesClick
    end
    object BtInserirCarros: TButton
      Left = 24
      Top = 344
      Width = 201
      Height = 49
      Caption = 'Inserir 5 novos modelos de carros'
      TabOrder = 5
      OnClick = BtInserirCarrosClick
    end
    object BtCarregaVendas: TButton
      Left = 504
      Top = 609
      Width = 153
      Height = 25
      Caption = 'Carregar Dados'
      TabOrder = 6
      OnClick = BtCarregaVendasClick
    end
    object BtCarregaClientes: TButton
      Left = 504
      Top = 105
      Width = 153
      Height = 25
      Caption = 'Carregar Dados'
      TabOrder = 7
      OnClick = BtCarregaClientesClick
    end
    object BtCarregaCarros: TButton
      Left = 504
      Top = 368
      Width = 153
      Height = 25
      Caption = 'Carregar Dados'
      TabOrder = 8
      OnClick = BtCarregaCarrosClick
    end
  end
  object BtConectarBD: TButton
    Left = 8
    Top = 24
    Width = 153
    Height = 34
    Caption = 'Conectar Banco de Dados'
    TabOrder = 1
    OnClick = BtConectarBDClick
  end
  object DataSource1: TDataSource
    DataSet = DmConexao.QryClientes
    Left = 312
    Top = 288
  end
  object DataSource2: TDataSource
    DataSet = DmConexao.QryModeloCarro
    Left = 304
    Top = 552
  end
  object DataSource3: TDataSource
    DataSet = DmConexao.QryVendas
    Left = 312
    Top = 776
  end
end
