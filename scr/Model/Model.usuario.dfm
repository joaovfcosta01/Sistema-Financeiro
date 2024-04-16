object dmUsuarios: TdmUsuarios
  OldCreateOrder = False
  Height = 386
  Width = 642
  object sqlUsuarios: TFDQuery
    Connection = DataModule1.SQLConexao
    Left = 24
    Top = 16
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 160
    Top = 12
    object cdsUsuariosID: TIntegerField
      FieldName = 'ID'
    end
    object cdsUsuariosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object cdsUsuariosSENHA: TStringField
      FieldName = 'SENHA'
    end
    object cdsUsuariosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsUsuariosDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
  end
  object dspUsuarios: TDataSetProvider
    DataSet = sqlUsuarios
    Options = [poDisableEdits, poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 16
  end
end
