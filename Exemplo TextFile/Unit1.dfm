object Form1: TForm1
  Left = 702
  Top = 421
  Width = 401
  Height = 491
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 16
    Width = 209
    Height = 25
    Caption = '1 Criar um arquivo txt e add texto'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 48
    Width = 209
    Height = 25
    Caption = '2. Reabrir o arquivo add mais textos'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 80
    Width = 209
    Height = 25
    Caption = '3. Lendo dados txt'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 24
    Top = 112
    Width = 209
    Height = 25
    Caption = '4. Exemplo'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 32
    Top = 272
    Width = 137
    Height = 25
    Caption = 'Idades vota'#231#227'o'
    TabOrder = 4
    OnClick = Button5Click
  end
  object idade: TEdit
    Left = 32
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Memo: TMemo
    Left = 32
    Top = 304
    Width = 281
    Height = 89
    TabOrder = 6
  end
end
