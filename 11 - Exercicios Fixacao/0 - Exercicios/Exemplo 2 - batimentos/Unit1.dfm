object Form1: TForm1
  Left = 638
  Top = 413
  Width = 397
  Height = 352
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
    Width = 361
    Height = 297
    Caption = 'Batimentos'
    TabOrder = 0
    object bCalcular: TButton
      Left = 40
      Top = 128
      Width = 161
      Height = 25
      Caption = 'Calcular'
      TabOrder = 0
      OnClick = bCalcularClick
    end
    object EdtIdade: TLabeledEdit
      Left = 40
      Top = 48
      Width = 161
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Idade'
      TabOrder = 1
    end
    object EdtBatimentos: TLabeledEdit
      Left = 40
      Top = 92
      Width = 161
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = 'Batimentos'
      TabOrder = 2
    end
  end
end
