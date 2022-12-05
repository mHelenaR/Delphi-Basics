object Form1: TForm1
  Left = 654
  Top = 379
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Records'
  ClientHeight = 559
  ClientWidth = 695
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
    Left = 16
    Top = 16
    Width = 209
    Height = 113
    Caption = '    Record Simples     '
    TabOrder = 0
    object Btn_SimEmpresa: TButton
      Left = 16
      Top = 32
      Width = 177
      Height = 25
      Caption = 'Empresa'
      TabOrder = 0
      OnClick = Btn_SimEmpresaClick
    end
    object Btn_Fornecedor: TButton
      Left = 16
      Top = 64
      Width = 177
      Height = 25
      Caption = 'Fornecedor'
      TabOrder = 1
      OnClick = Btn_FornecedorClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 152
    Width = 209
    Height = 393
    Caption = ' Record Componentes Empresa '
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 30
      Height = 13
      Caption = 'CNPJ:'
    end
    object Label3: TLabel
      Left = 16
      Top = 112
      Width = 84
      Height = 13
      Caption = 'Data de Abertura:'
    end
    object Label4: TLabel
      Left = 16
      Top = 152
      Width = 43
      Height = 13
      Caption = 'N'#250'mero::'
    end
    object Label5: TLabel
      Left = 16
      Top = 192
      Width = 57
      Height = 13
      Caption = 'Logradouro:'
    end
    object Label6: TLabel
      Left = 16
      Top = 232
      Width = 40
      Height = 13
      Caption = 'Contato:'
    end
    object Label7: TLabel
      Left = 16
      Top = 272
      Width = 22
      Height = 13
      Caption = 'Cep:'
    end
    object Label8: TLabel
      Left = 16
      Top = 312
      Width = 65
      Height = 13
      Caption = 'Renda Anual:'
    end
    object Btn_CadEmpresa: TButton
      Left = 128
      Top = 360
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = Btn_CadEmpresaClick
    end
    object Edt_NomeEmpresa: TEdit
      Left = 16
      Top = 48
      Width = 178
      Height = 21
      TabOrder = 1
    end
    object Edt_CnpjEmpresa: TEdit
      Left = 16
      Top = 88
      Width = 178
      Height = 21
      TabOrder = 2
    end
    object Edt_DataEmpresa: TEdit
      Left = 16
      Top = 128
      Width = 178
      Height = 21
      TabOrder = 3
    end
    object Edt_NumEmpresa: TEdit
      Left = 16
      Top = 168
      Width = 178
      Height = 21
      TabOrder = 4
    end
    object Edt_ContEmpresa: TEdit
      Left = 16
      Top = 248
      Width = 178
      Height = 21
      TabOrder = 5
    end
    object Edt_LogrEmpresa: TEdit
      Left = 16
      Top = 208
      Width = 178
      Height = 21
      TabOrder = 6
    end
    object Edt_CepEmpresa: TEdit
      Left = 16
      Top = 288
      Width = 178
      Height = 21
      TabOrder = 7
    end
    object Edt_RendaEmpresa: TEdit
      Left = 16
      Top = 328
      Width = 178
      Height = 21
      TabOrder = 8
    end
  end
  object GroupBox3: TGroupBox
    Left = 232
    Top = 152
    Width = 209
    Height = 393
    Caption = 'Record Componentes Fornecedor'
    TabOrder = 2
    object Label9: TLabel
      Left = 16
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label10: TLabel
      Left = 16
      Top = 72
      Width = 30
      Height = 13
      Caption = 'CNPJ:'
    end
    object Label11: TLabel
      Left = 16
      Top = 112
      Width = 53
      Height = 13
      Caption = 'C'#243'digo(ID):'
    end
    object Label12: TLabel
      Left = 16
      Top = 152
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label13: TLabel
      Left = 16
      Top = 192
      Width = 44
      Height = 13
      Caption = 'Empresa:'
    end
    object Label14: TLabel
      Left = 16
      Top = 232
      Width = 40
      Height = 13
      Caption = 'Contato:'
    end
    object Label15: TLabel
      Left = 16
      Top = 272
      Width = 33
      Height = 13
      Caption = 'Status:'
    end
    object Label16: TLabel
      Left = 16
      Top = 312
      Width = 28
      Height = 13
      Caption = 'Email:'
    end
    object Btn_CadForne: TButton
      Left = 128
      Top = 360
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = Btn_CadForneClick
    end
    object Edt_NomeForne: TEdit
      Left = 16
      Top = 48
      Width = 177
      Height = 21
      TabOrder = 1
    end
    object Edt_CnpjForne: TEdit
      Left = 16
      Top = 88
      Width = 177
      Height = 21
      TabOrder = 2
    end
    object Edt_CodForne: TEdit
      Left = 16
      Top = 128
      Width = 177
      Height = 21
      TabOrder = 3
    end
    object Edt_EndeForne: TEdit
      Left = 16
      Top = 168
      Width = 177
      Height = 21
      TabOrder = 4
    end
    object Edt_ContForne: TEdit
      Left = 16
      Top = 248
      Width = 177
      Height = 21
      TabOrder = 5
    end
    object Edt_EmpresaForne: TEdit
      Left = 16
      Top = 208
      Width = 177
      Height = 21
      TabOrder = 6
    end
    object Edt_StatusForne: TEdit
      Left = 16
      Top = 288
      Width = 177
      Height = 21
      TabOrder = 7
    end
    object Edt_EmailForne: TEdit
      Left = 16
      Top = 328
      Width = 177
      Height = 21
      TabOrder = 8
    end
  end
  object GroupBox4: TGroupBox
    Left = 232
    Top = 16
    Width = 209
    Height = 113
    Caption = 'Record Array '
    TabOrder = 3
    object Button1: TButton
      Left = 24
      Top = 32
      Width = 161
      Height = 25
      Caption = 'Empresa'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 24
      Top = 64
      Width = 161
      Height = 25
      Caption = 'Fornecedor'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 464
    Top = 16
    Width = 209
    Height = 281
    Caption = 'Array Estatico '
    TabOrder = 4
    object Btn_ArrayFrutas: TButton
      Left = 16
      Top = 184
      Width = 177
      Height = 25
      Caption = 'Array String - Frutas'
      TabOrder = 0
      OnClick = Btn_ArrayFrutasClick
    end
    object Edt_Item1: TLabeledEdit
      Left = 16
      Top = 32
      Width = 177
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'Item 1'
      TabOrder = 1
    end
    object Edt_Item2: TLabeledEdit
      Left = 16
      Top = 72
      Width = 177
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'Item 2'
      TabOrder = 2
    end
    object Edt_Item3: TLabeledEdit
      Left = 16
      Top = 112
      Width = 177
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'Item 3'
      TabOrder = 3
    end
    object Edt_Item4: TLabeledEdit
      Left = 16
      Top = 152
      Width = 177
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'Item 4'
      TabOrder = 4
    end
    object Btn_ArrayIdade: TButton
      Left = 16
      Top = 216
      Width = 177
      Height = 25
      Caption = 'Array Integer - Idades'
      TabOrder = 5
      OnClick = Btn_ArrayIdadeClick
    end
    object Btn_ArraySalario: TButton
      Left = 16
      Top = 248
      Width = 177
      Height = 25
      Caption = 'Array Currency - Sal'#225'rios'
      TabOrder = 6
      OnClick = Btn_ArraySalarioClick
    end
  end
  object GroupBox6: TGroupBox
    Left = 464
    Top = 304
    Width = 209
    Height = 241
    Caption = 'Array Dinamico '
    TabOrder = 5
    object Edt_Nome: TLabeledEdit
      Left = 16
      Top = 32
      Width = 177
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 0
    end
    object Edt_Empresa: TLabeledEdit
      Left = 16
      Top = 112
      Width = 177
      Height = 21
      EditLabel.Width = 41
      EditLabel.Height = 13
      EditLabel.Caption = 'Empresa'
      TabOrder = 1
    end
    object Edt_Cod: TLabeledEdit
      Left = 16
      Top = 152
      Width = 177
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Codigo'
      TabOrder = 2
    end
    object Btn_ArrayLista: TButton
      Left = 16
      Top = 208
      Width = 177
      Height = 25
      Caption = 'Array Lista'
      TabOrder = 3
      OnClick = Btn_ArrayListaClick
    end
    object Btn_ArrayListaEdt: TButton
      Left = 16
      Top = 179
      Width = 177
      Height = 25
      Caption = 'Arrya Lista - Edit'
      TabOrder = 4
      OnClick = Btn_ArrayListaEdtClick
    end
    object Edt_Idade: TLabeledEdit
      Left = 16
      Top = 72
      Width = 177
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Idade'
      TabOrder = 5
    end
  end
end
