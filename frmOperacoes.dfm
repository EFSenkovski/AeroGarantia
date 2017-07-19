object F_Operacoes: TF_Operacoes
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o de Opera'#231#245'es'
  ClientHeight = 465
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 984
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
    Top = 41
    Width = 984
    Height = 383
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Panel5: TPanel
      Left = 0
      Top = 120
      Width = 984
      Height = 263
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 369
        Top = 0
        Width = 6
        Height = 263
        Color = 8863233
        ParentColor = False
      end
      object Panel6: TPanel
        Left = 375
        Top = 0
        Width = 609
        Height = 263
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel8: TPanel
          Left = 0
          Top = 209
          Width = 609
          Height = 54
          Align = alBottom
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label5: TLabel
            Left = 1
            Top = 1
            Width = 607
            Height = 13
            Align = alTop
            Caption = ' Filtrar as opera'#231#245'es de garantia'
            ExplicitWidth = 156
          end
          object Label7: TLabel
            Left = 3
            Top = 15
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object Label8: TLabel
            Left = 367
            Top = 15
            Width = 83
            Height = 13
            Caption = 'Uso da Opera'#231#227'o'
          end
          object Label9: TLabel
            Left = 73
            Top = 15
            Width = 46
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object EditFiltGarDes: TEdit
            Left = 73
            Top = 31
            Width = 290
            Height = 21
            TabOrder = 0
            OnChange = EditFiltGarDesChange
          end
          object EditFiltGar: TEdit
            Left = 3
            Top = 31
            Width = 66
            Height = 21
            TabOrder = 1
            OnChange = EditFiltGarChange
          end
          object CbDescricao: TComboBox
            Left = 367
            Top = 31
            Width = 199
            Height = 21
            TabOrder = 2
            OnChange = CbDescricaoChange
            OnClick = CbDescricaoClick
            Items.Strings = (
              'Entrada Garantia Fornecedor'
              'Sa'#237'da Garantia Fornecedor'
              'Entrada Garantia Cliente'
              'Sa'#237'da Garantia Cliente'
              'Nenhuma')
          end
        end
        object DbGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 609
          Height = 209
          Align = alClient
          DataSource = DsOpeGaran
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid2DrawColumnCell
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 369
        Height = 263
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Panel9: TPanel
          Left = 0
          Top = 208
          Width = 369
          Height = 55
          Align = alBottom
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label4: TLabel
            Left = 1
            Top = 1
            Width = 367
            Height = 13
            Align = alTop
            Caption = ' Filtrar todas as opera'#231#245'es'
            ExplicitWidth = 128
          end
          object Label6: TLabel
            Left = 3
            Top = 16
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object EditFiltCodigo: TEdit
            Left = 3
            Top = 32
            Width = 66
            Height = 21
            TabOrder = 0
            OnChange = EditFiltCodigoChange
          end
          object EditFiltDescricao: TEdit
            Left = 73
            Top = 32
            Width = 290
            Height = 21
            TabOrder = 1
            OnChange = EditFiltDescricaoChange
          end
        end
        object DBGridOperacoes: TDBGrid
          Left = 0
          Top = 0
          Width = 369
          Height = 208
          Align = alClient
          DataSource = DsOperacoes
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGridOperacoesCellClick
          OnDrawColumnCell = DBGridOperacoesDrawColumnCell
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 984
      Height = 120
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 5
        Top = 2
        Width = 47
        Height = 13
        Caption = 'Opera'#231#227'o'
      end
      object Label2: TLabel
        Left = 1
        Top = 101
        Width = 116
        Height = 13
        Caption = 'Todas as Opera'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 377
        Top = 101
        Width = 63
        Height = 13
        Caption = 'Opera'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditCodigo: TEdit
        Left = 5
        Top = 19
        Width = 64
        Height = 21
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = EditCodigoKeyPress
      end
      object EditDescricao: TEdit
        Left = 75
        Top = 19
        Width = 370
        Height = 21
        ReadOnly = True
        TabOrder = 1
      end
      object BtnConfirmar: TBitBtn
        Left = 451
        Top = 15
        Width = 70
        Height = 25
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BtnConfirmarClick
      end
      object RdgOpcOpe: TRadioGroup
        Left = 5
        Top = 46
        Width = 516
        Height = 54
        Caption = '  [Op'#231#245'es Opera'#231#245'es] '
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Entrada Garantia Fornecedor'
          'Entrada Garantia Cliente'
          'Sa'#237'da Garantia Fornecedor'
          'Sa'#237'da Garantia Cliente'
          'Nenhuma')
        TabOrder = 3
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 424
    Width = 984
    Height = 41
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
  end
  object QryOperacoes: TFDQuery
    Connection = F_DMMAIN.FDConnection
    SQL.Strings = (
      'Select OPE_COD, OPE_DES From OPERACOES'
      'Order By OPE_DES')
    Left = 21
    Top = 248
  end
  object CdsOperacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspOperacoes'
    Left = 80
    Top = 288
    object CdsOperacoesOPE_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'OPE_COD'
      Origin = 'OPE_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsOperacoesOPE_DES: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OPE_DES'
      Origin = 'OPE_DES'
      Size = 40
    end
  end
  object DsOperacoes: TDataSource
    DataSet = CdsOperacoes
    Left = 96
    Top = 321
  end
  object DspOperacoes: TDataSetProvider
    DataSet = QryOperacoes
    Left = 50
    Top = 272
  end
  object DsOpeGaran: TDataSource
    DataSet = CdsOpeGaran
    Left = 648
    Top = 95
  end
  object QryOpeGaran: TFDQuery
    Connection = F_DMMAIN.FDConnection
    SQL.Strings = (
      'Select'
      '  OPE.OPE_COD,'
      '  OPE.OPE_DES,'
      '  CASE OPE_USO'
      '    WHEN '#39'0'#39' THEN '#39'Entrada Garantia Fornecedor'#39
      '    WHEN '#39'1'#39' THEN '#39'Entrada Garantia Cliente'#39
      '    WHEN '#39'2'#39' THEN '#39'Sa'#237'da Garantia Fornecedor'#39
      '    WHEN '#39'3'#39' THEN '#39'Sa'#237'da Garantia Cliente'#39
      '    WHEN '#39'4'#39' THEN '#39'Nenhuma'#39
      '  END OPE_USO'
      'From OPERACOES OPE'
      'Inner Join OPERACOESGARANTIA GAR'
      '  On (GAR.OPE_COD = OPE.OPE_COD)'
      'Order By OPE.OPE_DES')
    Left = 560
    Top = 48
  end
  object DspOpeGaran: TDataSetProvider
    DataSet = QryOpeGaran
    Left = 560
    Top = 97
  end
  object CdsOpeGaran: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspOpeGaran'
    Left = 648
    Top = 49
    object CdsOpeGaranOPE_COD: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      DisplayWidth = 7
      FieldName = 'OPE_COD'
      Origin = 'OPE_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsOpeGaranOPE_DES: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OPE_DES'
      Origin = 'OPE_DES'
      Size = 40
    end
    object CdsOpeGaranOPE_USO: TStringField
      DisplayLabel = 'Uso Da Opera'#231#227'o'
      FieldName = 'OPE_USO'
      Origin = 'OPE_USO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 27
    end
  end
  object QryGeral: TFDQuery
    Connection = F_DMMAIN.FDConnection
    Left = 600
    Top = 144
  end
  object QryAux: TFDQuery
    Connection = F_DMMAIN.FDConnection
    Left = 600
  end
end
