object Form1: TForm1
  Left = 706
  Top = 320
  Width = 834
  Height = 422
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 257
    Height = 305
    Caption = 'Exercicio '
    TabOrder = 0
    object Memo1: TMemo
      Left = 16
      Top = 24
      Width = 225
      Height = 217
      TabOrder = 0
    end
    object btnAluno1: TButton
      Left = 16
      Top = 256
      Width = 105
      Height = 25
      Caption = 'Aluno 1'
      TabOrder = 1
      OnClick = btnAluno1Click
    end
    object btnAluno2: TButton
      Left = 136
      Top = 256
      Width = 105
      Height = 25
      Caption = 'Aluno 2'
      TabOrder = 2
      OnClick = btnAluno2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 560
    Top = 8
    Width = 241
    Height = 361
    Caption = 'Banco'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 64
      Width = 67
      Height = 13
      Caption = 'Tipo de Conta'
    end
    object Label2: TLabel
      Left = 16
      Top = 184
      Width = 110
      Height = 13
      Caption = 'Situa'#231#227'o da Opera'#231#227'o:'
    end
    object BtnDepositar_: TButton
      Left = 16
      Top = 112
      Width = 97
      Height = 25
      Caption = 'Depositar'
      TabOrder = 0
      OnClick = BtnDepositar_Click
    end
    object cbTipoConta: TComboBox
      Left = 16
      Top = 80
      Width = 209
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 1
      Items.Strings = (
        'Corrente'
        'Poupan'#231'a')
    end
    object EdtValor: TLabeledEdit
      Left = 16
      Top = 40
      Width = 209
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'Valor'
      TabOrder = 2
    end
    object BtnSacar_: TButton
      Left = 128
      Top = 112
      Width = 97
      Height = 25
      Caption = 'Sacar'
      TabOrder = 3
      OnClick = BtnSacar_Click
    end
    object BtnTransferir_: TButton
      Left = 16
      Top = 144
      Width = 209
      Height = 25
      Caption = 'Transferir'
      TabOrder = 4
      OnClick = BtnTransferir_Click
    end
    object MemoBanco: TMemo
      Left = 16
      Top = 200
      Width = 209
      Height = 145
      ScrollBars = ssVertical
      TabOrder = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 280
    Top = 8
    Width = 249
    Height = 361
    Caption = 'Funcionarios '
    TabOrder = 2
    object Memo2: TMemo
      Left = 16
      Top = 24
      Width = 217
      Height = 297
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Button1: TButton
      Left = 16
      Top = 328
      Width = 105
      Height = 25
      Caption = 'Estatico'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 128
      Top = 328
      Width = 105
      Height = 25
      Caption = 'Dinamico'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
end
