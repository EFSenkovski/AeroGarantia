object F_NovaGarantia: TF_NovaGarantia
  Left = 0
  Top = 0
  Caption = 'Nova Garantia'
  ClientHeight = 677
  ClientWidth = 869
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
    Top = 83
    Width = 869
    Height = 557
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object GrbProd: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 256
      Width = 863
      Height = 298
      Align = alClient
      Caption = ' [Produtos]'
      Color = clWhite
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object DBGridProds: TDBGrid
        Left = 2
        Top = 137
        Width = 859
        Height = 159
        Align = alClient
        DataSource = DsProdutosGarantia
        Font.Charset = SHIFTJIS_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = SHIFTJIS_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
      end
      object Panel6: TPanel
        Left = 2
        Top = 15
        Width = 859
        Height = 122
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label12: TLabel
          Left = 3
          Top = 2
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 460
          Top = 43
          Width = 85
          Height = 13
          Caption = 'Saldo Em Estoque'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 79
          Top = 2
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 565
          Top = 43
          Width = 76
          Height = 13
          Caption = 'Saldo C/ Cliente'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = 502551
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 664
          Top = 43
          Width = 98
          Height = 13
          Caption = 'Saldo C/ Fornecedor'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = 16205395
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 768
          Top = 43
          Width = 75
          Height = 13
          Caption = 'Saldo Rejeitado'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = 3553020
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 460
          Top = 2
          Width = 56
          Height = 13
          Caption = 'Quantidade'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 551
          Top = 2
          Width = 27
          Height = 13
          Caption = 'Pre'#231'o'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 643
          Top = 2
          Width = 24
          Height = 13
          Caption = 'Total'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbForn: TLabel
          Left = 3
          Top = 43
          Width = 55
          Height = 13
          Caption = 'Fornecedor'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LbSumSal: TLabel
          Left = 828
          Top = 91
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = ' [...] '
          Color = 8863233
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = 8863233
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object EditProCod: TEdit
          Left = 2
          Top = 18
          Width = 71
          Height = 21
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnDblClick = EditProCodDblClick
          OnExit = EditProCodExit
          OnKeyPress = EditProCodKeyPress
        end
        object EditProdes: TEdit
          Left = 79
          Top = 18
          Width = 369
          Height = 21
          TabStop = False
          Color = clSilver
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditforCod: TEdit
          Left = 2
          Top = 61
          Width = 71
          Height = 21
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnDblClick = EditforCodDblClick
          OnExit = EditforCodExit
          OnKeyPress = EditforCodKeyPress
        end
        object EditForNom: TEdit
          Left = 79
          Top = 61
          Width = 369
          Height = 21
          TabStop = False
          Color = clSilver
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object EditQtd: TCurrencyEdit
          Left = 460
          Top = 18
          Width = 85
          Height = 21
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = EditQtdExit
        end
        object EditSalEst: TCurrencyEdit
          Left = 460
          Top = 61
          Width = 85
          Height = 21
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnExit = EditSalEstExit
        end
        object EditSalCli: TCurrencyEdit
          Left = 565
          Top = 61
          Width = 85
          Height = 21
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnExit = EditSalCliExit
        end
        object EditSalFor: TCurrencyEdit
          Left = 664
          Top = 61
          Width = 85
          Height = 21
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnExit = EditSalForExit
        end
        object EditSalRej: TCurrencyEdit
          Left = 768
          Top = 61
          Width = 85
          Height = 21
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnExit = EditSalRejExit
        end
        object EditPreco: TCurrencyEdit
          Left = 552
          Top = 18
          Width = 85
          Height = 21
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnExit = EditPrecoExit
        end
        object EditTotal: TCurrencyEdit
          Left = 643
          Top = 18
          Width = 85
          Height = 21
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object BtnAddProduto: TBitBtn
          Left = 3
          Top = 91
          Width = 142
          Height = 25
          Caption = 'Adicionar Produto'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFE7F3E3ADD7A18DC87B6CB8556CB8558DC87BADD7A1E7F3E3FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEB7DCAC62B34A5CB0435CB0435C
            B0435CB0435CB0435CB04362B34AB7DCACFEFFFEFFFFFFFFFFFFFFFFFFFEFFFE
            8BC77A5CB0435CB0435CB0435CB0435CB0435CB0435CB0435CB0435CB0435CB0
            438BC77AFEFFFEFFFFFFFFFFFFB7DCAC5CB0435CB0435CB0435CB0435CB04364
            B44C64B44C5CB0435CB0435CB0435CB0435CB043B7DCACFFFFFFE7F3E362B34A
            5CB0435CB0435CB0435CB0435CB0438FC97E8FC97E5CB0435CB0435CB0435CB0
            435CB04362B34AE7F3E3ADD7A15CB0435CB0435CB0435CB0435CB0435CB0438F
            C97E8FC97E5CB0435CB0435CB0435CB0435CB0435CB043AED8A18DC87B5CB043
            5CB0435CB0435CB0435CB0435CB0438FC97E8FC97E5CB0435CB0435CB0435CB0
            435CB0435CB0438DC87B6CB8555CB0435CB0435CB0438FC97E8FC97E8FC97EB2
            DAA6B2DAA68FC97E8FC97E8FC97E5CB0435CB0435CB0436CB8556CB8555CB043
            5CB0435CB0438FC97E8FC97E8FC97EB2DAA6B2DAA68FC97E8FC97E8FC97E5CB0
            435CB0435CB0436CB8558DC87B5CB0435CB0435CB0435CB0435CB0435CB0438F
            C97E8FC97E5CB0435CB0435CB0435CB0435CB0435CB0438DC87BADD7A15CB043
            5CB0435CB0435CB0435CB0435CB0438FC97E8FC97E5CB0435CB0435CB0435CB0
            435CB0435CB043AED8A1E7F3E362B34A5CB0435CB0435CB0435CB0435CB04387
            C57487C5745CB0435CB0435CB0435CB0435CB04362B34AE7F3E3FFFFFFB7DCAC
            5CB0435CB0435CB0435CB0435CB0435CB0435CB0435CB0435CB0435CB0435CB0
            435CB043B7DCACFFFFFFFFFFFFFEFFFE8BC77A5CB0435CB0435CB0435CB0435C
            B0435CB0435CB0435CB0435CB0435CB0438BC77AFEFFFEFFFFFFFFFFFFFFFFFF
            FEFFFEB7DCAC62B34A5CB0435CB0435CB0435CB0435CB0435CB04362B34AB7DC
            ACFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F3E3ADD7A18DC87B6C
            B8556CB8558DC87BADD7A1E7F3E3FFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 11
          OnClick = BtnAddProdutoClick
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 869
      Height = 253
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 1
      object GrbVenda: TGroupBox
        Left = 656
        Top = 44
        Width = 208
        Height = 209
        Align = alCustom
        Caption = ' [Informa'#231#245'es da Venda] '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object BtnPesq: TSpeedButton
          Left = 10
          Top = 35
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
        object Label14: TLabel
          Left = 39
          Top = 19
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
        object Label15: TLabel
          Left = 10
          Top = 56
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
          Left = 10
          Top = 105
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
        object Label19: TLabel
          Left = 10
          Top = 152
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
        object Label20: TLabel
          Left = 79
          Top = 152
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
          Left = 10
          Top = 75
          Width = 183
          Height = 21
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditNot: TEdit
          Left = 10
          Top = 171
          Width = 63
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object EditSer: TEdit
          Left = 79
          Top = 171
          Width = 63
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object EditVlrNota: TCurrencyEdit
          Left = 10
          Top = 124
          Width = 183
          Height = 21
          TabStop = False
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
        object EditDtaNota: TDateEdit
          Left = 39
          Top = 35
          Width = 93
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
      end
      object GrbOpe: TGroupBox
        Left = 5
        Top = 44
        Width = 645
        Height = 48
        Align = alCustom
        Caption = ' [Opera'#231#227'o] '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object EditOpeDes: TEdit
          Left = 69
          Top = 19
          Width = 570
          Height = 21
          TabStop = False
          Color = clSilver
          ReadOnly = True
          TabOrder = 0
        end
        object EditOpeCod: TEdit
          Left = 6
          Top = 19
          Width = 57
          Height = 21
          Color = clSilver
          ReadOnly = True
          TabOrder = 1
          OnDblClick = EditOpeCodDblClick
          OnExit = EditOpeCodExit
          OnKeyPress = EditOpeCodKeyPress
        end
      end
      object GrbCli: TGroupBox
        Left = 5
        Top = 92
        Width = 645
        Height = 161
        Align = alCustom
        Caption = ' [Cliente]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label4: TLabel
          Left = 389
          Top = 9
          Width = 48
          Height = 13
          Caption = 'CNPJ/CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 516
          Top = 9
          Width = 28
          Height = 13
          Caption = 'IE/RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 6
          Top = 55
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 470
          Top = 55
          Width = 28
          Height = 13
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 390
          Top = 55
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 6
          Top = 104
          Width = 33
          Height = 13
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 295
          Top = 104
          Width = 42
          Height = 13
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 470
          Top = 104
          Width = 24
          Height = 13
          Caption = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 69
          Top = 9
          Width = 27
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EditCliente: TEdit
          Left = 6
          Top = 28
          Width = 57
          Height = 21
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnDblClick = EditClienteDblClick
          OnExit = EditClienteExit
          OnKeyPress = EditClienteKeyPress
        end
        object EditCliNom: TEdit
          Left = 69
          Top = 28
          Width = 314
          Height = 21
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditCNPJ: TEdit
          Left = 389
          Top = 28
          Width = 121
          Height = 21
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = EditCNPJKeyPress
        end
        object EditIE: TEdit
          Left = 516
          Top = 28
          Width = 123
          Height = 21
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          OnKeyPress = EditIEKeyPress
        end
        object EditEndereco: TEdit
          Left = 6
          Top = 74
          Width = 377
          Height = 21
          TabStop = False
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
        object EditBairro: TEdit
          Left = 470
          Top = 74
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
          ReadOnly = True
          TabOrder = 5
        end
        object EditNum: TEdit
          Left = 389
          Top = 74
          Width = 75
          Height = 21
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object EditCidade: TEdit
          Left = 6
          Top = 123
          Width = 283
          Height = 21
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object EditTelefone: TEdit
          Left = 295
          Top = 123
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
          ReadOnly = True
          TabOrder = 8
        end
        object EditEmail: TEdit
          Left = 470
          Top = 123
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
          ReadOnly = True
          TabOrder = 9
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 869
        Height = 44
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object Label2: TLabel
          Left = 8
          Top = 0
          Width = 74
          Height = 16
          Caption = 'N'#186' Garantia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditGarCod: TEdit
          Left = 8
          Top = 16
          Width = 74
          Height = 24
          TabStop = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 869
    Height = 42
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object BtnImp: TSpeedButton
      Left = 208
      Top = 7
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
    object Label1: TLabel
      Left = 88
      Top = 12
      Width = 114
      Height = 16
      Caption = 'Importar NF-e XML:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BtnNova: TBitBtn
      Left = 3
      Top = 6
      Width = 79
      Height = 29
      Caption = 'Nova'
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 640
    Width = 869
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object SpeedButton2: TSpeedButton
      Left = 757
      Top = 0
      Width = 112
      Height = 37
      Align = alRight
      Caption = 'Confirmar'
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
      OnClick = SpeedButton2Click
      ExplicitLeft = 896
      ExplicitHeight = 49
    end
    object BtnImprimir: TSpeedButton
      Left = 645
      Top = 0
      Width = 112
      Height = 37
      Align = alRight
      Caption = 'Imprimir'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      Visible = False
      ExplicitLeft = 896
      ExplicitHeight = 49
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '.xml'
    Filter = 'Arquivos XML|*.xml*'
    InitialDir = 'C:\'
    Title = 'Selecione um arquivo XML de nota fiscal'
    Left = 472
    Top = 9
  end
  object QryAux: TFDQuery
    Connection = F_DMMAIN.FDConnection
    Left = 528
    Top = 8
  end
  object CdsProdutosGarantia: TClientDataSet
    PersistDataPacket.Data = {
      FA0000009619E0BD01000000180000000B000000000003000000FA000750524F
      5F434F440100490000000100055749445448020002000D000750524F5F444553
      01004900000001000557494454480200020032000750524F5F51544408000400
      000000000750524F5F50524508000400000000000750524F5F544F5408000400
      000000000750524F5F464F52040001000000000007464F525F4E4F4D01004900
      000001000557494454480200020032000A50524F5F53414C4553540800040000
      0000000A50524F5F53414C434C4908000400000000000A50524F5F53414C464F
      5208000400000000000A50524F5F53414C52454A08000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 35
    Top = 515
    object CdsProdutosGarantiaPRO_COD: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRO_COD'
      Size = 13
    end
    object CdsProdutosGarantiaPRO_DES: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRO_DES'
      Size = 50
    end
    object CdsProdutosGarantiaPRO_SALEST: TFloatField
      DisplayLabel = 'Saldo Em Estoque'
      FieldName = 'PRO_SALEST'
      DisplayFormat = '###,##0.00'
    end
    object CdsProdutosGarantiaPRO_SALCLI: TFloatField
      DisplayLabel = 'Saldo Com Cliente'
      FieldName = 'PRO_SALCLI'
      DisplayFormat = '###,##0.00'
    end
    object CdsProdutosGarantiaPRO_SALFOR: TFloatField
      DisplayLabel = 'Saldo Com Fornecedor'
      FieldName = 'PRO_SALFOR'
      DisplayFormat = '###,##0.00'
    end
    object CdsProdutosGarantiaPRO_SALREJ: TFloatField
      DisplayLabel = 'Saldo Rejeitado'
      FieldName = 'PRO_SALREJ'
      DisplayFormat = '###,##0.00'
    end
    object CdsProdutosGarantiaPRO_QTD: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'PRO_QTD'
      DisplayFormat = '###,##0.00'
    end
    object CdsProdutosGarantiaPRO_PRE: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRO_PRE'
      currency = True
    end
    object CdsProdutosGarantiaPRO_TOT: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'PRO_TOT'
      currency = True
    end
    object CdsProdutosGarantiaPRO_FOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'PRO_FOR'
    end
    object CdsProdutosGarantiaFOR_NOM: TStringField
      DisplayLabel = 'Nome Fornecedor'
      FieldName = 'FOR_NOM'
      Size = 50
    end
  end
  object DsProdutosGarantia: TDataSource
    DataSet = CdsProdutosGarantia
    Left = 139
    Top = 507
  end
  object QryGeral: TFDQuery
    Left = 139
    Top = 563
  end
end
