object F_ConsultaGarantia: TF_ConsultaGarantia
  Left = 0
  Top = 0
  Caption = 'Consulta/Movimenta'#231#227'o de Garantias'
  ClientHeight = 611
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poPrintToFit
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 869
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
    Top = 570
    Width = 869
    Height = 41
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object PnConsu: TPanel
      Left = 1
      Top = 1
      Width = 248
      Height = 39
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Consultando, por favor aguarde...'
      Color = 8863233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object BtnConfirmar: TBitBtn
      Left = 768
      Top = 1
      Width = 100
      Height = 39
      Align = alRight
      Caption = 'Confirmar'
      TabOrder = 1
      OnClick = BtnConfirmarClick
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 41
    Width = 869
    Height = 529
    ActivePage = TbConsulta
    Align = alClient
    TabOrder = 2
    object TbConsulta: TTabSheet
      Caption = 'Consulta'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 57
        Width = 861
        Height = 444
        Align = alClient
        DataSource = DsConsulta
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
        OnDblClick = DBGrid1DblClick
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'GARANTIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D_OPERACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_SAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PEDIDO_SAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA_SAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE_SAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 861
        Height = 57
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 57
          Top = 9
          Width = 33
          Height = 13
          Caption = 'Cliente'
        end
        object Label3: TLabel
          Left = 457
          Top = 9
          Width = 36
          Height = 13
          Caption = 'Per'#237'odo'
        end
        object Label4: TLabel
          Left = 552
          Top = 33
          Width = 7
          Height = 13
          Caption = 'A'
        end
        object Label5: TLabel
          Left = 660
          Top = 9
          Width = 23
          Height = 13
          Caption = 'Nota'
        end
        object Label6: TLabel
          Left = 711
          Top = 9
          Width = 24
          Height = 13
          Caption = 'S'#233'rie'
        end
        object EditClicod: TEdit
          Left = 57
          Top = 28
          Width = 53
          Height = 21
          TabOrder = 0
        end
        object EditCod: TEdit
          Left = 3
          Top = 28
          Width = 49
          Height = 21
          TabOrder = 1
        end
        object EditCliNom: TEdit
          Left = 116
          Top = 28
          Width = 335
          Height = 21
          Color = clSilver
          ReadOnly = True
          TabOrder = 2
        end
        object EditDtaIni: TDateEdit
          Left = 457
          Top = 28
          Width = 89
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
        end
        object EditDtaFim: TDateEdit
          Left = 565
          Top = 28
          Width = 89
          Height = 21
          NumGlyphs = 2
          TabOrder = 4
        end
        object BtnConsultar: TBitBtn
          Left = 776
          Top = 26
          Width = 83
          Height = 25
          Caption = 'Consultar'
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
          TabOrder = 5
          OnClick = BtnConsultarClick
        end
        object EditNota: TEdit
          Left = 660
          Top = 28
          Width = 45
          Height = 21
          TabOrder = 6
        end
        object EditSerie: TEdit
          Left = 711
          Top = 28
          Width = 45
          Height = 21
          TabOrder = 7
        end
      end
    end
    object TbManut: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      object Label7: TLabel
        Left = 3
        Top = 3
        Width = 41
        Height = 13
        Caption = 'Garantia'
      end
      object Label8: TLabel
        Left = 3
        Top = 46
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object Label9: TLabel
        Left = 3
        Top = 93
        Width = 47
        Height = 13
        Caption = 'Opera'#231#227'o'
      end
      object Label10: TLabel
        Left = 3
        Top = 144
        Width = 84
        Height = 13
        Caption = 'Data Lan'#231'amento'
      end
      object Label11: TLabel
        Left = 111
        Top = 144
        Width = 52
        Height = 13
        Caption = 'Data Sa'#237'da'
      end
      object Label12: TLabel
        Left = 219
        Top = 144
        Width = 32
        Height = 13
        Caption = 'Pedido'
      end
      object Label13: TLabel
        Left = 293
        Top = 144
        Width = 23
        Height = 13
        Caption = 'Nota'
      end
      object Label14: TLabel
        Left = 367
        Top = 144
        Width = 24
        Height = 13
        Caption = 'S'#233'rie'
      end
      object EditMGarCod: TEdit
        Left = 3
        Top = 19
        Width = 62
        Height = 21
        ReadOnly = True
        TabOrder = 0
      end
      object EditMCliCod: TEdit
        Left = 3
        Top = 64
        Width = 62
        Height = 21
        ReadOnly = True
        TabOrder = 1
      end
      object EditMCliNom: TEdit
        Left = 71
        Top = 64
        Width = 362
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
      object EditMOpeCod: TEdit
        Left = 3
        Top = 112
        Width = 62
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object EditMOpeDes: TEdit
        Left = 71
        Top = 112
        Width = 362
        Height = 21
        ReadOnly = True
        TabOrder = 4
      end
      object EditMDtaGar: TDateEdit
        Left = 3
        Top = 163
        Width = 94
        Height = 21
        NumGlyphs = 2
        ReadOnly = True
        TabOrder = 5
      end
      object EditMDtaSai: TDateEdit
        Left = 111
        Top = 163
        Width = 94
        Height = 21
        NumGlyphs = 2
        ReadOnly = True
        TabOrder = 6
      end
      object EditMPedCod: TEdit
        Left = 219
        Top = 163
        Width = 68
        Height = 21
        ReadOnly = True
        TabOrder = 7
      end
      object EditMNota: TEdit
        Left = 293
        Top = 163
        Width = 68
        Height = 21
        ReadOnly = True
        TabOrder = 8
      end
      object EditMSerie: TEdit
        Left = 367
        Top = 163
        Width = 37
        Height = 21
        ReadOnly = True
        TabOrder = 9
      end
      object RdgStatus: TRadioGroup
        Left = 451
        Top = 69
        Width = 202
        Height = 57
        Caption = ' [Status] '
        Columns = 2
        Items.Strings = (
          'Pendente'
          'Efetivado')
        TabOrder = 10
      end
      object r: TDBGrid
        Left = 0
        Top = 190
        Width = 861
        Height = 311
        Align = alBottom
        DataSource = DsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
      end
      object BtnImprimir: TBitBtn
        Left = 544
        Top = 132
        Width = 109
        Height = 52
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFD2B7AEC7A096DAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDC7A096D2B7AEFFFFFFFFFFFFFFFFFFFDFDFDFDFDFD
          FDFDFDC79E92C08677DAEAEDDAEAEDDAEAEDDAEAEDD9E9ECD9E9ECD9E9ECD9E9
          ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECD9E9ECDA
          EAEDDAEAEDDAEAEDDAEAEDC08677C79E92FDFDFDFDFDFDFDFDFDC7CAC7C7CAC7
          C7CAC7C1998DC08677DAEAEDDAEAEDDAEAEDD9E9ECB2CCD1AEC9CEAEC9CEAEC9
          CEAEC9CEAEC9CEAEC9CEAEC9CEAEC9CEAEC9CEAEC9CEAEC9CEAEC9CEB2CCD1D9
          E9ECDAEAEDDAEAEDDAEAEDC08677C1998DC7CAC7C7CAC7C7CAC7C7CAC7C7CAC7
          C7CAC7C1998DC08677DAEAEDDAEAEDDAEAEDDAEAEDD8E9ECD7E8EBD7E8EBD7E8
          EBD7E8EBD7E8EBD7E8EBD7E8EBD7E8EBD7E8EBD7E8EBD7E8EBD7E8EBD8E9ECDA
          EAEDDAEAEDDAEAEDDAEAEDC08677C1998DC7CAC7C7CAC7C7CAC7C7CAC7C7CAC7
          C7CAC7C1998DC08677DAEAEDDAEAEDDAEAEDDAEAEDD1E3E6CEE1E4CEE1E4CEE1
          E4CEE1E4CEE1E4CEE1E4CEE1E4CEE1E4CEE1E4CEE1E4CEE1E4CEE1E4D1E3E6DA
          EAEDDAEAEDDAEAEDDAEAEDC08677C1998DC7CAC7C7CAC7C7CAC7C7CAC7C7CAC7
          C7CAC7C1998DC08677DAEAEDDAEAEDDAEAEDD9E9ECB9D2D6B6CFD4B6CFD4B6CF
          D4B6CFD4B6CFD4B6CFD4B6CFD4B6CFD4B6CFD4B6CFD4B6CFD4B6CFD4B9D2D6D9
          E9ECDAEAEDDAEAEDDAEAEDC08677C1998DC7CAC7C7CAC7C7CAC7C7CAC7C7CAC7
          C7CAC7C1998DC08677DAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDC08677C1998DC7CAC7C7CAC7C7CAC7C7CAC7C7CAC7
          C7CAC7C1998DC08677DAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDC08677C1998DC7CAC7C7CAC7C7CAC7C7CAC7C7CAC7
          C7CAC7C1998DC08677DAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDC08677C1998DC7CAC7C7CAC7C7CAC7B1A9A3B1A9A3
          B1A9A3B8978CBC9184D2D0CED2D0CED2D0CED2D0CED2D0CED2D0CED2D0CED2D0
          CED2D0CED2D0CED2D0CED2D0CED2D0CED2D0CED2D0CED2D0CED2D0CED2D0CED2
          D0CED2D0CED2D0CED2D0CEBC9184B8978CB1A9A3B1A9A3B1A9A3806055806055
          8060558060558060558060558060558060558060558060558060558060558060
          5580605580605580605580605580605580605580605580605580605580605580
          6055806055806055806055806055806055806055806055806055806055806055
          8060558060558060558060558060558060558060558060558060558060558060
          5580605580605580605580605580605580605580605580605580605580605580
          6055806055806055806055806055806055806055806055806055806055806055
          8060558060558060558060558060558060558060558060558060558060558060
          5580605580605580605580605580605580605580605580605580605580605580
          6055806055806357788E707892727F6457806055806055806055806055806055
          8060558060558060558060558060558060558060558060558060558060558060
          5580605580605580605580605580605580605580605580605580605580605580
          605580605570BE8C69E8A469E8A46FC791806055806055806055806055806055
          8060558060558060558060558060558060558060558060558060558060558060
          5580605580605580605580605580605580605580605580605580605580605580
          60557E6B5B69E7A369E8A469E8A469E8A47D7260806055806055806055806055
          8060558060558060558060558060558060558060558060558060558060558060
          5580605580605580605580605580605580605580605580605580605580605580
          60558060556DD19769E8A469E8A46CD89B806256806055806055806055806055
          8060558060558060558060558060558060558060558060558060558060558060
          5580605580605580605580605580605580605580605580605580605580605580
          60558060557C796471B98870BC8B7B7D66806055806055806055806055806055
          8060558060558060558060558060558060558060558060558060558060558060
          5580605580605580605580605580605580605580605580605580605580605580
          6055806055806055806055806055806055806055806055806055806055806055
          8060558060558060558060558060558060558060558060558060558060558060
          5580605580605580605580605580605580605580605580605580605580605580
          6055806055806055806055806055806055806055806055806055A28F87A28F87
          A28F87A28F87A39089B7B1AEB7B1AEB7B1AEB7B1AEB7B1AEB7B1AEB7B1AEB7B1
          AEB7B1AEB7B1AEB7B1AEB7B1AEB7B1AEB7B1AEB7B1AEB7B1AEB7B1AEB7B1AEB7
          B1AEB7B1AEB7B1AEB7B1AEA39089A28F87A28F87A28F87A28F87FFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
          EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
          EAEDDAEAEDDAEAEDDAEAEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 12
      end
    end
  end
  object QryConsulta: TFDQuery
    Connection = F_DMMAIN.FDConnection
    SQL.Strings = (
      'Select'
      '  GAR.GAR_COD As GARANTIA,'
      '  GAR.GAR_CLI AS CLIENTE,'
      '  CLI.CLI_NOM AS NOME_CLIENTE,'
      '  GAR.GAR_OPE AS OPERACAO,'
      '  OPE.OPE_DES AS D_OPERACAO,'
      '  GAR.GAR_DTA AS DATA,'
      '  GAR.GAR_EMP AS EMPRESA,'
      '  GAR.GAR_SAIDTA AS DATA_SAIDA,'
      '  GAR.GAR_SAIPED AS PEDIDO_SAIDA,'
      '  GAR.GAR_SAINOT AS NOTA_SAIDA,'
      '  GAR.GAR_SAISER AS SERIE_SAIDA,'
      '  CASE GAR.GAR_STATUS'
      '    When 0 THEN '#39'PENDENTE'#39
      '    When 1 THEN '#39'EFETIVADA'#39
      '  END As STATUS'
      'From PROGARANTIA GAR'
      'Left Join CLIENTE CLI'
      '  On (CLI.CLI_COD = GAR.GAR_CLI)'
      'Left Join OPERACOES OPE'
      '  On (OPE.OPE_COD = GAR.GAR_OPE)')
    Left = 308
    Top = 9
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 380
    Top = 9
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    Left = 516
    Top = 9
    object CdsConsultaGARANTIA: TIntegerField
      DisplayLabel = 'N'#186' Garantia'
      FieldName = 'GARANTIA'
      Origin = 'GAR_COD'
      Required = True
    end
    object CdsConsultaCLIENTE: TIntegerField
      DisplayLabel = 'N'#186' Cliente'
      FieldName = 'CLIENTE'
      Origin = 'GAR_CLI'
      Required = True
    end
    object CdsConsultaNOME_CLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = 'CLI_NOM'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object CdsConsultaOPERACAO: TIntegerField
      DisplayLabel = 'N'#186' Opera'#231#227'o'
      FieldName = 'OPERACAO'
      Origin = 'GAR_OPE'
      Required = True
    end
    object CdsConsultaDESCRICAO_OPERACAO: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'D_OPERACAO'
      Origin = 'OPE_DES'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object CdsConsultaDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'GAR_DTA'
    end
    object CdsConsultaEMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Origin = 'GAR_EMP'
    end
    object CdsConsultaDATA_SAIDA: TSQLTimeStampField
      DisplayLabel = 'Data Sa'#237'da'
      FieldName = 'DATA_SAIDA'
      Origin = 'GAR_SAIDTA'
    end
    object CdsConsultaPEDIDO_SAIDA: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'PEDIDO_SAIDA'
      Origin = 'GAR_SAIPED'
    end
    object CdsConsultaNOTA_SAIDA: TIntegerField
      DisplayLabel = 'Nota'
      FieldName = 'NOTA_SAIDA'
      Origin = 'GAR_SAINOT'
      Required = True
    end
    object CdsConsultaSERIE_SAIDA: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'SERIE_SAIDA'
      Origin = 'GAR_SAISER'
      Size = 3
    end
    object CdsConsultaSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'STATUS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
  end
  object DspConsulta: TDataSetProvider
    DataSet = QryConsulta
    Left = 444
    Top = 9
  end
  object ThreadConsulta: TIdThreadComponent
    Active = False
    Loop = False
    Priority = tpNormal
    StopMode = smTerminate
    OnRun = ThreadConsultaRun
    Left = 764
    Top = 9
  end
  object frxReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42919.383121377320000000
    ReportOptions.LastChange = 42919.383121377320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 612
    Top = 9
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object QrySingle: TFDQuery
    Connection = F_DMMAIN.FDConnection
    SQL.Strings = (
      'Select'
      '  GAR.GAR_COD,'
      '  GAR.GAR_CLI,'
      '  CLI.CLI_NOM,'
      '  GAR.GAR_OPE,'
      '  OPE.OPE_DES,'
      '  GAR.GAR_DTA,'
      '  GAR.GAR_EMP,'
      '  GAR.GAR_SAIDTA,'
      '  GAR.GAR_SAIPED,'
      '  GAR.GAR_SAINOT,'
      '  GAR.GAR_SAISER,'
      '  GAR.GAR_STATUS'
      'From PROGARANTIA GAR'
      'Left Join CLIENTE CLI'
      '  On (CLI.CLI_COD = GAR.GAR_CLI)'
      'Left Join OPERACOES OPE'
      '  On (OPE.OPE_COD = GAR.GAR_OPE)')
    Left = 272
    Top = 562
  end
  object QryProdutos: TFDQuery
    Connection = F_DMMAIN.FDConnection
    SQL.Strings = (
      'Select'
      '  DET.PRO_COD,'
      '  PRO.PRO_DES,'
      '  DET.PRO_QTD,'
      '  DET.PRO_PRE,'
      '  DET.PRO_TOT,'
      '  DET.PRO_FOR,'
      '  CLI.CLI_NOM,'
      '  DET.SAL_EST,'
      '  DET.SAL_CLI,'
      '  DET.SAL_FOR,'
      '  DET.SAL_REJ'
      'From PROGARANTIADET DET'
      'Left Join PRODUTO PRO'
      '  On (PRO.PRO_COD = DET.PRO_COD)'
      'Left Join CLIENTE CLI'
      '  On (CLI.CLI_COD = DET.PRO_FOR)'
      'Where DET.GAR_COD = :GARANTIA')
    Left = 348
    Top = 561
    ParamData = <
      item
        Name = 'GARANTIA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryProdutosPRO_COD: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_COD'
      Origin = 'PRO_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object QryProdutosPRO_DES: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DES'
      Origin = 'PRO_DES'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryProdutosPRO_QTD: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'PRO_QTD'
      Origin = 'PRO_QTD'
      DisplayFormat = '###,##0,00'
    end
    object QryProdutosPRO_PRE: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRO_PRE'
      Origin = 'PRO_PRE'
      currency = True
    end
    object QryProdutosPRO_TOT: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'PRO_TOT'
      Origin = 'PRO_TOT'
      currency = True
    end
    object QryProdutosPRO_FOR: TIntegerField
      DisplayLabel = 'C'#243'd. Forn.'
      FieldName = 'PRO_FOR'
      Origin = 'PRO_FOR'
      Required = True
    end
    object QryProdutosCLI_NOM: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fornecedor'
      FieldName = 'CLI_NOM'
      Origin = 'CLI_NOM'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryProdutosSAL_EST: TFloatField
      DisplayLabel = 'Saldo em Estoque'
      FieldName = 'SAL_EST'
      Origin = 'SAL_EST'
    end
    object QryProdutosSAL_CLI: TFloatField
      DisplayLabel = 'Saldo C/ Cliente'
      FieldName = 'SAL_CLI'
      Origin = 'SAL_CLI'
    end
    object QryProdutosSAL_FOR: TFloatField
      DisplayLabel = 'Saldo C/ Fornecedor'
      FieldName = 'SAL_FOR'
      Origin = 'SAL_FOR'
    end
    object QryProdutosSAL_REJ: TFloatField
      DisplayLabel = 'Saldo Rejeitado'
      FieldName = 'SAL_REJ'
      Origin = 'SAL_REJ'
    end
  end
  object DsProdutos: TDataSource
    DataSet = QryProdutos
    Left = 416
    Top = 560
  end
  object frxDBDatasetMaster: TfrxDBDataset
    UserName = 'frxDBDatasetMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GAR_COD=GAR_COD'
      'GAR_CLI=GAR_CLI'
      'CLI_NOM=CLI_NOM'
      'GAR_OPE=GAR_OPE'
      'OPE_DES=OPE_DES'
      'GAR_DTA=GAR_DTA'
      'GAR_EMP=GAR_EMP'
      'GAR_SAIDTA=GAR_SAIDTA'
      'GAR_SAIPED=GAR_SAIPED'
      'GAR_SAINOT=GAR_SAINOT'
      'GAR_SAISER=GAR_SAISER'
      'GAR_STATUS=GAR_STATUS')
    DataSet = QrySingle
    BCDToCurrency = False
    Left = 688
  end
  object frxDBDatasetDet: TfrxDBDataset
    UserName = 'frxDBDatasetDet'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_COD=PRO_COD'
      'PRO_DES=PRO_DES'
      'PRO_QTD=PRO_QTD'
      'PRO_PRE=PRO_PRE'
      'PRO_TOT=PRO_TOT'
      'PRO_FOR=PRO_FOR'
      'CLI_NOM=CLI_NOM'
      'SAL_EST=SAL_EST'
      'SAL_CLI=SAL_CLI'
      'SAL_FOR=SAL_FOR'
      'SAL_REJ=SAL_REJ')
    DataSet = QryProdutos
    BCDToCurrency = False
    Left = 688
    Top = 32
  end
end
