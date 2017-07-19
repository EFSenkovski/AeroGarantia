object F_ImportaNFe: TF_ImportaNFe
  Left = 0
  Top = 0
  Caption = 'Importa'#231#227'o de NF-e para o Controle de Garantias do AeroSML'
  ClientHeight = 561
  ClientWidth = 784
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 679
    Top = 76
    Width = 68
    Height = 16
    Alignment = taRightJustify
    Caption = 'Avan'#231'ar >>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 6553600
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
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
    Width = 784
    Height = 479
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 782
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object PgModo: TPageControl
        Left = 0
        Top = 0
        Width = 782
        Height = 64
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        StyleElements = [seFont, seClient]
        object TabSheet1: TTabSheet
          Caption = 'XML'
          object Label2: TLabel
            Left = 3
            Top = 11
            Width = 63
            Height = 13
            Caption = 'Arquivo XML:'
          end
          object BtnImp: TSpeedButton
            Left = 74
            Top = 3
            Width = 35
            Height = 29
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9C9C9C50505050505050505050505050505050505050
              5050505050505050505050505050797979F5F5F5FFFFFFFFFFFF0C0C0CCACACA
              CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF6C6C
              6C707070FFFFFFFFFFFF000000B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7212121FAFAFAFFFFFF0000005B5B5B
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF616161B3B3B3FFFFFF1C1C1C232323F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB595959FFFFFF1F1F1F6C6C6C
              A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFDFDFD242424F4F4F41F1F1FC4C4C44D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070A5A5A51F1F1FFEFEFE
              242424EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFCBCBCB4B4B4B1F1F1FFFFFFF8787874C4C4CAFAFAFAFAFAFAFAFAFAF
              AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF2929291F1F1FFFFFFF
              FDFDFDA0A0A07070706F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F4949
              49343434707070BBBBBB1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A7777777FFFFFFFFFFFF363636565656
              E0E0E0FFFFFFFFFFFFFFFFFFCACACA5858584747474747474747474747472C2C
              2CA8A8A8FFFFFFFFFFFFFAFAFAC9C9C92B2B2BC0C0C0CFCFCF9B9B9B303030C7
              C7C7D7D7D7D7D7D7D7D7D7D7D7D7E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              E2E2E25E5E5E4F4F4F828282F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentFont = False
            OnClick = BtnImpClick
          end
          object EditXML: TEdit
            Left = 119
            Top = 8
            Width = 571
            Height = 21
            TabStop = False
            Color = clSilver
            ReadOnly = True
            TabOrder = 0
          end
          object BtncarregarXml: TBitBtn
            Left = 696
            Top = 6
            Width = 75
            Height = 25
            Caption = 'Carregar'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              9FB2985C7C505C7C505C7C505C7C505C7C505C7C505C7C505C7C505C7C505C7C
              505C7C5068865DF4F6F3FFFFFFFFFFFF89A081C9D3C5FAFBFAFAFBFAFAFBFAFA
              FBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFA6B8860EBEFE9FFFFFFFFFFFF
              89A081CCD6C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF6B8860EBEFE9FFFFFFFFFFFF89A081CCD6C8FFFFFFFAFBFAFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B8860EBEFE9FFFFFFFFFFFF
              89A081CCD6C8FFFFFF8EA7888FA789F8F9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF6B8860EBEFE9FFFFFFF5F7F5869D7DC2CEBDF0F3EF809D7A69906776
              946EEBEFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B8860EBEFE9F2F5F1638358
              63845963845963845965875D93DDBA81BB9666865DD5DDD2FFFFFFFFFFFFFFFF
              FFFFFFFF6B8860EBEFE9EBEFE965875D9EF0CF9EF0CF9EF0CF9EF0CF9EF0CF9E
              F0CF8CD0AC65865CC1CEBDFFFFFFFFFFFFFFFFFF6B8860EBEFE9EBEFE965875D
              9CECCB9CECCB9CECCB9CEDCC9EF0CF9EF0CF8CD0AC65865CC1CEBDFFFFFFFFFF
              FFFFFFFF6B8860EBEFE9F4F6F367865D5C7C505C7C505C7C505E7E5392DAB781
              BB9666865DD5DDD2FFFFFFFFFFFFFFFFFFFFFFFFBFCCBAFBFCFBFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF839F7D69906776946EEBEFE9FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F3EFFEFEFEFFFFFF8EA7888FA789F8
              F9F7FFFFFFFFFFFFF0F3EFCCD6C8CCD6C8CCD6C8D8E0D5FFFFFFFFFFFFFFFFFF
              8DA384CFD8CCFFFFFFFCFDFCFFFFFFFFFFFFFFFFFFFFFFFF94AB8E6C936A75A0
              795E7E53799571FFFFFFFFFFFFFFFFFF89A081CCD6C8FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF8FA88A84C39E78A9827A9672F3F5F2FFFFFFFFFFFFFFFFFF
              89A081C9D3C5FAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFA8EA78864885D839E
              7CF7F9F7FFFFFFFFFFFFFFFFFFFFFFFF9FB2985C7C505C7C505C7C505C7C505C
              7C505C7C505C7C505C7C508CA585FBFBFAFFFFFFFFFFFFFFFFFF}
            TabOrder = 1
            OnClick = BtncarregarXmlClick
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Chave'
          ImageIndex = 1
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 57
            Height = 13
            Caption = 'Em Breve...'
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 65
      Width = 782
      Height = 413
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object PageControl: TPageControl
        Left = 0
        Top = 0
        Width = 782
        Height = 413
        ActivePage = TbProdutos
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        StyleElements = [seFont, seClient]
        object TbCabecalho: TTabSheet
          Caption = 'Cabe'#231'alho'
          object Label3: TLabel
            Left = -6
            Top = 3
            Width = 3
            Height = 13
          end
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 774
            Height = 385
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              774
              385)
            object Label4: TLabel
              Left = 3
              Top = 27
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
            end
            object Label5: TLabel
              Left = 95
              Top = 27
              Width = 24
              Height = 13
              Caption = 'S'#233'rie'
            end
            object Label6: TLabel
              Left = 151
              Top = 27
              Width = 34
              Height = 13
              Caption = 'Modelo'
            end
            object Label7: TLabel
              Left = 0
              Top = 77
              Width = 55
              Height = 13
              Caption = 'Fornecedor'
            end
            object Label8: TLabel
              Left = 364
              Top = 77
              Width = 25
              Height = 13
              Caption = 'CNPJ'
            end
            object Label9: TLabel
              Left = 492
              Top = 77
              Width = 18
              Height = 13
              Caption = 'I.E.'
            end
            object Label10: TLabel
              Left = 0
              Top = 125
              Width = 64
              Height = 13
              Caption = 'Data Emiss'#227'o'
            end
            object Label11: TLabel
              Left = 108
              Top = 125
              Width = 53
              Height = 13
              Caption = 'Chave NFe'
            end
            object Label14: TLabel
              Left = 596
              Top = 77
              Width = 13
              Height = 13
              Caption = 'UF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 674
              Top = 366
              Width = 68
              Height = 16
              Cursor = crHandPoint
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = 'Avan'#231'ar >>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6553600
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label15Click
            end
            object Label19: TLabel
              Left = 0
              Top = 0
              Width = 774
              Height = 17
              Align = alTop
              AutoSize = False
              Caption = 'Informa'#231#245'es gerais sobre a nota fiscal.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitTop = 8
            end
            object LbAguarde: TLabel
              Left = 0
              Top = 335
              Width = 272
              Height = 19
              Align = alCustom
              Anchors = [akLeft, akRight]
              Caption = ' Importando, por favor aguarde...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object EditNumNot: TEdit
              Left = 0
              Top = 46
              Width = 86
              Height = 21
              ReadOnly = True
              TabOrder = 0
            end
            object EditSer: TEdit
              Left = 92
              Top = 46
              Width = 50
              Height = 21
              ReadOnly = True
              TabOrder = 1
            end
            object EditModelo: TEdit
              Left = 148
              Top = 46
              Width = 50
              Height = 21
              ReadOnly = True
              TabOrder = 2
            end
            object EditFornCod: TEdit
              Left = 0
              Top = 96
              Width = 55
              Height = 21
              ReadOnly = True
              TabOrder = 3
            end
            object EditFornecedor: TEdit
              Left = 61
              Top = 96
              Width = 297
              Height = 21
              ReadOnly = True
              TabOrder = 4
            end
            object EditCNPJ: TEdit
              Left = 364
              Top = 96
              Width = 122
              Height = 21
              ReadOnly = True
              TabOrder = 5
            end
            object EditIE: TEdit
              Left = 492
              Top = 96
              Width = 98
              Height = 21
              ReadOnly = True
              TabOrder = 6
            end
            object EditData: TEdit
              Left = 0
              Top = 144
              Width = 102
              Height = 21
              ReadOnly = True
              TabOrder = 7
            end
            object EditChave: TEdit
              Left = 108
              Top = 144
              Width = 482
              Height = 21
              ReadOnly = True
              TabOrder = 8
            end
            object EditUF: TEdit
              Left = 596
              Top = 96
              Width = 21
              Height = 21
              MaxLength = 2
              ReadOnly = True
              TabOrder = 9
            end
            object GrbVenda: TGroupBox
              Left = 0
              Top = 171
              Width = 313
              Height = 112
              Align = alCustom
              Caption = ' [Informa'#231#245'es da Venda] '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              object BtnPesq: TSpeedButton
                Left = 7
                Top = 32
                Width = 23
                Height = 21
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF96938D4F422D97938DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF96928C71572FCA923C4F422DFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96928C7359
                  30CA923C70562F96938DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF99948E74592FCA923C70562F94918BFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99958E765A2FCA923C7056
                  2F96938DFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBA1A1A16D6D6D666666707070B7
                  B7B7FFFFFF554F46A5773270562F98958FFFFFFFFFFFFFFFFFFFFFFFFFDADADA
                  5A5A5AB6B6B6F8F8F8FFFFFFEFEFEF9A9A9A5E5E5E5050505A53499A9690FFFF
                  FFFFFFFFFFFFFFFFFFFFF7F7F75E5E5EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFE1E1E15F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686D5D5D5
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A1B7B7B7FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF6A6A6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFF3F3F3717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF686868FFFFFF
                  ABABABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF696969FFFFFF676767D2D2D2FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFAFA6E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272EBEBEB
                  DCDCDC525252D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFBDBDBDA1A1A1FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFE6E6E6686868FFFFFFDCDCDC676767ABABABFFFFFFFF
                  FFFFF6F6F65C5C5CFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B8
                  686868EBEBEBFFFFFFFFFFFFFFFFFFD5D5D55E5E5EDADADAFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E67272726969696868686A6A6A86
                  8686F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                OnClick = BtnPesqClick
              end
              object Label42: TLabel
                Left = 36
                Top = 16
                Width = 72
                Height = 13
                Caption = 'Data Da Venda'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label43: TLabel
                Left = 134
                Top = 13
                Width = 72
                Height = 13
                Caption = 'Representante'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object LbVenValor: TLabel
                Left = 7
                Top = 61
                Width = 72
                Height = 13
                Caption = 'Valor da Venda'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label44: TLabel
                Left = 109
                Top = 61
                Width = 23
                Height = 13
                Caption = 'Nota'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label45: TLabel
                Left = 194
                Top = 61
                Width = 24
                Height = 13
                Caption = 'S'#233'rie'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object EditVenRep: TEdit
                Left = 134
                Top = 32
                Width = 169
                Height = 21
                TabStop = False
                Color = clSilver
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object EditNot: TEdit
                Left = 109
                Top = 80
                Width = 79
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object EditNotSer: TEdit
                Left = 194
                Top = 80
                Width = 53
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object EditVlrVenda: TCurrencyEdit
                Left = 7
                Top = 80
                Width = 96
                Height = 21
                TabOrder = 3
              end
              object EditDataVenda: TDateEdit
                Left = 36
                Top = 32
                Width = 93
                Height = 21
                NumGlyphs = 2
                TabOrder = 4
              end
            end
          end
        end
        object TbProdutos: TTabSheet
          Caption = 'Produtos'
          ImageIndex = 1
          object Label18: TLabel
            Left = 0
            Top = 0
            Width = 774
            Height = 17
            Align = alTop
            AutoSize = False
            Caption = 
              'Selecione os produtos desta nota que voc'#234' deseja incluir na gara' +
              'ntia.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitTop = 8
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 201
            Width = 774
            Height = 164
            Align = alClient
            Caption = ' [Produtos da garantia] '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBGrid2: TDBGrid
              Left = 2
              Top = 15
              Width = 770
              Height = 147
              Align = alClient
              DataSource = dsProdutosgarantiaNota
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
              OnCellClick = DBGrid2CellClick
              OnDrawColumnCell = DBGrid2DrawColumnCell
            end
          end
          object GrbNota: TGroupBox
            Left = 0
            Top = 17
            Width = 774
            Height = 184
            Align = alTop
            Caption = ' [Produtos da nota original] '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object DBGrid1: TDBGrid
              Left = 2
              Top = 15
              Width = 770
              Height = 167
              Hint = 
                'Se um produto da nota n'#227'o estiver atrelado ao'#13#10'sistema, aperte o' +
                ' bot'#227'o "F2" para faz'#234'-lo!'
              Align = alClient
              DataSource = DsProdutosNota
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              ParentShowHint = False
              PopupMenu = PopDbGridNota
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              OnCellClick = DBGrid1CellClick
              OnDrawColumnCell = DBGrid1DrawColumnCell
              OnKeyDown = DBGrid1KeyDown
              OnMouseDown = DBGrid1MouseDown
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 365
            Width = 774
            Height = 20
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            DesignSize = (
              774
              20)
            object LbAvancProdutos: TLabel
              Left = 641
              Top = 3
              Width = 101
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Passa os produtos selecionados da nota para a garantia. Por padr' +
                #227'o, a quantidade ser'#225' passada diretamente para o saldo em estoqu' +
                'e.'
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = 'Incluir Produtos +'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6553600
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = LbAvancProdutosClick
            end
          end
          object PnAguarde: TPanel
            Left = 288
            Top = 176
            Width = 233
            Height = 44
            Color = 8863233
            ParentBackground = False
            TabOrder = 3
            Visible = False
            object Gauge: TGauge
              Left = 1
              Top = 17
              Width = 231
              Height = 26
              Align = alClient
              ForeColor = 8863233
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentFont = False
              Progress = 0
              ExplicitTop = 24
              ExplicitHeight = 49
            end
            object Label26: TLabel
              Left = 1
              Top = 1
              Width = 231
              Height = 16
              Align = alTop
              Caption = ' Calculando, por favor aguarde...'
              Color = 8863233
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              ExplicitWidth = 212
            end
          end
          object PnAt: TPanel
            Left = 161
            Top = 72
            Width = 513
            Height = 65
            TabOrder = 4
            Visible = False
            object Label40: TLabel
              Left = 8
              Top = 16
              Width = 38
              Height = 13
              Caption = 'Produto'
            end
            object Label46: TLabel
              Left = 415
              Top = 16
              Width = 18
              Height = 13
              Caption = 'UN.'
            end
            object LbprodFor: TLabel
              Left = 1
              Top = 1
              Width = 511
              Height = 13
              Align = alTop
              Caption = ' [...] '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 25
            end
            object EditProCod: TEdit
              Left = 8
              Top = 35
              Width = 65
              Height = 21
              MaxLength = 6
              NumbersOnly = True
              TabOrder = 0
              OnDblClick = EditProCodDblClick
              OnExit = EditProCodExit
              OnKeyPress = EditProCodKeyPress
            end
            object EditProDes: TEdit
              Left = 79
              Top = 35
              Width = 330
              Height = 21
              TabStop = False
              Color = clSilver
              ReadOnly = True
              TabOrder = 1
            end
            object EditProUn: TEdit
              Left = 415
              Top = 35
              Width = 42
              Height = 21
              TabStop = False
              Color = clSilver
              ReadOnly = True
              TabOrder = 2
            end
            object BtnOk: TBitBtn
              Left = 461
              Top = 33
              Width = 44
              Height = 25
              Caption = 'OK'
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
              TabOrder = 3
              OnClick = BtnOkClick
            end
          end
        end
        object TbTotais: TTabSheet
          Caption = 'Totais'
          ImageIndex = 2
          DesignSize = (
            774
            385)
          object Label16: TLabel
            Left = 633
            Top = 366
            Width = 109
            Height = 16
            Cursor = crHandPoint
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = 'Confirmar Nota >>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6553600
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label16Click
          end
          object GrbTotNota: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 768
            Height = 94
            Align = alTop
            Caption = ' [Totais da Nota] '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label13: TLabel
              Left = 11
              Top = 21
              Width = 77
              Height = 16
              Caption = 'Total da Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 118
              Top = 21
              Width = 94
              Height = 16
              Caption = 'N'#250'mero de itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object LbprecoUnit: TLabel
              Left = 218
              Top = 21
              Width = 100
              Height = 16
              Caption = 'Pre'#231'o Unit. M'#233'dio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 325
              Top = 21
              Width = 146
              Height = 16
              Caption = 'Quantidade Total da Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object EditNota: TCurrencyEdit
              Left = 11
              Top = 40
              Width = 101
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditNumItens: TEdit
              Left = 118
              Top = 40
              Width = 94
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditPrecoMedio: TCurrencyEdit
              Left = 218
              Top = 40
              Width = 101
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditQtdeTot: TCurrencyEdit
              Left = 325
              Top = 40
              Width = 101
              Height = 24
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
          end
          object GroupBox3: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 103
            Width = 768
            Height = 90
            Align = alTop
            Caption = ' [Totais da Garantia] '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label22: TLabel
              Left = 11
              Top = 21
              Width = 99
              Height = 16
              Caption = 'Total da Garantia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 118
              Top = 21
              Width = 94
              Height = 16
              Caption = 'N'#250'mero de itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 218
              Top = 21
              Width = 100
              Height = 16
              Caption = 'Pre'#231'o Unit. M'#233'dio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 325
              Top = 21
              Width = 168
              Height = 16
              Caption = 'Quantidade Total da Garantia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object EditTotalGar: TCurrencyEdit
              Left = 11
              Top = 40
              Width = 101
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object editNumItensGar: TEdit
              Left = 118
              Top = 40
              Width = 94
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditPremedGar: TCurrencyEdit
              Left = 218
              Top = 40
              Width = 101
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditQtdTotGarantia: TCurrencyEdit
              Left = 325
              Top = 40
              Width = 101
              Height = 24
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
          end
        end
        object TbNotasAdicionadas: TTabSheet
          Caption = 'Notas Adicionadas'
          ImageIndex = 3
          object Label17: TLabel
            Left = 0
            Top = 0
            Width = 774
            Height = 17
            Align = alTop
            AutoSize = False
            Caption = 
              'As notas ser'#227'o separadas e agrupadas pelo fornecedor. Cada forne' +
              'cedor ir'#225' gerar uma garantia no sistema.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 457
          end
          object GrbNotGar: TGroupBox
            Left = 0
            Top = 17
            Width = 774
            Height = 112
            Align = alTop
            Caption = ' [Garantias por cliente/notas] '
            TabOrder = 0
            object DBGrid3: TDBGrid
              Left = 2
              Top = 15
              Width = 770
              Height = 95
              Align = alClient
              DataSource = DsGarFornecedor
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
          object GrbProduto: TGroupBox
            Left = 0
            Top = 129
            Width = 774
            Height = 256
            Align = alClient
            Caption = ' [Produtos por garantia] '
            TabOrder = 1
            object DBGrid4: TDBGrid
              Left = 2
              Top = 15
              Width = 770
              Height = 57
              Align = alClient
              DataSource = DsGarProdutos
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
              OnCellClick = DBGrid4CellClick
            end
            object PnConferencia: TPanel
              Left = 2
              Top = 72
              Width = 770
              Height = 182
              Align = alBottom
              Color = clWhite
              ParentBackground = False
              TabOrder = 1
              Visible = False
              object Label27: TLabel
                Left = 16
                Top = 16
                Width = 65
                Height = 13
                Caption = 'N'#186' Garantia'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label28: TLabel
                Left = 119
                Top = 16
                Width = 38
                Height = 13
                Caption = 'Produto'
                FocusControl = DBEdit2
              end
              object Label29: TLabel
                Left = 207
                Top = 16
                Width = 46
                Height = 13
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit3
              end
              object Label30: TLabel
                Left = 615
                Top = 16
                Width = 14
                Height = 13
                Caption = 'UN'
                FocusControl = DBEdit4
              end
              object Label31: TLabel
                Left = 119
                Top = 56
                Width = 55
                Height = 13
                Caption = 'Fornecedor'
                FocusControl = DBEdit5
              end
              object Label32: TLabel
                Left = 207
                Top = 56
                Width = 27
                Height = 13
                Caption = 'Nome'
                FocusControl = DBEdit6
              end
              object Label33: TLabel
                Left = 16
                Top = 97
                Width = 28
                Height = 13
                Caption = 'Qtde.'
                FocusControl = DBEdit7
              end
              object Label34: TLabel
                Left = 119
                Top = 97
                Width = 27
                Height = 13
                Caption = 'Pre'#231'o'
                FocusControl = DBEdit8
              end
              object Label35: TLabel
                Left = 207
                Top = 97
                Width = 24
                Height = 13
                Caption = 'Total'
                FocusControl = DBEdit9
              end
              object Label36: TLabel
                Left = 296
                Top = 97
                Width = 99
                Height = 13
                Caption = 'Saldo Em Estoque'
                FocusControl = DBEdit10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label37: TLabel
                Left = 402
                Top = 97
                Width = 100
                Height = 13
                Caption = 'Saldo com Cliente'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label38: TLabel
                Left = 514
                Top = 97
                Width = 125
                Height = 13
                Caption = 'Saldo com Fornecedor'
                FocusControl = DBEdit12
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label39: TLabel
                Left = 645
                Top = 97
                Width = 89
                Height = 13
                Caption = 'Saldo Rejeitado'
                FocusControl = DBEdit13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 16
                Top = 32
                Width = 97
                Height = 21
                DataField = 'GAR_COD'
                DataSource = DsGarProdutos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 119
                Top = 32
                Width = 82
                Height = 21
                DataField = 'PRO_COD'
                DataSource = DsGarProdutos
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 207
                Top = 32
                Width = 402
                Height = 21
                DataField = 'PRO_DES'
                DataSource = DsGarProdutos
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 615
                Top = 32
                Width = 30
                Height = 21
                DataField = 'PRO_UN'
                DataSource = DsGarProdutos
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdit5: TDBEdit
                Left = 119
                Top = 72
                Width = 82
                Height = 21
                DataField = 'PRO_FOR'
                DataSource = DsGarProdutos
                ReadOnly = True
                TabOrder = 4
              end
              object DBEdit6: TDBEdit
                Left = 207
                Top = 72
                Width = 402
                Height = 21
                DataField = 'FOR_NOM'
                DataSource = DsGarProdutos
                ReadOnly = True
                TabOrder = 5
              end
              object DBEdit7: TDBEdit
                Left = 16
                Top = 113
                Width = 97
                Height = 21
                DataField = 'PRO_QTD'
                DataSource = DsGarProdutos
                TabOrder = 6
              end
              object DBEdit8: TDBEdit
                Left = 119
                Top = 113
                Width = 82
                Height = 21
                DataField = 'PRO_PRE'
                DataSource = DsGarProdutos
                TabOrder = 7
              end
              object DBEdit9: TDBEdit
                Left = 207
                Top = 113
                Width = 82
                Height = 21
                DataField = 'PRO_TOT'
                DataSource = DsGarProdutos
                TabOrder = 8
              end
              object DBEdit10: TDBEdit
                Left = 296
                Top = 113
                Width = 85
                Height = 21
                DataField = 'PRO_SALEST'
                DataSource = DsGarProdutos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 9
              end
              object DBEdit11: TDBEdit
                Left = 402
                Top = 113
                Width = 85
                Height = 21
                DataField = 'PRO_SALCLI'
                DataSource = DsGarProdutos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 10
              end
              object DBEdit12: TDBEdit
                Left = 514
                Top = 113
                Width = 85
                Height = 21
                DataField = 'PRO_SALFOR'
                DataSource = DsGarProdutos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 11
              end
              object DBEdit13: TDBEdit
                Left = 645
                Top = 114
                Width = 87
                Height = 21
                DataField = 'PRO_SALREJ'
                DataSource = DsGarProdutos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 12
              end
              object BtnConfPainel: TBitBtn
                Left = 647
                Top = 141
                Width = 87
                Height = 25
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
                TabOrder = 13
                OnClick = BtnConfPainelClick
              end
            end
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 520
    Width = 784
    Height = 41
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object BtnAdicionarNota: TSpeedButton
      Left = 640
      Top = 1
      Width = 143
      Height = 39
      Align = alRight
      Caption = 'Confirmar Nota(s)'
      Flat = True
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
      OnClick = BtnAdicionarNotaClick
    end
  end
  object NFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 712
    Top = 8
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '.xml'
    Filter = '*.xml*'
    InitialDir = 'C:\'
    Left = 624
  end
  object QryAux: TFDQuery
    Connection = F_DMMAIN.FDConnection
    Left = 568
    Top = 8
  end
  object CdsProdutosGarantiaNota: TClientDataSet
    PersistDataPacket.Data = {
      310100009619E0BD01000000180000000D00000000000300000031010750524F
      5F434F440100490000000100055749445448020002000D000750524F5F444553
      01004900000001000557494454480200020032000650524F5F554E0100490000
      0001000557494454480200020002000750524F5F464F52040001000000000007
      464F525F4E4F4D01004900000001000557494454480200020032000750524F5F
      51544408000400000000000750524F5F50524508000400000000000750524F5F
      544F5408000400000000000A50524F5F53414C434C4908000400000000000A50
      524F5F53414C464F5208000400000000000A50524F5F53414C52454A08000400
      000000000A50524F5F53414C45535408000400000000000750524F5F46414201
      004900000001000557494454480200020014000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRO_COD'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'PRO_DES'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PRO_UN'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PRO_FOR'
        DataType = ftInteger
      end
      item
        Name = 'FOR_NOM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PRO_QTD'
        DataType = ftFloat
      end
      item
        Name = 'PRO_PRE'
        DataType = ftFloat
      end
      item
        Name = 'PRO_TOT'
        DataType = ftFloat
      end
      item
        Name = 'PRO_SALCLI'
        DataType = ftFloat
      end
      item
        Name = 'PRO_SALFOR'
        DataType = ftFloat
      end
      item
        Name = 'PRO_SALREJ'
        DataType = ftFloat
      end
      item
        Name = 'PRO_SALEST'
        DataType = ftFloat
      end
      item
        Name = 'PRO_FAB'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 416
    object CdsProdutosGarantiaNotaPRO_COD: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_COD'
      Size = 13
    end
    object CdsProdutosGarantiaNotaPRO_DES: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DES'
      Size = 50
    end
    object CdsProdutosGarantiaNotaPRO_UN: TStringField
      DisplayLabel = 'UN'
      FieldName = 'PRO_UN'
      Size = 2
    end
    object CdsProdutosGarantiaNotaPRO_FOR: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'PRO_FOR'
    end
    object CdsProdutosGarantiaNotaFOR_NOM: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FOR_NOM'
      Size = 50
    end
    object CdsProdutosGarantiaNotaPRO_QTD: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'PRO_QTD'
    end
    object CdsProdutosGarantiaNotaPRO_PRE: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRO_PRE'
      Visible = False
    end
    object CdsProdutosGarantiaNotaPRO_TOT: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'PRO_TOT'
      Visible = False
    end
    object CdsProdutosGarantiaNotaPRO_SALEST: TFloatField
      DisplayLabel = 'Saldo em Estoque'
      FieldName = 'PRO_SALEST'
    end
    object CdsProdutosGarantiaNotaPRO_SALCLI: TFloatField
      DisplayLabel = 'Saldo com Cliente'
      FieldName = 'PRO_SALCLI'
    end
    object CdsProdutosGarantiaNotaPRO_SALFOR: TFloatField
      DisplayLabel = 'Saldo com Fornecedor'
      FieldName = 'PRO_SALFOR'
    end
    object CdsProdutosGarantiaNotaPRO_SALREJ: TFloatField
      DisplayLabel = 'Saldo Rejeitado'
      FieldName = 'PRO_SALREJ'
    end
    object CdsProdutosGarantiaNotaPRO_FAB: TStringField
      FieldName = 'PRO_FAB'
      Visible = False
      Size = 13
    end
  end
  object DsProdutosNota: TDataSource
    DataSet = CdsProdutoNota
    Left = 301
    Top = 43
  end
  object dsProdutosgarantiaNota: TDataSource
    DataSet = CdsProdutosGarantiaNota
    Left = 413
    Top = 41
  end
  object CdsProdutoNota: TClientDataSet
    PersistDataPacket.Data = {
      C90000009619E0BD010000001800000008000000000003000000C9000750524F
      5F434F440100490000000100055749445448020002000D000750524F5F464142
      01004900000001000557494454480200020014000750524F5F44455301004900
      000001000557494454480200020032000650524F5F554E010049000000010005
      57494454480200020002000750524F5F51544408000400000000000750524F5F
      50524508000400000000000750524F5F544F54080004000000000007494E434C
      55495204000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRO_COD'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'PRO_FAB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRO_DES'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PRO_UN'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PRO_QTD'
        DataType = ftFloat
      end
      item
        Name = 'PRO_PRE'
        DataType = ftFloat
      end
      item
        Name = 'PRO_TOT'
        DataType = ftFloat
      end
      item
        Name = 'INCLUIR'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 301
    Top = 3
    object CdsProdutoNotaPRO_COD: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_COD'
      Size = 13
    end
    object CdsProdutoNotaPRO_FAB: TStringField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'PRO_FAB'
      Size = 13
    end
    object CdsProdutoNotaPRO_DES: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DES'
      Size = 50
    end
    object CdsProdutoNotaPRO_UN: TStringField
      DisplayLabel = 'UN'
      FieldName = 'PRO_UN'
      Size = 2
    end
    object CdsProdutoNotaPRO_QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'PRO_QTD'
    end
    object CdsProdutoNotaPRO_PRE: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRO_PRE'
      currency = True
    end
    object CdsProdutoNotaPRO_TOT: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'PRO_TOT'
      currency = True
    end
    object CdsProdutoNotaINCLUIR: TIntegerField
      DisplayLabel = 'Incluir'
      FieldName = 'INCLUIR'
    end
  end
  object PopDbGridNota: TPopupMenu
    Left = 733
    Top = 139
    object SelecionarTudo1: TMenuItem
      Caption = 'Marcar/Desmarcar Tudo'
      OnClick = SelecionarTudo1Click
    end
  end
  object NotificationCenter: TNotificationCenter
    Left = 704
    Top = 224
  end
  object CdsGarFornecedor: TClientDataSet
    PersistDataPacket.Data = {
      680000009619E0BD010000001800000004000000000003000000680007474152
      5F434F44040001000000000007464F525F434F44040001000000000007464F52
      5F4E4F4D0100490000000100055749445448020002003200094741525F434F55
      4E5404000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'GAR_COD'
        DataType = ftInteger
      end
      item
        Name = 'FOR_COD'
        DataType = ftInteger
      end
      item
        Name = 'FOR_NOM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'GAR_COUNT'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 184
    Top = 248
    object CdsGarFornecedorGAR_COD: TIntegerField
      DisplayLabel = 'N '#186' Garantia'
      FieldName = 'GAR_COD'
    end
    object CdsGarFornecedorFOR_COD: TIntegerField
      DisplayLabel = 'Cliente Garantia'
      FieldName = 'FOR_COD'
    end
    object CdsGarFornecedorFOR_NOM: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FOR_NOM'
      Size = 50
    end
    object CdsGarFornecedorGAR_COUNT: TIntegerField
      DisplayLabel = 'N'#186' Notas'
      FieldName = 'GAR_COUNT'
    end
  end
  object CdsGarProdutos: TClientDataSet
    PersistDataPacket.Data = {
      250100009619E0BD01000000180000000D000000000003000000250107474152
      5F434F4404000100000000000750524F5F434F44010049000000010005574944
      5448020002000D000750524F5F44455301004900000001000557494454480200
      020032000650524F5F554E010049000000010005574944544802000200020007
      50524F5F464F52040001000000000007464F525F4E4F4D010049000000010005
      57494454480200020032000750524F5F51544408000400000000000750524F5F
      50524508000400000000000750524F5F544F5408000400000000000A50524F5F
      53414C45535408000400000000000A50524F5F53414C434C4908000400000000
      000A50524F5F53414C464F5208000400000000000A50524F5F53414C52454A08
      000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 277
    Top = 247
    object CdsGarProdutosGAR_COD: TIntegerField
      DisplayLabel = 'N'#186' Garantia'
      FieldName = 'GAR_COD'
    end
    object CdsGarProdutosPRO_COD: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_COD'
      Size = 13
    end
    object CdsGarProdutosPRO_DES: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DES'
      Size = 50
    end
    object CdsGarProdutosPRO_UN: TStringField
      DisplayLabel = 'UN'
      FieldName = 'PRO_UN'
      Size = 2
    end
    object CdsGarProdutosPRO_FOR: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'PRO_FOR'
    end
    object CdsGarProdutosFOR_NOM: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FOR_NOM'
      Size = 50
    end
    object CdsGarProdutosPRO_QTD: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'PRO_QTD'
    end
    object CdsGarProdutosPRO_PRE: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRO_PRE'
      currency = True
    end
    object CdsGarProdutosPRO_TOT: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'PRO_TOT'
      currency = True
    end
    object CdsGarProdutosPRO_SALEST: TFloatField
      DisplayLabel = 'Saldo Em Estoque'
      FieldName = 'PRO_SALEST'
    end
    object CdsGarProdutosPRO_SALCLI: TFloatField
      DisplayLabel = 'Saldo com Cliente'
      FieldName = 'PRO_SALCLI'
    end
    object CdsGarProdutosPRO_SALFOR: TFloatField
      DisplayLabel = 'Saldo com Fornecedor'
      FieldName = 'PRO_SALFOR'
    end
    object CdsGarProdutosPRO_SALREJ: TFloatField
      DisplayLabel = 'Saldo Rejeitado'
      FieldName = 'PRO_SALREJ'
    end
  end
  object DsGarFornecedor: TDataSource
    DataSet = CdsGarFornecedor
    Left = 181
    Top = 203
  end
  object DsGarProdutos: TDataSource
    DataSet = CdsGarProdutos
    Left = 277
    Top = 203
  end
  object QryGeral: TFDQuery
    Connection = F_DMMAIN.FDConnection
    Left = 464
    Top = 520
  end
  object TrayIcon: TTrayIcon
    Left = 720
    Top = 181
  end
end
