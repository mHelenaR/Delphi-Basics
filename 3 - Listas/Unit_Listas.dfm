object Form1: TForm1
  Left = 824
  Top = 345
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Listas'
  ClientHeight = 383
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 84
    Height = 13
    Caption = 'Fun'#231#245'es B'#225'sicas:'
  end
  object Label2: TLabel
    Left = 240
    Top = 24
    Width = 101
    Height = 13
    Caption = 'Comandos Principais:'
  end
  object Label3: TLabel
    Left = 32
    Top = 160
    Width = 87
    Height = 13
    Caption = 'Outros Comandos:'
  end
  object Btn_AddLista: TButton
    Left = 32
    Top = 48
    Width = 153
    Height = 25
    Caption = 'Cria e Add Lista'
    TabOrder = 0
    OnClick = Btn_AddListaClick
  end
  object Btn_SeparaLista: TButton
    Left = 32
    Top = 80
    Width = 153
    Height = 25
    Caption = 'Separa Lista'
    TabOrder = 1
    OnClick = Btn_SeparaListaClick
  end
  object Btn_Capacity: TButton
    Left = 32
    Top = 184
    Width = 145
    Height = 25
    Caption = 'Capacity'
    TabOrder = 2
    OnClick = Btn_CapacityClick
  end
  object Btn_Clear: TButton
    Left = 240
    Top = 112
    Width = 145
    Height = 25
    Caption = 'Clear'
    TabOrder = 3
    OnClick = Btn_ClearClick
  end
  object Btn_Count: TButton
    Left = 240
    Top = 80
    Width = 145
    Height = 25
    Caption = 'Count'
    TabOrder = 4
    OnClick = Btn_CountClick
  end
  object Btn_Text: TButton
    Left = 240
    Top = 48
    Width = 145
    Height = 25
    Caption = 'Text'
    TabOrder = 5
    OnClick = Btn_TextClick
  end
  object Btn_CommaText: TButton
    Left = 32
    Top = 216
    Width = 145
    Height = 25
    Caption = 'CommaText'
    TabOrder = 6
    OnClick = Btn_CommaTextClick
  end
  object Btn_Quote: TButton
    Left = 32
    Top = 248
    Width = 145
    Height = 25
    Caption = 'QuotedChar'
    TabOrder = 7
    OnClick = Btn_QuoteClick
  end
  object Button4: TButton
    Left = 184
    Top = 248
    Width = 145
    Height = 25
    Caption = 'Names'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Btn_Strings: TButton
    Left = 184
    Top = 184
    Width = 145
    Height = 25
    Caption = 'Strings'
    TabOrder = 9
    OnClick = Btn_StringsClick
  end
  object Btn_DelimitedText: TButton
    Left = 184
    Top = 216
    Width = 145
    Height = 25
    Caption = 'DelimitedText'
    TabOrder = 10
    OnClick = Btn_DelimitedTextClick
  end
  object Btn_Values: TButton
    Left = 32
    Top = 280
    Width = 145
    Height = 25
    Caption = 'Values'
    TabOrder = 11
    OnClick = Btn_ValuesClick
  end
  object Btn_Duplicate: TButton
    Left = 184
    Top = 280
    Width = 145
    Height = 25
    Caption = 'Duplicates'
    TabOrder = 12
    OnClick = Btn_DuplicateClick
  end
  object Btn_Insert: TButton
    Left = 32
    Top = 312
    Width = 145
    Height = 25
    Caption = 'Insert'
    TabOrder = 13
    OnClick = Btn_InsertClick
  end
  object Btn_Delete: TButton
    Left = 184
    Top = 312
    Width = 145
    Height = 25
    Caption = 'Delete'
    TabOrder = 14
    OnClick = Btn_DeleteClick
  end
  object Btn_Move: TButton
    Left = 336
    Top = 184
    Width = 145
    Height = 25
    Caption = 'Move'
    TabOrder = 15
    OnClick = Btn_MoveClick
  end
  object Btn_Exchange: TButton
    Left = 336
    Top = 216
    Width = 145
    Height = 25
    Caption = 'Exchange'
    TabOrder = 16
    OnClick = Btn_ExchangeClick
  end
  object Btn_IndexOf: TButton
    Left = 336
    Top = 248
    Width = 145
    Height = 25
    Caption = 'IndexOf'
    TabOrder = 17
    OnClick = Btn_IndexOfClick
  end
  object Btn_AddStrings: TButton
    Left = 336
    Top = 280
    Width = 145
    Height = 25
    Caption = 'AddStrings'
    TabOrder = 18
    OnClick = Btn_AddStringsClick
  end
  object Btn_Assing: TButton
    Left = 336
    Top = 312
    Width = 145
    Height = 25
    Caption = 'Assing'
    TabOrder = 19
    OnClick = Btn_AssingClick
  end
  object Btn_Exp: TButton
    Left = 32
    Top = 120
    Width = 153
    Height = 25
    Caption = 'Exemplo Fun'#231#245'es'
    TabOrder = 20
    OnClick = Btn_ExpClick
  end
end
