object F_ConsultaNota: TF_ConsultaNota
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Consulta de Pedidos'
  ClientHeight = 611
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PrintScale = poPrintToFit
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1008
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
    ExplicitWidth = 719
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
    Width = 1008
    Height = 521
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 719
    ExplicitHeight = 375
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1006
      Height = 48
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 225
        Top = 3
        Width = 23
        Height = 13
        Caption = 'Nota'
      end
      object Label2: TLabel
        Left = 296
        Top = 3
        Width = 24
        Height = 13
        Caption = 'S'#233'rie'
      end
      object Label5: TLabel
        Left = 367
        Top = 3
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object Label3: TLabel
        Left = 8
        Top = 3
        Width = 36
        Height = 13
        Caption = 'Per'#237'odo'
      end
      object Label6: TLabel
        Left = 108
        Top = 22
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object EditNot: TEdit
        Left = 225
        Top = 19
        Width = 65
        Height = 21
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 2
      end
      object EditSer: TEdit
        Left = 296
        Top = 19
        Width = 65
        Height = 21
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 3
      end
      object EditCli: TEdit
        Left = 367
        Top = 19
        Width = 65
        Height = 21
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 4
        OnDblClick = EditCliDblClick
        OnExit = EditCliExit
      end
      object EditCliNom: TEdit
        Left = 438
        Top = 19
        Width = 412
        Height = 21
        Color = clSilver
        TabOrder = 5
      end
      object BtnPesquisar: TBitBtn
        Left = 856
        Top = 17
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 6
        OnClick = BtnPesquisarClick
      end
      object EditInicio: TDateEdit
        Left = 8
        Top = 19
        Width = 95
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object EditFinal: TDateEdit
        Left = 121
        Top = 19
        Width = 95
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object PnDetail: TPanel
      Left = 1
      Top = 337
      Width = 1006
      Height = 183
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      ExplicitTop = 504
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1006
        Height = 183
        Align = alClient
        DataSource = DsDetail
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
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 49
      Width = 1006
      Height = 288
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 2
      ExplicitTop = 89
      ExplicitHeight = 464
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1006
        Height = 288
        Align = alClient
        DataSource = DsMaster
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
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 562
    Width = 1008
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 680
    object BtnConfirmar: TBitBtn
      AlignWithMargins = True
      Left = 872
      Top = 3
      Width = 133
      Height = 43
      Align = alRight
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDF9DDE8C1B8CF
        7DA5C25A99BA458EB22F8EB22F99BA45A5C25AB8CF7DDDE8C1FCFDF9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F7EAB9CF7E8EB23088AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE258EB230B9CF7EF3
        F7EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFBFCF8C1D58E8DB12E88AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE258D
        B12EC1D58EFBFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F7EAA2BF5488AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE25A2BF54F4F7EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEAF1D995B73D88AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2595B73DEAF1D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4F7EA95B73D88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2595B73DF4F7EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FBFCF8A2BF5488AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE25A2BF54FBFCF8FFFFFFFFFFFFFFFFFFFFFFFF
        C1D58E88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE25C1D58EFFFFFFFFFFFFFFFFFFF3F7EA
        8DB12E88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE258DB12EF3F7EAFFFFFFFFFFFFB9CF7E
        88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE2588AE25B9CF7EFFFFFFFCFDF98EB230
        88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        25BBD183BCD28588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE2588AE258EB230FCFDF9DDE8C188AE25
        88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE258EB22FD8E4
        B7FBFCF7FCFDF9C1D58E88AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE25DDE8C1B8CF7D88AE25
        88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2599B944EAF1D9F1F5
        E49EBD4EB0C96FFEFEFDB5CC7788AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE25B8CF7DA5C25A88AE25
        88AE2588AE2588AE2588AE2588AE2588AE2588AE25AAC563F8FAF1E1EAC791B4
        3688AE2588AE25BDD286FDFEFCAAC56388AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE25A5C25A99BA4588AE25
        88AE2588AE2588AE2588AE2588AE2588AE25C0D48CFEFEFDCBDCA08AAF2888AE
        2588AE2588AE2588AE25CADB9EF9FBF5A0BE5188AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2599BA458EB22F88AE25
        88AE2588AE2588AE2588AE2588AE25D3E1AEFBFCF8B4CC7588AE2588AE2588AE
        2588AE2588AE2588AE2588AE26D6E3B5F5F8EC98B94288AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE258EB22F8EB22F88AE25
        88AE2588AE2588AE2588AE2588AE25C0D48BA0BF5188AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE258BB02AE1EBC8EEF4E092B53788AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE258EB22F99BA4588AE25
        88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE258FB332EAF1D9E6EED18DB12E88AE2588
        AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2599BA45A5C25A88AE25
        88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2595B73CF1F6E6DCE7BF89AF2888
        AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE25A5C25AB8CF7D88AE25
        88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE259CBC4AF8FAF1D1E0AA88
        AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE25B8CF7DDDE8C188AE25
        88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE25A5C25AFCFDF9C4
        D79288AE2588AE2588AE2588AE2588AE2588AE2588AE25DDE8C1FCFDF98EB230
        88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE25B0C96EFE
        FEFDB7CE7B88AE2588AE2588AE2588AE2588AE258EB230FCFDF9FFFFFFB9CF7E
        88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE25BB
        D183E8EFD588AE2588AE2588AE2588AE2588AE25B9CF7EFFFFFFFFFFFFF3F7EA
        8DB12E88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE258DB12EF3F7EAFFFFFFFFFFFFFFFFFF
        C1D58E88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE2588AE25C1D58EFFFFFFFFFFFFFFFFFFFFFFFF
        FBFCF8A2BF5488AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2588AE25A2BF54FBFCF8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4F7EA95B73D88AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2588AE2595B73DF4F7EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEAF1D995B73D88AE2588AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE2588AE2595B73DEAF1D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F7EAA2BF5488AE2588AE2588AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588
        AE2588AE25A2BF54F4F7EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFBFCF8C1D58E8DB12E88AE2588AE2588AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE258D
        B12EC1D58EFBFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F7EAB9CF7E8EB23088AE2588AE
        2588AE2588AE2588AE2588AE2588AE2588AE2588AE2588AE258EB230B9CF7EF3
        F7EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDF9DDE8C1B8CF
        7DA5C25A99BA458EB22F8EB22F99BA45A5C25AB8CF7DDDE8C1FCFDF9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 0
      OnClick = BtnConfirmarClick
      ExplicitLeft = 874
      ExplicitTop = 5
    end
  end
  object QryMaster: TFDQuery
    Connection = F_DMMAIN.FDConnection
    SQL.Strings = (
      
        'Select NOTA.NOT_COD, NOTA.NOT_SER, NOTA.NOT_MOD, NOTA.NOT_DTA, N' +
        'OTA.NOT_CLICOD, CLI.CLI_NOM,'
      '       NOTA.NOT_VEN, VEN.VEN_NOM, NOTA.NOT_VLRTOT'
      'From NOTAFISCAL NOTA'
      'Left Join CLIENTE CLI'
      '  On (CLI.CLI_COD = NOTA.NOT_CLICOD)'
      'Left Join VENDEDOR VEN'
      '  On (VEN.VEN_COD = NOTA.NOT_VEN)'
      'Order By NOTA.NOT_DTA DESC')
    Left = 24
    Top = 160
  end
  object DsMaster: TDataSource
    DataSet = CdsMaster
    Left = 24
    Top = 208
  end
  object CdsMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMaster'
    Left = 89
    Top = 162
    object CdsMasterNOT_COD: TIntegerField
      DisplayLabel = 'Nota'
      FieldName = 'NOT_COD'
      Origin = 'NOT_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsMasterNOT_SER: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'NOT_SER'
      Origin = 'NOT_SER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsMasterNOT_MOD: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'NOT_MOD'
      Origin = 'NOT_MOD'
      Size = 2
    end
    object CdsMasterNOT_DTA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'NOT_DTA'
      Origin = 'NOT_DTA'
    end
    object CdsMasterNOT_CLICOD: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'NOT_CLICOD'
      Origin = 'NOT_CLICOD'
      Required = True
    end
    object CdsMasterCLI_NOM: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CLI_NOM'
      Origin = 'CLI_NOM'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object CdsMasterNOT_VEN: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOT_VEN'
      Origin = 'NOT_VEN'
    end
    object CdsMasterVEN_NOM: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'VEN_NOM'
      Origin = 'VEN_NOM'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object CdsMasterNOT_VLRTOT: TFloatField
      FieldName = 'NOT_VLRTOT'
      Origin = 'NOT_VLRTOT'
      currency = True
    end
  end
  object DspMaster: TDataSetProvider
    DataSet = QryMaster
    Left = 89
    Top = 210
  end
  object QryDetail: TFDQuery
    Connection = F_DMMAIN.FDConnection
    SQL.Strings = (
      'Select PED.PRO_COD, PRO.PRO_DES, PED.PRO_QTD,'
      '       (PED.PRO_TOT / PED.PRO_QTD) PRO_PRE, PED.PRO_TOT'
      'From PEDIDODET PED'
      'Left Join PRODUTO PRO'
      '  On (PRO.PRO_COD = PED.PRO_COD)'
      'Left Join NOTAFISCAL NOTA'
      '  On  (NOTA.NOT_COD = PED.PED_NOT)'
      '  And (NOTA.NOT_CLICOD = PED.PED_CLI)'
      '  and (NOTa.NOT_EMP = PED.PED_EMP)'
      'Where PED.PED_NOT = :NOTA')
    Left = 25
    Top = 289
    ParamData = <
      item
        Name = 'NOTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CdsDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDetail'
    Left = 97
    Top = 289
    object CdsDetailPRO_COD: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_COD'
      Origin = 'PRO_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object CdsDetailPRO_DES: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DES'
      Origin = 'PRO_DES'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object CdsDetailPRO_QTD: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'PRO_QTD'
      Origin = 'PRO_QTD'
      DisplayFormat = '###,##0.00'
    end
    object CdsDetailPRO_PRE: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRO_PRE'
      Origin = 'PRO_PRE'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object CdsDetailPRO_TOT: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'PRO_TOT'
      Origin = 'PRO_TOT'
      currency = True
    end
  end
  object DsDetail: TDataSource
    DataSet = CdsDetail
    Left = 25
    Top = 345
  end
  object DspDetail: TDataSetProvider
    DataSet = QryDetail
    Left = 97
    Top = 345
  end
end
