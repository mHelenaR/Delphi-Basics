object Form1: TForm1
  Left = 831
  Top = 397
  Width = 680
  Height = 555
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
    Width = 185
    Height = 105
    Caption = 'Exerc'#237'cio '
    TabOrder = 0
    object Btn_ExNotas: TButton
      Left = 16
      Top = 24
      Width = 153
      Height = 25
      Caption = 'Notas Aluno'
      TabOrder = 0
      OnClick = Btn_ExNotasClick
    end
    object Btn_Lista: TButton
      Left = 16
      Top = 56
      Width = 153
      Height = 25
      Caption = 'Lista'
      TabOrder = 1
      OnClick = Btn_ListaClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 200
    Top = 8
    Width = 185
    Height = 129
    Caption = 'Record '
    TabOrder = 1
    object Btn_RecBreak: TButton
      Left = 16
      Top = 24
      Width = 153
      Height = 25
      Caption = 'Break'
      TabOrder = 0
      OnClick = Btn_RecBreakClick
    end
    object Btn_RecConti: TButton
      Left = 16
      Top = 56
      Width = 153
      Height = 25
      Caption = 'Continue'
      TabOrder = 1
      OnClick = Btn_RecContiClick
    end
    object Btn_RecDown: TButton
      Left = 16
      Top = 88
      Width = 153
      Height = 25
      Caption = 'DownTo'
      TabOrder = 2
      OnClick = Btn_RecDownClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 392
    Top = 120
    Width = 185
    Height = 105
    Caption = 'Array Matriz '
    TabOrder = 2
    object Button2: TButton
      Left = 16
      Top = 24
      Width = 153
      Height = 25
      Caption = 'Matriz Simples'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 16
      Top = 56
      Width = 153
      Height = 25
      Caption = 'Matriz dinamica'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 392
    Top = 8
    Width = 185
    Height = 105
    Caption = 'Array List '
    TabOrder = 3
    object Button3: TButton
      Left = 16
      Top = 24
      Width = 153
      Height = 25
      Caption = 'Array Simples'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 16
      Top = 56
      Width = 153
      Height = 25
      Caption = 'Array Dinamico'
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 128
    Width = 185
    Height = 337
    Caption = 'Exemplos'
    TabOrder = 4
    object Edt_Val1: TLabeledEdit
      Left = 16
      Top = 40
      Width = 153
      Height = 21
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'Item / Valor 1'
      TabOrder = 0
    end
    object Edt_Val2: TLabeledEdit
      Left = 16
      Top = 80
      Width = 153
      Height = 21
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'Item / Valor 2'
      TabOrder = 1
    end
    object Btn_Par: TButton
      Left = 16
      Top = 184
      Width = 153
      Height = 25
      Caption = 'um numero'
      TabOrder = 2
      OnClick = Btn_ParClick
    end
    object Edt_Unico: TLabeledEdit
      Left = 16
      Top = 152
      Width = 153
      Height = 21
      EditLabel.Width = 23
      EditLabel.Height = 13
      EditLabel.Caption = 'Itens'
      TabOrder = 3
    end
  end
end
