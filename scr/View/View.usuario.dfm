inherited frmUsuarios: TfrmUsuarios
  ActiveControl = Button1
  Caption = 'Cadastro de Usu'#225'rios'
  PixelsPerInch = 96
  TextHeight = 19
  inherited Pnlprincipal: TCardPanel
    inherited CardPesquisa: TCard
      inherited pnlpesquisa: TPanel
        inherited bntPesquisar: TButton
          OnClick = bntPesquisarClick
        end
      end
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 309
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Width = 169
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Width = 73
            Visible = True
          end>
      end
    end
    inherited Cardcadastro: TCard
      object Label2: TLabel [0]
        Left = 4
        Top = 56
        Width = 42
        Height = 19
        Caption = 'Nome'
      end
      object Label3: TLabel [1]
        Left = 4
        Top = 153
        Width = 43
        Height = 19
        Caption = 'Status'
      end
      object Label4: TLabel [2]
        Left = 4
        Top = 124
        Width = 43
        Height = 19
        Caption = 'Senha'
      end
      object Label5: TLabel [3]
        Left = 4
        Top = 86
        Width = 39
        Height = 23
        Caption = 'Login'
      end
      object edtNome: TEdit
        Left = 56
        Top = 48
        Width = 345
        Height = 27
        TabOrder = 1
      end
      object edtLogin: TEdit
        Left = 56
        Top = 83
        Width = 345
        Height = 27
        TabOrder = 2
      end
      object edtSenha: TEdit
        Left = 56
        Top = 116
        Width = 345
        Height = 27
        TabOrder = 3
      end
      object ToggleStatus: TToggleSwitch
        Left = 56
        Top = 151
        Width = 130
        Height = 21
        StateCaptions.CaptionOn = 'Ativo'
        StateCaptions.CaptionOff = 'Bloqueado'
        TabOrder = 4
      end
    end
  end
  inherited DataSource1: TDataSource
    AutoEdit = False
    DataSet = dmUsuarios.cdsUsuarios
    Left = 440
  end
end
