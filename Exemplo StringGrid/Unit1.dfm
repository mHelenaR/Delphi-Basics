object Form1: TForm1
  Left = 553
  Top = 268
  Width = 958
  Height = 576
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
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 425
    Height = 217
    Color = clMedGray
    TabOrder = 0
    object StringGrid1: TStringGrid
      Left = 8
      Top = 8
      Width = 321
      Height = 193
      TabOrder = 0
    end
    object Button1: TButton
      Left = 336
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 472
    Top = 8
    Width = 441
    Height = 217
    Color = clMedGray
    TabOrder = 1
    object StringGrid2: TStringGrid
      Left = 8
      Top = 8
      Width = 320
      Height = 161
      TabOrder = 0
    end
    object Button2: TButton
      Left = 344
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel3: TPanel
    Left = 16
    Top = 256
    Width = 433
    Height = 257
    TabOrder = 2
    object StringGrid4: TStringGrid
      Left = 8
      Top = 16
      Width = 329
      Height = 209
      TabOrder = 0
    end
    object Button4: TButton
      Left = 344
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Button4'
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object Panel4: TPanel
    Left = 472
    Top = 256
    Width = 441
    Height = 257
    TabOrder = 3
    object StringGrid6: TStringGrid
      Left = 8
      Top = 16
      Width = 321
      Height = 209
      TabOrder = 0
    end
    object Button6: TButton
      Left = 352
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Button4'
      TabOrder = 1
      OnClick = Button6Click
    end
  end
end
