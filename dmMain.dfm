object F_DMMAIN: TF_DMMAIN
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 341
  Width = 439
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=localhost:/aero32db/fririos/aerosml.gdb'
      'User_Name=sysdba'
      'Password=13031526'
      'DriverID=FB')
    LoginPrompt = False
    Transaction = FDTransaction
    Left = 56
    Top = 32
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    DriverID = 'FB'
    Left = 152
    Top = 32
  end
  object FDTransaction: TFDTransaction
    Connection = FDConnection
    Left = 256
    Top = 32
  end
  object QryAux: TFDQuery
    Connection = FDConnection
    Left = 152
    Top = 88
  end
end
