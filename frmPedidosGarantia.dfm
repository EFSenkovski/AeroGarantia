object F_PedidosGarantia: TF_PedidosGarantia
  Left = 0
  Top = 0
  Caption = 'Pedidos de Garantia'
  ClientHeight = 677
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  PrintScale = poPrintToFit
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 870
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
    Top = 636
    Width = 870
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object BtnPedConf: TBitBtn
      Left = 724
      Top = 0
      Width = 146
      Height = 41
      Align = alRight
      Caption = 'Confirmar Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 870
    Height = 595
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object PgControl: TPageControl
      Left = 1
      Top = 1
      Width = 868
      Height = 593
      ActivePage = TBPedSimples
      Align = alClient
      TabOrder = 0
      object TBPedSimples: TTabSheet
        Caption = 'Pedido Simples '
        object GrbProd: TGroupBox
          Left = 0
          Top = 155
          Width = 860
          Height = 336
          Align = alClient
          Caption = ' [Produtos] '
          TabOrder = 0
          object Panel5: TPanel
            Left = 2
            Top = 15
            Width = 856
            Height = 82
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              Left = 7
              Top = 4
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 88
              Top = 4
              Width = 46
              Height = 13
              Caption = 'Descri'#231#227'o'
            end
            object Label8: TLabel
              Left = 447
              Top = 4
              Width = 14
              Height = 13
              Caption = 'UN'
            end
            object Label9: TLabel
              Left = 479
              Top = 4
              Width = 85
              Height = 13
              Caption = 'Saldo em Estoque'
            end
            object Label10: TLabel
              Left = 577
              Top = 4
              Width = 28
              Height = 13
              Caption = 'Qtde.'
            end
            object Lb: TLabel
              Left = 663
              Top = 4
              Width = 30
              Height = 13
              Caption = 'Pre'#231'o '
            end
            object Label11: TLabel
              Left = 759
              Top = 4
              Width = 24
              Height = 13
              Caption = 'Total'
            end
            object EditProCod: TEdit
              Left = 7
              Top = 23
              Width = 75
              Height = 21
              TabOrder = 0
              OnDblClick = EditProCodDblClick
              OnExit = EditProCodExit
              OnKeyPress = EditProCodKeyPress
            end
            object EditProDes: TEdit
              Tag = 2
              Left = 87
              Top = 23
              Width = 354
              Height = 21
              Color = clSilver
              ReadOnly = True
              TabOrder = 1
            end
            object EditProUn: TEdit
              Tag = 2
              Left = 447
              Top = 23
              Width = 26
              Height = 21
              Color = clSilver
              ReadOnly = True
              TabOrder = 2
            end
            object EditSalEst: TCurrencyEdit
              Tag = 2
              Left = 479
              Top = 23
              Width = 90
              Height = 21
              Color = clSilver
              DisplayFormat = ',0.00;- ,0.00'
              ReadOnly = True
              TabOrder = 3
            end
            object EditQtde: TCurrencyEdit
              Left = 577
              Top = 23
              Width = 80
              Height = 21
              DisplayFormat = ' ,0.00;-,0.00'
              TabOrder = 4
              OnExit = EditQtdeExit
            end
            object EditPreco: TCurrencyEdit
              Left = 663
              Top = 23
              Width = 90
              Height = 21
              TabOrder = 5
            end
            object EditTotal: TCurrencyEdit
              Left = 759
              Top = 23
              Width = 88
              Height = 21
              TabOrder = 6
            end
            object BtnAddPro: TBitBtn
              Left = 716
              Top = 51
              Width = 131
              Height = 25
              Caption = 'Adicionar Produto'
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
              TabOrder = 7
              OnClick = BtnAddProClick
            end
            object BtnExcPro: TBitBtn
              Left = 589
              Top = 51
              Width = 121
              Height = 25
              Caption = 'Excluir Produto'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFE4E6F9A4ACEB808BE35C6ADB5C6ADB808BE3A4ACEBE4E6F9FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFB0B7ED5060D84A5AD74A5AD74A
                5AD74A5AD74A5AD74A5AD75060D8B0B7EDFEFEFFFFFFFFFFFFFFFFFFFFFEFEFF
                7F8AE34A5AD74A5AD74A5AD74A5AD74A5AD74A5AD74A5AD74A5AD74A5AD74A5A
                D77F8AE3FEFEFFFFFFFFFFFFFFB0B7ED4A5AD74A5AD74A5AD74A5AD74A5AD74A
                5AD74A5AD74A5AD74A5AD74A5AD74A5AD74A5AD7B0B7EDFFFFFFE4E6F95060D8
                4A5AD74A5AD74A5AD74B5BD74A5AD74A5AD74A5AD74A5AD74B5BD74A5AD74A5A
                D74A5AD75060D8E4E6F9A4ACEB4A5AD74A5AD74A5AD74B5BD7C1C6F15B6ADB4A
                5AD74A5AD75B6ADBC1C6F14B5BD74A5AD74A5AD74A5AD7A5ADEB808BE34A5AD7
                4A5AD74A5AD74A5AD75B6ADBC6CBF25B6ADB5B6ADBC6CBF25B6ADB4A5AD74A5A
                D74A5AD74A5AD7808BE35C6ADB4A5AD74A5AD74A5AD74A5AD74A5AD75B6ADBCB
                D0F3CCD0F45B6ADB4A5AD74A5AD74A5AD74A5AD74A5AD75C6ADB5C6ADB4A5AD7
                4A5AD74A5AD74A5AD74A5AD75B6ADBCCD0F4CBD0F35B6ADB4A5AD74A5AD74A5A
                D74A5AD74A5AD75C6ADB808BE34A5AD74A5AD74A5AD74A5AD75B6ADBC6CBF25B
                6ADB5B6ADBC6CBF25B6ADB4A5AD74A5AD74A5AD74A5AD7808BE3A4ACEB4A5AD7
                4A5AD74A5AD74B5BD7C1C6F15B6ADB4A5AD74A5AD75B6ADBC1C6F14B5BD74A5A
                D74A5AD74A5AD7A5ADEBE4E6F95060D84A5AD74A5AD74A5AD74B5BD74A5AD74A
                5AD74A5AD74A5AD74B5BD74A5AD74A5AD74A5AD75060D8E4E6F9FFFFFFB0B7ED
                4A5AD74A5AD74A5AD74A5AD74A5AD74A5AD74A5AD74A5AD74A5AD74A5AD74A5A
                D74A5AD7B0B7EDFFFFFFFFFFFFFEFEFF7F8AE34A5AD74A5AD74A5AD74A5AD74A
                5AD74A5AD74A5AD74A5AD74A5AD74A5AD77F8AE3FEFEFFFFFFFFFFFFFFFFFFFF
                FEFEFFB0B7ED5060D84A5AD74A5AD74A5AD74A5AD74A5AD74A5AD75060D8B0B7
                EDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E6F9A4ACEB808BE35C
                6ADB5C6ADB808BE3A4ACEBE4E6F9FFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 8
              TabStop = False
              OnClick = BtnExcProClick
            end
          end
          object Panel6: TPanel
            Left = 2
            Top = 97
            Width = 856
            Height = 237
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 856
              Height = 237
              Align = alClient
              DataSource = DsProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
            end
          end
        end
        object GrbCab: TGroupBox
          Left = 0
          Top = 40
          Width = 860
          Height = 115
          Align = alTop
          Caption = ' [Cabe'#231'alho] '
          TabOrder = 1
          object Label2: TLabel
            Left = 89
            Top = 19
            Width = 33
            Height = 13
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 9
            Top = 66
            Width = 47
            Height = 13
            Caption = 'Opera'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 9
            Top = 20
            Width = 56
            Height = 13
            Caption = 'N'#186' Garantia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 665
            Top = 20
            Width = 67
            Height = 13
            Caption = 'Data Garantia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object EditCliCod: TEdit
            Left = 89
            Top = 39
            Width = 74
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnDblClick = EditCliCodDblClick
            OnExit = EditCliCodExit
            OnKeyPress = EditCliCodKeyPress
          end
          object EditCliNom: TEdit
            Tag = 2
            Left = 169
            Top = 39
            Width = 490
            Height = 21
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object EditOpeDes: TEdit
            Tag = 2
            Left = 89
            Top = 85
            Width = 490
            Height = 21
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object EditOpeCod: TEdit
            Left = 9
            Top = 85
            Width = 74
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnDblClick = EditOpeCodDblClick
            OnExit = EditOpeCodExit
            OnKeyPress = EditOpeCodKeyPress
          end
          object EditGarCod: TEdit
            Left = 9
            Top = 39
            Width = 74
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnDblClick = EditGarCodDblClick
            OnExit = EditGarCodExit
            OnKeyPress = EditGarCodKeyPress
          end
          object EditDtaGar: TDateEdit
            Tag = 2
            Left = 665
            Top = 39
            Width = 112
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object BtnCDados: TBitBtn
            Left = 586
            Top = 83
            Width = 109
            Height = 25
            Caption = 'Confirmar Dados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            OnClick = BtnCDadosClick
          end
        end
        object GrbTotais: TGroupBox
          Left = 0
          Top = 491
          Width = 860
          Height = 74
          Align = alBottom
          Caption = #39#39
          TabOrder = 2
          object Label12: TLabel
            Left = 729
            Top = 16
            Width = 100
            Height = 16
            Caption = 'Total Do Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 602
            Top = 16
            Width = 110
            Height = 16
            Caption = 'Quantidade Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 475
            Top = 16
            Width = 87
            Height = 16
            Caption = 'N'#250'mero Itens'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditPedTot: TCurrencyEdit
            Tag = 2
            Left = 729
            Top = 35
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object EditQtdeTot: TCurrencyEdit
            Tag = 2
            Left = 602
            Top = 35
            Width = 121
            Height = 24
            DisplayFormat = ',0.00;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditNumItens: TCurrencyEdit
            Tag = 2
            Left = 475
            Top = 35
            Width = 121
            Height = 24
            DecimalPlaces = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 860
          Height = 40
          Align = alTop
          TabOrder = 3
          object Label1: TLabel
            Left = 135
            Top = 10
            Width = 62
            Height = 16
            Caption = 'N'#186' Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LbPed: TLabel
            Left = 279
            Top = 8
            Width = 155
            Height = 19
            Caption = 'Pedido Confirmado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8863233
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object BtnNova: TBitBtn
            Left = 3
            Top = 3
            Width = 126
            Height = 29
            Caption = 'Novo Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFD9EBD072B55172B551D9EBD0FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ABA5B4D
              A2234DA2237ABA5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF5DAA374DA2234DA2235DAA37FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAA374D
              A2234DA2235DAA37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF5DAA374DA2234DA2235DAA37FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAA374D
              A2234DA2235DAA37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9EBD07ABA5B
              5DAA375DAA375DAA375DAA374EA3254DA2234DA2234EA3255DAA375DAA375DAA
              375DAA377ABA5BD9EBD072B5514DA2234DA2234DA2234DA2234DA2234DA2234D
              A2234DA2234DA2234DA2234DA2234DA2234DA2234DA22372B55172B5514DA223
              4DA2234DA2234DA2234DA2234DA2234DA2234DA2234DA2234DA2234DA2234DA2
              234DA2234DA22372B551D9EBD07ABA5B5DAA375DAA375DAA375DAA374EA3254D
              A2234DA2234EA3255DAA375DAA375DAA375DAA377ABA5BD9EBD0FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF5DAA374DA2234DA2235DAA37FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAA374D
              A2234DA2235DAA37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF5DAA374DA2234DA2235DAA37FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAA374D
              A2234DA2235DAA37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF7ABA5B4DA2234DA2237ABA5BFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9EBD072
              B55172B551D9EBD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentFont = False
            TabOrder = 0
            OnClick = BtnNovaClick
          end
          object EditPedCod: TEdit
            Left = 201
            Top = 7
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
      end
    end
  end
  object QryAux: TFDQuery
    Connection = F_DMMAIN.FDConnection
    Left = 736
  end
  object CdsProdutos: TClientDataSet
    PersistDataPacket.Data = {
      9E0000009619E0BD0100000018000000060000000000030000009E000750524F
      5F434F440100490000000100055749445448020002000D000750524F5F444553
      01004900000001000557494454480200020032000750524F5F554E4901004900
      000001000557494454480200020002000750524F5F5154440800040000000000
      0750524F5F50524508000400000000000750524F5F544F540800040000000000
      0000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 39
    Top = 332
    object CdsProdutosPRO_COD: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_COD'
      Size = 13
    end
    object CdsProdutosPRO_DES: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DES'
      Size = 50
    end
    object CdsProdutosPRO_UNI: TStringField
      DisplayLabel = 'UN'
      FieldName = 'PRO_UNI'
      Size = 2
    end
    object CdsProdutosPRO_QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'PRO_QTD'
      DisplayFormat = '###,##0.00'
    end
    object CdsProdutosPRO_PRE: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRO_PRE'
      currency = True
    end
    object CdsProdutosPRO_TOT: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'PRO_TOT'
      currency = True
    end
  end
  object DsProdutos: TDataSource
    DataSet = CdsProdutos
    Left = 111
    Top = 334
  end
  object QryAux2: TFDQuery
    Connection = F_DMMAIN.FDConnection
    Left = 680
    Top = 8
  end
end
