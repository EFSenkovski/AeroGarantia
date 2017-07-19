object F_GenConsulta: TF_GenConsulta
  Left = 0
  Top = 0
  Caption = 'Tela de Consulta'
  ClientHeight = 458
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 800
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 28
    object Label1: TLabel
      Left = 4
      Top = 1
      Width = 46
      Height = 16
      Caption = 'Campos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 239
      Top = 1
      Width = 34
      Height = 16
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 135
      Top = 1
      Width = 67
      Height = 16
      Caption = 'Operadores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object CbCamposBusca: TComboBox
      Left = 4
      Top = 20
      Width = 125
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object CbOperadoresBusca: TComboBox
      Left = 135
      Top = 20
      Width = 98
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'Igual a'
      OnKeyPress = CbOperadoresBuscaKeyPress
      Items.Strings = (
        'Igual a'
        'Diferente de'
        'Maior que'
        'Menor que'
        'Maior ou igual a'
        'Menor ou igual a ')
    end
    object EditVlrBusca: TEdit
      Left = 239
      Top = 20
      Width = 471
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = EditVlrBuscaKeyPress
    end
    object BtnOkConsul: TBitBtn
      Left = 716
      Top = 20
      Width = 75
      Height = 25
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFE2C0AA
        CC8D66C07140BC6B36BC6B36BC6B36BC6A36BC6A36BB6A350F7C23037B1EBB6E
        3BCA8B63E3C2AEFFFFFFFFFFFFC57C4DF8F2EBF7ECDFF6EBDEF6EADEF6EADCF6
        EADCFAF3EBFAF3EB158C3A43A15F32944AF8FBF8C37A4DFFFFFFFFFFFFC27740
        F5EBDFFDBF68FCBD67FBBE652397511D9149178F43118B3B3A9F5E80C19646A3
        622E9446B86C36FFFFFFFFFFFFC37C42F7EDE3FDC26EFFD8A0FFD79E299B5B90
        CAA98DC8A58AC6A188C59E6AB68582C29748A5661E7B24F6FAF7FFFFFFC68046
        F7F0E6F8B455F7B456F7B554319F6394CDAD6FBA8E6BB88966B68561B38067B5
        8283C2983CA05C06822AFFFFFFC78448F8F1E8FEE5D5FDE5D3FDE5D337A36B96
        CEB094CDAD91CBAA90CBA874BC908AC7A146A5680A8735FEFFFEFFFFFFC7864B
        F8F2EBFEE7D6FDE7D6FDE7D63DA56F3AA46F36A269329E6355AF7C91CBAA4FAB
        741B9148C68045FFFFFFFFFFFFC8884DF9F3ECFEE8D6FEE8D7FDE7D6FDE7D6FD
        E7D5FDE5D3FBE4D041A46B5AB381289857FAF2EAC88448FFFFFFFFFFFFC88C4F
        F9F4EDFEE8D8FEE8D8FEE8D7FEE7D6FDE5D3FCE4D1FBE1CC46A872319F65F8DC
        C2FAF4EDC8864BFFFFFFFFFFFFC88C50F9F4EFFEE7D7FDE7D6FDE7D5FDE6D4FC
        E6D2FBE1CCFADFC7F8DCC2F6DABDF6D8BBFAF4EFC8874CFFFFFFFFFFFFC88D51
        F9F4F0FCE6D3FCE6D4FDE7D3FCE4D1FBE3CDFAE0C8F8DCC2F5D6BBF3D4B5F1D2
        B3F8F4F0C6864CFFFFFFFFFFFFC88D51F9F5F1FCE3CFFBE4D0FCE4CFFCE3CDFA
        E1CAF9DDC4F6D9BCF4E9DFF7F2ECFBF7F3F5EFE9C38048FFFFFFFFFFFFC88D52
        F9F5F1FCE3CDFBE3CEFBE3CDFBE2CBF9E0C8F8DCC2F5D6BAFDFBF8FCE6CDFAE5
        C9E2B684D5A884FFFFFFFFFFFFCA925AFAF6F2FAE0C7FBE1C9FBE2C9FBE0C8F9
        DFC5F8DBC1F4D6B8FFFBF8F6D8B4E1B07DDC9669FDFBFAFFFFFFFFFFFFD2A274
        F8F3EDF8F4EEF8F4EDF8F3EDF8F3EDF8F3EDF8F2ECF7F2ECF2E6D7E2B27DDC98
        6BFDFBFAFFFFFFFFFFFFFFFFFFE8CEB9D7AA7CCC945BCA9055CA9055CA9055CA
        9155CB9055C98F55CF9D69DDB190FDFBFAFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 3
      OnClick = BtnOkConsulClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 417
    Width = 800
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object BtnResult: TBitBtn
      Left = 688
      Top = 5
      Width = 103
      Height = 33
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFDBE2C2A1B15E79931C6B86006B860079931CA1B15EDBE2C2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F9F19DAF576B86006B86006B86006B
        86006B86006B86006B86006B86009DAF57F7F9F1FFFFFFFFFFFFFFFFFFF7F9F1
        879E336B86006B86006B86006B86006B86006B86006B86006B86006B86006B86
        00879E33F7F9F1FFFFFFFFFFFF9DAF576B86006B86006B8600748F0BE8F4C1FA
        FFE97A94156B86006B86006B86006B86006B86009DAF57FFFFFFDBE2C26B8600
        6B86006B8600748F0BEDF6C7FFFFFFFFFFFFDEECA76B86006B86006B86006B86
        006B86006B8600DBE2C2A1B15E6B86006B8600708C07E5F1B9FFFFFFE8F2BDFF
        FFF4FFFFFFA9C4436B86006B86006B86006B86006B8600A1B15E79931C6B8600
        6B8600E5F0B6FFFFFFEDF6C7738E0AB7D153FFFFFFFFFFEF7892116B86006B86
        006B86006B860079931C6B86006B86006B8600F7FDDFEAF5C3748F0B6B86006B
        8600E6F2BCFFFFFFDCEAA46B86006B86006B86006B86006B86006B86006B8600
        6B86006B86006B86006B86006B86006B8600809A1DFFFFFAFFFFFFABC5446B86
        006B86006B86006B860079931C6B86006B86006B86006B86006B86006B86006B
        86006B8600B5D050FFFFFFFFFFF37C97186B86006B860079931CA1B15E6B8600
        6B86006B86006B86006B86006B86006B86006B86006B8600DBEAA4FFFFFFE7F2
        BE6B86006B8600A1B15EDBE2C26B86006B86006B86006B86006B86006B86006B
        86006B86006B8600738E0AF0F8CFF7FDDF6B86006B8600DBE2C2FFFFFF9DAF57
        6B86006B86006B86006B86006B86006B86006B86006B86006B86006B86006B86
        006B86009DAF57FFFFFFFFFFFFF7F9F1879E336B86006B86006B86006B86006B
        86006B86006B86006B86006B86006B8600879E33F7F9F1FFFFFFFFFFFFFFFFFF
        F7F9F19DAF576B86006B86006B86006B86006B86006B86006B86006B86009DAF
        57F7F9F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE2C2A1B15E79931C6B
        86006B860079931CA1B15EDBE2C2FFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 0
      OnClick = BtnResultClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 91
    Width = 800
    Height = 326
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel4'
    TabOrder = 2
    ExplicitTop = 78
    ExplicitHeight = 339
    object DBGrid: TDBGrid
      Left = 0
      Top = 0
      Width = 800
      Height = 347
      Align = alTop
      DataSource = DsConsulta
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGridDblClick
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 800
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
    TabOrder = 3
    ExplicitLeft = -208
    ExplicitWidth = 1008
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
  object QryConsulta: TFDQuery
    Connection = F_DMMAIN.FDConnection
    Left = 96
    Top = 352
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DtspConsulta'
    Left = 48
    Top = 304
  end
  object DtspConsulta: TDataSetProvider
    DataSet = QryConsulta
    Left = 96
    Top = 304
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 48
    Top = 352
  end
end
