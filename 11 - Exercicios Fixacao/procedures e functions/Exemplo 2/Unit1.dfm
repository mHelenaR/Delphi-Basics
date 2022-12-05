object Form1: TForm1
  Left = 696
  Top = 373
  Width = 805
  Height = 449
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
    Width = 789
    Height = 410
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 209
      Height = 209
      Caption = 'Cadastro '
      TabOrder = 0
      object EdtNomeLivro: TLabeledEdit
        Left = 16
        Top = 40
        Width = 177
        Height = 21
        EditLabel.Width = 54
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome Livro'
        TabOrder = 0
      end
      object EdtEditora: TLabeledEdit
        Left = 16
        Top = 80
        Width = 177
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Editora'
        TabOrder = 1
      end
      object EdtQuantidade: TLabeledEdit
        Left = 16
        Top = 120
        Width = 177
        Height = 21
        EditLabel.Width = 55
        EditLabel.Height = 13
        EditLabel.Caption = 'Quantidade'
        TabOrder = 2
      end
      object BtnCadastrar: TButton
        Left = 24
        Top = 160
        Width = 161
        Height = 25
        Caption = 'Cadastrar'
        TabOrder = 3
        OnClick = BtnCadastrarClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 232
      Top = 8
      Width = 537
      Height = 385
      Caption = 'Emprestimo '
      TabOrder = 1
      object StringGrid1: TStringGrid
        Left = 16
        Top = 24
        Width = 361
        Height = 337
        ColCount = 1
        Ctl3D = False
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        ParentCtl3D = False
        TabOrder = 0
        OnSelectCell = StringGrid1SelectCell
      end
      object EdtLivroIndice: TLabeledEdit
        Left = 392
        Top = 48
        Width = 129
        Height = 19
        Ctl3D = False
        EditLabel.Width = 23
        EditLabel.Height = 13
        EditLabel.Caption = 'Livro'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object Emprestar: TButton
        Left = 392
        Top = 128
        Width = 129
        Height = 25
        Caption = 'Emprestar'
        TabOrder = 2
        OnClick = EmprestarClick
      end
      object EdtQtdEmprestimo: TLabeledEdit
        Left = 392
        Top = 96
        Width = 129
        Height = 19
        Ctl3D = False
        EditLabel.Width = 73
        EditLabel.Height = 13
        EditLabel.Caption = 'QTD Emprestar'
        ParentCtl3D = False
        TabOrder = 3
      end
    end
  end
end
