unit Unit_For;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SqlFun, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Btn_ExNotas: TButton;
    GroupBox2: TGroupBox;
    Btn_RecBreak: TButton;
    Btn_Lista: TButton;
    GroupBox3: TGroupBox;
    Button2: TButton;
    GroupBox4: TGroupBox;
    Btn_RecConti: TButton;
    Btn_RecDown: TButton;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox5: TGroupBox;
    Edt_Val1: TLabeledEdit;
    Edt_Val2: TLabeledEdit;
    Btn_Par: TButton;
    Edt_Unico: TLabeledEdit;
    procedure Btn_ExNotasClick(Sender: TObject);
    procedure Btn_RecBreakClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Btn_ListaClick(Sender: TObject);
    procedure Btn_RecContiClick(Sender: TObject);
    procedure Btn_RecDownClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Btn_ParClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TAluno = record
    nome: String;
    data_nasc: TDateTime;
    idade: Integer;
    notas: Array[0..3] of Double;
    aprovado: Boolean;
end;

type
  TListas = record
    Lista_Fruta: TStringList;
end;

type
  TArrays = record
    Array_Numeros: Array of Integer;
end;

var
  Form1: TForm1;

implementation

uses Math;

{$R *.dfm}

{ Notas: 1. 1.5  / 2. 2  / 3. 5  / 4. 1  / 5.2
  Criar um array com 5 notas de aluno e fazer um for que vai varrer o array
  somando as notas, se o aluno atingir 7 ai vc da uma msg
  o aluno atingiu 7 e sai do laço }
procedure TForm1.Btn_ExNotasClick(Sender: TObject);
var Array_Notas: Array[0..5] of Double;
    Resultado: Double;
    i: Integer;
begin
  Array_Notas[0]:=1.5;
  Array_Notas[1]:=2;
  Array_Notas[2]:=5;
  Array_Notas[3]:=1;
  Array_Notas[4]:=2;

  for i:=0 to High(Array_Notas) do
  begin
    Resultado:= Resultado + Array_Notas[i];
    if(Resultado >= 7)then
    begin
      ShowMessage('O aluno atingiu 7: ' + FloatToStr(Resultado));
      break;
    end;
  end;
end;

{ O comando Break força a parada de execução das instruções }
procedure TForm1.Btn_RecBreakClick(Sender: TObject);
var
  Rec_Aluno: Array[0..1] of TAluno;
  i, j, Calc_Idade: Integer;
  Calc_Notas, Result: Double;
begin
  for i:=0 to High(Rec_Aluno) do
  begin
    if(i = 1)then Break;

    Rec_Aluno[i].nome:='Jana';
    Rec_Aluno[i].data_nasc:= StrToDate('12/12/2013');

    Calc_Idade:= StrToInt(FormatDateTime('yyyy', now)) - StrToInt(FormatDateTime('yyyy', Rec_Aluno[i].data_nasc));
    Rec_Aluno[i].idade:=Calc_Idade;

    Rec_Aluno[i].notas[0]:=45.9;
    Rec_Aluno[i].notas[1]:=10.5;
    Rec_Aluno[i].notas[2]:=70.5;
    Rec_Aluno[i].notas[3]:=55.9;

    for j:=0 to High(Rec_Aluno[i].notas) do
    begin
      Calc_Notas:= Calc_Notas + Rec_Aluno[i].notas[j];
    end;

    Result:= Calc_Notas / High(Rec_Aluno[i].notas);

    if(Result >= 80)then
    begin
      ShowMessage(FloatToStr(Result));
      Rec_Aluno[i].aprovado:=true;

      ShowMessage('Aluno ' + #13#13
                + 'Nome: ' + Rec_Aluno[i].nome + #13
                + 'Data de Nascimento: ' + DateToStr(Rec_Aluno[i].data_nasc) + #13
                + 'Idade: ' + IntToStr(Rec_Aluno[i].idade) + #13
                + 'Media Final: ' + FormatFloat('0.0', Result) + #13
                + 'Aprovado: ' + BoolToStr(Rec_Aluno[i].aprovado));
    end else
    begin
      ShowMessage('O aluno não atingiu o mínimo de notas para passar: ' + FormatFloat('0.0', Result));
      Break;
    end;
  end;
end;

{ No clique de um botão crie uma lista que recebe a seguinte string
  'Bolo^Chocolate;Nescau^Achocolatado;Chinelo^Havaianas' delimite-a com o ";"

  Mostre cada mensagem de acordo com sua posição
  Bolo^Chocolate;
  Nescau^Achocolatado;
  Chinelo^Havaianas

  Em um For a quebre-a novamente agora pelo delimitador "^".

  E a cada interação do For mostre a mensagem de acordo com sua posição
  Bolo
  Chocolate
  Nescau
  Achocolatado
  Chinelo
  Havaianas }
