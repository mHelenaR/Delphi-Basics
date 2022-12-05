object Form1: TForm1
  Left = 929
  Top = 353
  Width = 720
  Height = 457
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
  object GroupBox2: TGroupBox
    Left = 456
    Top = 8
    Width = 233
    Height = 121
    Caption = 'CASE OF '
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 72
      Width = 201
      Height = 25
      Caption = 'Numeros de lados pol'#237'gono'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edt_Case: TLabeledEdit
      Left = 16
      Top = 40
      Width = 201
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Valor 1'
      TabOrder = 1
    end
    object Button9: TButton
      Left = 112
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Button9'
      TabOrder = 2
      OnClick = Button9Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 8
    Width = 209
    Height = 401
    Caption = 'Exercicios '
    TabOrder = 1
    object Button2: TButton
      Left = 16
      Top = 104
      Width = 177
      Height = 25
      Caption = '1 - Classifica'#231#227'o'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Ex1_nome: TLabeledEdit
      Left = 16
      Top = 40
      Width = 177
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 1
    end
    object Ex1_Pontuacao: TLabeledEdit
      Left = 16
      Top = 80
      Width = 177
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = 'Pontua'#231#227'o'
      TabOrder = 2
    end
    object Button3: TButton
      Left = 16
      Top = 184
      Width = 177
      Height = 25
      Caption = '2 - Idade Nadador'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Ex2_Idade: TLabeledEdit
      Left = 16
      Top = 160
      Width = 177
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Idade'
      TabOrder = 4
    end
    object Button4: TButton
      Left = 16
      Top = 264
      Width = 177
      Height = 25
      Caption = '3 - Calcular IMC'
      TabOrder = 5
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 16
      Top = 344
      Width = 177
      Height = 25
      Caption = '4 - Opera'#231#245'es'
      TabOrder = 6
      OnClick = Button5Click
    end
    object edtConta: TLabeledEdit
      Left = 16
      Top = 320
      Width = 177
      Height = 21
      EditLabel.Width = 182
      EditLabel.Height = 13
      EditLabel.Caption = '1 - Adicao / 2 - Subtracao / 3 - divisao'
      TabOrder = 7
    end
    object EdtAltura: TLabeledEdit
      Left = 16
      Top = 240
      Width = 81
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Altura'
      TabOrder = 8
    end
    object EdtPeso: TLabeledEdit
      Left = 112
      Top = 240
      Width = 81
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'Peso'
      TabOrder = 9
    end
  end
  object GroupBox6: TGroupBox
    Left = 232
    Top = 8
    Width = 217
    Height = 401
    Caption = 'Saida de dados'
    TabOrder = 2
    object Memo: TMemo
      Left = 8
      Top = 24
      Width = 201
      Height = 369
      Align = alCustom
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 456
    Top = 144
    Width = 233
    Height = 137
    Caption = 'IF AND'
    TabOrder = 3
    object Button6: TButton
      Left = 16
      Top = 64
      Width = 201
      Height = 25
      Caption = 'Verifica se pode Votar'
      TabOrder = 0
      OnClick = Button6Click
    end
    object idade: TLabeledEdit
      Left = 16
      Top = 40
      Width = 201
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Idade'
      TabOrder = 1
    end
    object Button7: TButton
      Left = 16
      Top = 96
      Width = 201
      Height = 25
      Caption = 'Verifica se pode votar e dirigir'
      TabOrder = 2
      OnClick = Button7Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 456
    Top = 288
    Width = 233
    Height = 121
    Caption = 'IF OR - NOT - AND'
    TabOrder = 4
    object Button8: TButton
      Left = 16
      Top = 56
      Width = 201
      Height = 25
      Caption = 'Verifica tipo do triangulo'
      TabOrder = 0
      OnClick = Button8Click
    end
    object EdtLado1: TLabeledEdit
      Left = 16
      Top = 32
      Width = 57
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Lado 1'
      TabOrder = 1
    end
    object EdtLado3: TLabeledEdit
      Left = 160
      Top = 32
      Width = 57
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Lado 3'
      TabOrder = 2
    end
    object EdtLado2: TLabeledEdit
      Left = 88
      Top = 32
      Width = 57
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Lado 2'
      TabOrder = 3
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 536
    Top = 24
  end
  object SaveDialog1: TSaveDialog
    Left = 600
    Top = 24
  end
end
