object Form1: TForm1
  Left = 721
  Top = 401
  Width = 420
  Height = 284
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
    Left = 0
    Top = 0
    Width = 404
    Height = 245
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 16
      Top = 16
      Width = 369
      Height = 209
      Caption = 'Calcular Gasto Gasolina '
      TabOrder = 0
      object Button1: TButton
        Left = 16
        Top = 40
        Width = 153
        Height = 25
        Caption = 'Calculo Est'#225'tico'
        TabOrder = 0
        OnClick = Button1Click
      end
      object EdtQuantLitro: TLabeledEdit
        Left = 192
        Top = 80
        Width = 153
        Height = 21
        EditLabel.Width = 92
        EditLabel.Height = 13
        EditLabel.Caption = 'Quantidade por litro'
        TabOrder = 1
      end
      object EdtKM: TLabeledEdit
        Left = 192
        Top = 40
        Width = 153
        Height = 21
        EditLabel.Width = 55
        EditLabel.Height = 13
        EditLabel.Caption = 'Quilometros'
        TabOrder = 2
      end
      object EdtValGasolina: TLabeledEdit
        Left = 192
        Top = 120
        Width = 153
        Height = 21
        EditLabel.Width = 68
        EditLabel.Height = 13
        EditLabel.Caption = 'Valor Gasolina'
        TabOrder = 3
      end
      object Button2: TButton
        Left = 192
        Top = 160
        Width = 153
        Height = 25
        Caption = 'Calcular Gastos'
        TabOrder = 4
        OnClick = Button2Click
      end
    end
  end
end
