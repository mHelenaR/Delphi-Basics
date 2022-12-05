object Form1: TForm1
  Left = 263
  Top = 124
  Width = 1305
  Height = 675
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
    Left = 160
    Top = 40
    Width = 169
    Height = 169
    Caption = 'GroupBox1'
    TabOrder = 0
    object Ed_nome: TEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Ed_idade: TEdit
      Left = 32
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button2: TButton
      Left = 48
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Button1: TButton
    Left = 40
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 416
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 2
    OnClick = Button3Click
  end
end