procedure TForm1.Btn_ListaClick(Sender: TObject);
var Lista_Principal, Lista_Separada: TStringList;
    i: Integer;
begin
  Lista_Principal:= TStringList.Create;
  Lista_Separada:= TStringList.Create;

  Lista_Principal.Add('Bolo^Chocolate;Nescau^Achocolatado;Chinelo^Havaianas');
  StrToLista(Lista_Principal,Lista_Principal[0],';',true);

  for i:=0 to Lista_Principal.Count -1 do
  begin
    ShowMessage(Lista_Principal[i]);
  end;

  for i:=0 to Lista_Principal.Count -1 do
  begin
    StrToLista(Lista_Separada,Lista_Principal[i],'^',true);

    ShowMessage('Posição ' + IntToStr(i) + ': ' + #13
              + Lista_Separada.Text);
  end;

  Lista_Principal.Free;
  Lista_Separada.Free;
end;

{ Continue força um salto ate a proxima instrução do loop }
procedure TForm1.Btn_RecContiClick(Sender: TObject);
var Rec_Listas: Array[0..0] of TListas;
    i, j: Integer;
begin
  for i:=0 to High(Rec_Listas) do
  begin
    Rec_Listas[i].Lista_Fruta:= TStringList.Create;
    Rec_Listas[i].Lista_Fruta.Add('banana;maça;laranja;pera;pessego');

    StrToLista(Rec_Listas[i].Lista_Fruta,Rec_Listas[i].Lista_Fruta[0],';',true);

      for j:=0 to Rec_Listas[i].Lista_Fruta.Count -1 do
      begin
        if((j mod 2) = 0)then Continue;
        ShowMessage('Posição da fruta: ' + #13
                  + IntToStr(j) + ' - ' + Rec_Listas[i].Lista_Fruta[j]);
      end;

    Rec_Listas[i].Lista_Fruta.Free;
  end;
end;

{ DownTo faz um loop de um valor a outro de forma inversa}
procedure TForm1.Btn_RecDownClick(Sender: TObject);
var Rec_Array: Array[0..5] of TArrays;
    i, j: integer;
begin
  for i:=0 to High(Rec_Array) do
  begin
    SetLength(Rec_Array[i].Array_Numeros, i+2); // Seta um tamanho para cada array dependendo da posição do array pai

    for j:=High(Rec_Array[i].Array_Numeros) Downto 0 do
    begin
      ShowMessage(IntToStr(j));
    end;

  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var Matriz: Array[0..1,0..1] of Integer;
    i, j: integer;
begin
  for i:=0 to High(Matriz) do begin
    for j:=0 to High(Matriz[i]) do begin
      Matriz[i,j]:=j*i+j*5;

      ShowMessage(IntToStr(Matriz[i][j]));
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var Matriz: Array of Array of String;
    i, j: Integer;
begin
  SetLength(Matriz,4,6);

  for i:=0 to High(Matriz) do begin
    for j:=0 to High(Matriz[i]) do begin
      Matriz[i][j]:=IntToStr(j + i);
      ShowMessage('Posição: ' + #13
                + 'Matriz['+IntToStr(i)+']['+IntToStr(j)+']: '
                + Matriz[i][j]);
    end;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var LArray: Array[0..6] of String;
    Lista: TStringList;
    i: Integer;
begin
  Lista:= TStringList.Create;

  Lista.Add('ana;paula;joana;calra;alice;jaque');
  StrToLista(Lista,Lista[0],';',true);

  for i:=0 to High(LArray) -1 do // quando há apenas o array nao é necessario colocar o -1
  begin
    LArray[i]:= Lista[i];
    ShowMessage(LArray[i]);
  end;
  
  Lista.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
var LArray1: Array of String;
    LArray2: Array of Integer;
    i, j: Integer;
begin
  SetLength(LArray1,5);
  SetLength(LArray2,5);

  for i:=0 to High(LArray1) do begin
    LArray1[i]:= IntToStr(2*i+4);
    for j:= High(LArray2) downto 0 do begin
      LArray2[j]:= 3*j+2;
      LArray2[j]:= StrToInt(LArray1[i]) + LArray2[j];

      ShowMessage('A soma de: ' + #13
                + '['+IntToStr(i)+']['+IntToStr(j)+']: ' + IntToStr(LArray2[j]));
    end;
  end;
end;

procedure TForm1.Btn_ParClick(Sender: TObject);
var valor1, result: Integer;
    i: Integer;
begin
  valor1:= StrToInt(Edt_Unico.Text);

  for i:=0 to valor1  do
  begin
    if(i mod 2 = 1)then begin
      ShowMessage('Números ímpares: ' + IntToStr(i));
    end;
  end;
end;

end.
