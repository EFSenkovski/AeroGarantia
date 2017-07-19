object F_FornecedorProduto: TF_FornecedorProduto
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Selecrione o fornecedor e as quantidades deste produto'
  ClientHeight = 456
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PrintScale = poPrintToFit
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 88
    Top = 95
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 475
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
    object LbTopo: TLabel
      Left = 0
      Top = 0
      Width = 468
      Height = 41
      Align = alLeft
      Caption = ' Selecione e fornecedor e as quantidades deste produto...'
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
    Top = 41
    Width = 475
    Height = 415
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 185
      Width = 473
      Height = 5
      Cursor = crVSplit
      Align = alBottom
      Color = 8863233
      ParentColor = False
      ExplicitTop = 178
      ExplicitWidth = 476
    end
    object Panel3: TPanel
      Left = 1
      Top = 190
      Width = 473
      Height = 224
      Align = alBottom
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 471
        Height = 222
        Align = alClient
        DataSource = DsForPro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CLI_COD'
            Title.Caption = 'C'#243'd. Fornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NOM'
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FAN'
            Title.Caption = 'Fantasia'
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 473
      Height = 184
      Align = alClient
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 5
        Width = 38
        Height = 13
        Caption = 'Produto'
      end
      object Label2: TLabel
        Left = 84
        Top = 53
        Width = 85
        Height = 13
        Caption = 'Saldo Em Estoque'
      end
      object Label4: TLabel
        Left = 175
        Top = 53
        Width = 86
        Height = 13
        Caption = 'Saldo Com Cliente'
      end
      object Label5: TLabel
        Left = 270
        Top = 53
        Width = 108
        Height = 13
        Caption = 'Saldo Com Fornecedor'
      end
      object Label6: TLabel
        Left = 388
        Top = 53
        Width = 75
        Height = 13
        Caption = 'Saldo Rejeitado'
      end
      object Label7: TLabel
        Left = 8
        Top = 99
        Width = 115
        Height = 13
        Caption = 'Fornecedor Selecionado'
      end
      object Label8: TLabel
        Left = 8
        Top = 53
        Width = 54
        Height = 13
        Caption = 'Qtde. Nota'
      end
      object EditProCod: TEdit
        Left = 8
        Top = 24
        Width = 57
        Height = 21
        TabStop = False
        Color = clSilver
        ReadOnly = True
        TabOrder = 0
      end
      object EditProDes: TEdit
        Left = 71
        Top = 24
        Width = 392
        Height = 21
        TabStop = False
        Color = clSilver
        ReadOnly = True
        TabOrder = 1
      end
      object EditSalEst: TCurrencyEdit
        Left = 84
        Top = 72
        Width = 73
        Height = 21
        DisplayFormat = ',0.00;-,0.00'
        TabOrder = 2
      end
      object EditSalFor: TCurrencyEdit
        Left = 267
        Top = 72
        Width = 73
        Height = 21
        DisplayFormat = ',0.00;-,0.00'
        TabOrder = 5
      end
      object EditSalRej: TCurrencyEdit
        Left = 388
        Top = 72
        Width = 73
        Height = 21
        DisplayFormat = ',0.00;-,0.00'
        TabOrder = 6
      end
      object EditForCod: TEdit
        Left = 8
        Top = 118
        Width = 57
        Height = 21
        TabStop = False
        Color = clSilver
        ReadOnly = True
        TabOrder = 4
      end
      object EditForNom: TEdit
        Left = 71
        Top = 118
        Width = 392
        Height = 21
        TabStop = False
        Color = clSilver
        ReadOnly = True
        TabOrder = 7
      end
      object BtnConfirmar: TBitBtn
        Left = 344
        Top = 145
        Width = 119
        Height = 32
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ECCCECC768FF
          FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF7E7BEE1A816E0A40BEFD081FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E1AFE1A611E0A40BE0A40BE0
          A40BF5E0ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F3DB9DE0A50DE0A40BE0A40BE0A40BE0A40BE1A815F9EED0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF0D48BE0A40BE0A40BE0A40BE1A611E0A50FE0
          A40BE0A40BE4AE27FCF7EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECD79E0A40B
          E0A40BE0A40BE1A816F7E6BDF2DA9BE0A40BE0A40BE0A40BE7B944FEFDF9FFFF
          FFFFFFFFFFFFFFFFFFFFF1D692E0A40BE0A40BE2AA1CF8EBCAFFFFFFFFFFFFEC
          C86DE0A40BE0A40BE0A40BECC86BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD183
          E3AE25FAF0D6FFFFFFFFFFFFFFFFFFFEFDFAE7BA45E0A40BE0A40BE0A40BF2D8
          98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF8ECFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCF7EAE4AF28E0A40BE0A40BE0A50FF7E7C0FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EED1E1A815E0A40BE0A4
          0BE2AB1DFBF3DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF5E0ADE0A40BE0A40BE0A40BE5B435FEFBF4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD081E0A4
          0BE0A40BE0A40BEAC159FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEE9BF55E0A40BE2A919F6E5B8FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFA
          F3EAC057FAF1D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 8
        OnClick = BtnConfirmarClick
      end
      object EditQtdNota: TCurrencyEdit
        Left = 8
        Top = 72
        Width = 70
        Height = 21
        TabStop = False
        Color = clSilver
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 9
      end
      object EditSalCli: TCurrencyEdit
        Left = 175
        Top = 72
        Width = 73
        Height = 21
        DisplayFormat = ',0.00;-,0.00'
        TabOrder = 3
      end
    end
  end
  object QryForPro: TFDQuery
    Connection = F_DMMAIN.FDConnection
    SQL.Strings = (
      'Select CLI.CLI_COD, CLI.CLI_NOM, CLI.CLI_FAN From CLIENTE CLI'
      'Inner Join FORNECEDORPRODUTO FP'
      'On (FP.FOR_COD = CLI.CLI_COD)'
      'Where FP.FOR_ITE = :PRO'
      'Order By CLI.CLI_NOM')
    Left = 321
    Top = 250
    ParamData = <
      item
        Name = 'PRO'
        DataType = ftString
        ParamType = ptInput
        Size = 13
        Value = Null
      end>
  end
  object DsForPro: TDataSource
    DataSet = QryForPro
    Left = 361
    Top = 250
  end
end
