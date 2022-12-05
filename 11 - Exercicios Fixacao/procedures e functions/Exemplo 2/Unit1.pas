unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, SqlFun;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    EdtNomeLivro: TLabeledEdit;
    EdtEditora: TLabeledEdit;
    EdtQuantidade: TLabeledEdit;
    BtnCadastrar: TButton;
    GroupBox2: TGroupBox;
    StringGrid1: TStringGrid;
    EdtLivroIndice: TLabeledEdit;
    Emprestar: TButton;
    EdtQtdEmprestimo: TLabeledEdit;
    procedure BtnCadastrarClick(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure EmprestarClick(Sender: TObject);
  private
    { Private declarations }
    procedure CadastraLivros(listaCadastroLivros:TStringList);
    procedure EmprestaLivro(indiceLinha, quantidadeEmprestar: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  listaPrincipal: TStringList;
  indiceLinhaSelecionada: Integer;
implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.CadastraLivros(listaCadastroLivros:TStringList);
var listaAux: TStringList;
    row, col: Integer;
begin
  listaAux:= TStringList.Create;
  row:= StringGrid1.RowCount;        // guarda o indice original do grid
  StringGrid1.RowCount:= row + 1;    // cada vez que a procedure for chamada, incrementa uma linha no grid
  
  StrToLista(listaAux,listaCadastroLivros[0],'|',True);
  for col:=0 to listaAux.Count -1 do begin  // percorre a lista separada
    StringGrid1.ColCount:= col;
    StringGrid1.Cells[col,row]:= listaAux[col];
  end;

  listaAux.Free;
end;

procedure TForm1.BtnCadastrarClick(Sender: TObject);
begin
  listaPrincipal:= TStringList.Create;
  listaPrincipal.Add(EdtNomeLivro.Text+'|'+EdtEditora.Text+'|'+EdtQuantidade.Text+'|');
  CadastraLivros(listaPrincipal);

  listaPrincipal.Free;
end;

procedure TForm1.StringGrid1SelectCell(Sender: TObject; ACol,ARow: Integer; var CanSelect: Boolean);
begin
  if StringGrid1.Row > 0 then begin
    EdtLivroIndice.Text:= StringGrid1.Cells[0,StringGrid1.Row]; // pega o texto da primeira coluna da linha selecionada
    indiceLinhaSelecionada:= StringGrid1.Row;
  end;
end;


procedure TForm1.EmprestarClick(Sender: TObject);
begin
  EmprestaLivro(indiceLinhaSelecionada, StrToInt(EdtQtdEmprestimo.Text));
end;

procedure TForm1.EmprestaLivro(indiceLinha, quantidadeEmprestar: Integer);
var subtraiEmprestimo, valorCelula: Integer;

  procedure ReordenaGrid(novoValor: Integer);
  begin
    StringGrid1.Cells[2,indiceLinha]:= IntToStr(novoValor); // atualiza o valor no grid
  end;

begin
  valorCelula:= StrToInt(StringGrid1.Cells[2,indiceLinha]);
  subtraiEmprestimo:= valorCelula - quantidadeEmprestar;   // subtrai o valor do livro no grid
  if valorCelula <= 0 then begin
    ShowMessage('O livro não esta disponível');
  end else begin
    ReordenaGrid(subtraiEmprestimo);
  end;
end;


end.
