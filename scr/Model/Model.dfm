object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 500
  Width = 527
  object SqlConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Usuario\Desktop\Sistema Financeiro\db\SISTEMA ' +
        'FINANCEIRO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 72
    Top = 32
  end
  object FDTransaction1: TFDTransaction
    Connection = SqlConexao
    Left = 248
    Top = 208
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 208
    Top = 120
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 96
    Top = 208
  end
end