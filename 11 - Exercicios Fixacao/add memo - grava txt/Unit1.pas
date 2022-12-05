unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SqlFun;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    EdtTexto: TLabeledEdit;
    BtnLimpar: TButton;
    BtnSalvar: TButton;
    BtnCarregar: TButton;
    BtnAdicionar: TButton;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnCarregarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    procedure DesativaBotao;
    procedure AtivaBotao;
    procedure SalvarArquivo(TextoMemo: TStringList);
    procedure CarregarArquivo;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ListaTexto: TStringList;

implementation

{$R *.dfm}

procedure TForm1.BtnAdicionarClick(Sender: TObject);
begin
  ListaTexto:= TStringList.Create;
  Memo1.Lines.Add(EdtTexto.Text);
  ListaTexto.Add(EdtTexto.Text);
  AtivaBotao;
end;

procedure TForm1.AtivaBotao;
begin
  BtnLimpar.Enabled:= true;
  BtnSalvar.Enabled:= true;
end;

procedure TForm1.DesativaBotao;
begin
  BtnLimpar.Enabled:= true;
  BtnSalvar.Enabled:= true;
end;

procedure TForm1.BtnLimparClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TForm1.BtnSalvarClick(Sender: TObject);
begin
  SalvarArquivo(ListaTexto);
  DesativaBotao;
end;

procedure TForm1.BtnCarregarClick(Sender: TObject);
begin
  CarregarArquivo;
  AtivaBotao;
end;

procedure TForm1.SalvarArquivo(TextoMemo: TStringList);
var arquivo: TextFile;
    caminho: String;
    i: Integer;
begin
  if SaveDialog.Execute then begin
    caminho:= SaveDialog.FileName;
  end else begin
    ShowMessage('Erro, tente novamente!');
    Exit;
  end;
  AssignFile(arquivo,caminho);

  if not FileExists(caminho) then begin
    Rewrite(arquivo);
    ShowMessage('Arquivo criado com sucesso!!');
  end;

  Append(arquivo);

  for i:=0 to TextoMemo.Count -1 do begin
    Writeln(arquivo, TextoMemo[i]);
  end;

  CloseFile(arquivo);
end;

procedure TForm1.CarregarArquivo;
var arquivo: TextFile;
    caminho, texto: String;
begin
  if OpenDialog.Execute then begin
    caminho:= OpenDialog.FileName;
  end else begin
    ShowMessage('Erro! Tente Novamente!!');
    Exit;
  end;

  AssignFile(arquivo, caminho);

  Reset(arquivo);

  while not Eof(arquivo) do begin
   ReadLn(arquivo, texto);
   Memo1.Lines.Add(texto);
  end;
end;

end.
