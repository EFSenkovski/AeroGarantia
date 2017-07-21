object F_ConsultaPartesGarantia: TF_ConsultaPartesGarantia
  Left = 0
  Top = 0
  Caption = 'Consulta de Informa'#231#245'es de Garantia'
  ClientHeight = 389
  ClientWidth = 695
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 8863233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #39
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 522
    object LbTopo: TLabel
      Left = 0
      Top = 0
      Width = 291
      Height = 41
      Align = alLeft
      Caption = '  Controle de Garantias do AeroSML'
      Color = 8863233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 19
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 695
    Height = 324
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 522
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 695
      Height = 324
      ActivePage = TbCLient
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 522
      object TbCLient: TTabSheet
        Caption = 'Clientes e Fornecedores'
        ExplicitWidth = 514
        object GrbCliente: TGroupBox
          Left = 0
          Top = 0
          Width = 329
          Height = 296
          Align = alLeft
          Caption = ' [Cliente] '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 325
            Height = 279
            Align = alClient
            DataSource = DsClientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDblClick = DBGrid1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'GAR_CLI'
                Title.Caption = 'Cliente'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLI_NOM'
                Title.Caption = 'Nome'
                Visible = True
              end>
          end
        end
        object GrbFornecedor: TGroupBox
          Left = 329
          Top = 0
          Width = 358
          Height = 296
          Align = alClient
          Caption = ' [Fornecedor] '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ExplicitLeft = 251
          ExplicitWidth = 263
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 354
            Height = 279
            Align = alClient
            DataSource = DsFornecedores
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDblClick = DBGrid2DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'PRO_FOR'
                Title.Caption = 'Forn.'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLI_NOM'
                Title.Caption = 'Nome'
                Visible = True
              end>
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Produtos'
        ImageIndex = 1
        ExplicitWidth = 514
      end
    end
  end
  object pnGarantia: TPanel
    Left = 0
    Top = 41
    Width = 695
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Garantia N'#186' ...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8863233
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 522
  end
  object QryClientes: TFDQuery
    Active = True
    Connection = F_DMMAIN.FDConnection
    SQL.Strings = (
      'Select GAR.GAR_CLI, CLi.CLI_NOM FRom PROGARANTIA GAR'
      'Left Join CLIENTE CLI'
      '  On (CLI.CLI_COD = Gar.GAR_CLI)'
      'Where GAR.GAR_COD = :GARANTIA')
    Left = 36
    Top = 137
    ParamData = <
      item
        Name = 'GARANTIA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DsClientes: TDataSource
    DataSet = QryClientes
    Left = 36
    Top = 177
  end
  object QryFornecedores: TFDQuery
    Connection = F_DMMAIN.FDConnection
    SQL.Strings = (
      'Select GAR.PRO_FOR, CLi.CLI_NOM FRom PROGARANTIADET GAR'
      'Left Join CLIENTE CLI'
      '  On (CLI.CLI_COD = Gar.PRO_FOR)'
      'Where GAR.GAR_COD = :GARANTIA'
      'Group By GAR.PRO_FOR, CLi.CLI_NOM')
    Left = 301
    Top = 145
    ParamData = <
      item
        Name = 'GARANTIA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DsFornecedores: TDataSource
    DataSet = QryFornecedores
    Left = 301
    Top = 193
  end
end
