object Form1: TForm1
  Left = 553
  Top = 302
  Width = 387
  Height = 332
  Caption = 'Frm_Variaveis'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Btn_Funcionario: TButton
    Left = 16
    Top = 32
    Width = 89
    Height = 25
    Caption = 'Funcionario'
    TabOrder = 0
    OnClick = Btn_FuncionarioClick
  end
  object Btn_Aluno: TButton
    Left = 16
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Aluno'
    TabOrder = 1
    OnClick = Btn_AlunoClick
  end
  object RpStringGrid1: TRpStringGrid
    Left = 32
    Top = 128
    Width = 320
    Height = 120
    TabOrder = 2
  end
end
