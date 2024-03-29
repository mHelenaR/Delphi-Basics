unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    MLista: TMemo;
    Records: TMemo;
    Arrays: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TFuncionario = record
    nome: String;
    idade: Integer;
    salario: Currency;
end;

type
  TCliente = record
    nome: String;
    telefone: Double;
    endereco: String;
    idade: Integer;
end;
type
  TAluno = record
    nome: String;
    codMatricula: Integer;
    notas: Array[0..2] of Double;
    media: Double;
end;

var
  Form1: TForm1;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var Lista: TStringList;
    i: Integer;
begin
  Lista:= TStringList.Create;
  i:=0;

  Lista.Add('Ana');
  Lista.Add('Matheus');
  Lista.Add('Carla');
  Lista.Add('Geovana');

  repeat
    if Lista[i] = 'Ana' then begin
      MLista.Lines.Add('Nome: ' + Lista[i]);
      MLista.Lines.Add('Posi��o: ' + IntToStr(i));
      MLista.Lines.Add('---------------');
    end else if Lista[i] = 'Matheus' then begin
      MLista.Lines.Add('Nome: ' + Lista[i]);
      MLista.Lines.Add('Posi��o: ' + IntToStr(i));
      MLista.Lines.Add('---------------');
    end else if Lista[i] = 'Carla' then begin
      MLista.Lines.Add('Nome: ' + Lista[i]);
      MLista.Lines.Add('Posi��o: ' + IntToStr(i));
      MLista.Lines.Add('---------------');
    end else if Lista[i] = 'Geovana' then begin
      MLista.Lines.Add('Nome: ' + Lista[i]);
      MLista.Lines.Add('Posi��o: ' + IntToStr(i));
      MLista.Lines.Add('---------------');
    end else begin
      ShowMessage('Nenhuma das condi��es foram atingidas!');
    end;

    Inc(i);
  until i>Lista.Count -1;
  Lista.Free;
end;

{ Escreva um algoritmo que leia o c�digo de um aluno e suas tr�s notas.
  Mostre o c�digo do aluno, suas tr�s notas, a m�dia calculada e
  uma mensagem "APROVADO" se a m�dia for maior ou igual a
  5 e "REPROVADO" se a m�dia for menor que 5.}
procedure TForm1.Button2Click(Sender: TObject);
var Notas: TStringList;
    Media: Double;
    i, Codigo, cont: Integer;
    Aprovado: Boolean;
    Status: String;
begin
  MLista.Clear;
  Notas:= TStringList.Create;
  i:=0;
  cont:=0;
  Media:=0;

  Codigo:= StrToInt(InputBox('Status aluno','Digite o codigo do aluno: ',''));

  // Recebe as notas do aluno
  repeat
    cont:= cont + 1;
    Notas.Add(InputBox('Status aluno','Digite a ' + IntToStr(cont) + '� nota do aluno',''));
    Inc(i);
  until i>=4;

  i:=0;

  // Calcula a media do aluno e se foi aprovado
  repeat
    Media:= Media + StrToFloat(Notas[i]);
    if i = Notas.Count-1 then begin
      Media:= Media / Notas.Count;
      if Media<50 then begin
        Aprovado:= False;
      end else if Media>=50 then begin
        Aprovado:= True;
      end;
    end;
    Inc(i);
  until i>Notas.Count -1;

  i:=0;

  if Aprovado = True then begin
    Status:= 'Aprovado';
  end else if Aprovado = False then begin
    Status:= 'Reprovado'
  end;

  // Impress�o
  MLista.Lines.Add('O aluno: ' + IntToStr(Codigo));
  MLista.Lines.Add('Notas: ');
  MLista.Lines.Add(Notas.Text);
  MLista.Lines.Add('Media final: ' + FloatToStr(Media));
  MLista.Lines.Add('Aprovado: ' + Status);

  Notas.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
var Lista: TStringList;
    i: Integer;
begin
  Lista:= TStringList.Create;
  i:=0;

  Lista.Add(IntToStr(1));
  Lista.Add(IntToStr(2));
  Lista.Add(IntToStr(3));
  Lista.Add(IntToStr(4));
  Lista.Add(IntToStr(5));
  Lista.Add(IntToStr(6));
  Lista.Add(IntToStr(7));
  Lista.Add(IntToStr(8));
  Lista.Add(IntToStr(9));

  repeat
    if Lista[i] = '1' then begin
      MLista.Lines.Add(Lista[i]);
    end else if Lista[i] = '2' then begin
      MLista.Lines.Add(Lista[i]);
    end else if Lista[i] = '3' then begin
      MLista.Lines.Add(Lista[i]);
    end else if Lista[i] = '4' then begin
      MLista.Lines.Add(Lista[i]);
    end else if Lista[i] = '5' then begin
      MLista.Lines.Add(Lista[i]);
    end else if Lista[i] = '6' then begin
      MLista.Lines.Add(Lista[i]);
    end else if Lista[i] = '7' then begin
      MLista.Lines.Add(lista[i]);
    end else if Lista[i] = '8' then begin
      MLista.Lines.Add(Lista[i]);
    end else if lista[i] = '9' then begin
      MLista.Lines.Add(Lista[i]);
    end else begin
      ShowMessage('Nenhuma das condi��es foi atingida!');
    end;

    Inc(i);
  until i>Lista.Count-1;

  Lista.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
var Lista: TStringList;
    i: Integer;
begin
  Lista:= TStringList.Create;
  i:=0;

  Lista.Add(FloatToStr(945.78));
  Lista.Add(FloatToStr(754.85));
  Lista.Add(FloatToStr(256.54));
  Lista.Add(FloatToStr(326.75));
  Lista.Add(FloatToStr(571.54));
  Lista.Add(FloatToStr(254.78));
  Lista.Add(FloatToStr(784.48));

  repeat
    if (StrToFloat(Lista[i]) >= 100) and (StrToFloat(Lista[i]) <= 350)then begin
      MLista.Lines.Add('1�:  ' + Lista[i]);
      MLista.Lines.Add('----------');
    end else if (StrToFloat(Lista[i]) >= 351)and(StrToFloat(Lista[i]) <= 650)then begin
      MLista.Lines.Add('2�:  ' + Lista[i]);
      MLista.Lines.Add('----------');
    end else if (StrToFloat(Lista[i]) >= 651)and(StrToFloat(Lista[i]) <= 1000)then begin
      MLista.Lines.Add('3�:  ' + Lista[i]);
      MLista.Lines.Add('----------');
    end else begin
      ShowMessage('Nenhuma das condi��es acima foi atingida!');
    end;

    Inc(i);
  until i>Lista.Count-1;

  Lista.Free;
end;

procedure TForm1.Button5Click(Sender: TObject);
var Frutas: Array[0..7] of String;
    i: Integer;
begin
  i:=0;

  Frutas[0]:='Banana';
  Frutas[1]:='Ma��';
  Frutas[2]:='P�ra';
  Frutas[3]:='Laranja';
  Frutas[4]:='BlueBarry';
  Frutas[5]:='Kiwi';
  Frutas[6]:='Atemoia';
  Frutas[7]:='Mam�o';

  repeat
    if Frutas[i] = 'Banana' then begin
      Arrays.Lines.Add('1  = ' + Frutas[i]);
      Arrays.Lines.Add('----------');
    end else if Frutas[i] = 'Ma��' then begin
      Arrays.Lines.Add('2 = ' + Frutas[i]);
      Arrays.Lines.Add('----------');
    end else begin
      Arrays.Lines.Add('3 = ' + Frutas[i]);
    end;
    Inc(i);
  until i>High(Frutas);
end;

procedure TForm1.Button6Click(Sender: TObject);
var Funcionario: Array[0..1] of TFuncionario;
    i: Integer;
begin
  i:=0;

  Funcionario[0].nome:= 'Ana';
  Funcionario[0].idade:= 52;
  Funcionario[0].salario:= 4.526;

  Funcionario[1].nome:= 'Carla';
  Funcionario[1].idade:=23;
  Funcionario[1].salario:=2.081;

  repeat
    Records.Lines.Add('Nome: ' + Funcionario[i].nome);
    Records.Lines.Add('Idade: ' + IntToStr(Funcionario[i].idade));
    Records.Lines.Add('Sal�rio: ' + CurrToStr(Funcionario[i].salario));
    Records.Lines.Add('----------------');
    Inc(i);
  until i>High(Funcionario);

end;

{ Crie um m�todo que recebe um array de inteiros
  positivos e substitui seus elementos
  de valor �mpar por -1 e os pares por +1.}
procedure TForm1.Button7Click(Sender: TObject);
var Numeros: Array of Integer;
    i, IncDec: Integer;
begin
  SetLength(Numeros, 10);
  i:=0;

  repeat
    Numeros[i]:= Random(100);
    Inc(i);
  until i>High(Numeros);

  i:=0;

  repeat
    Arrays.Lines.Add('Numero: ' + IntToStr(Numeros[i]));
    if Numeros[i] mod 2 = 0 then begin
      IncDec:= Numeros[i] + 1;
      Arrays.Lines.Add('Par Incrementa: ' + IntToStr(IncDec));
    end else if Numeros[i] mod 2 = 1 then begin
      IncDec:= Numeros[i] - 1;
      Arrays.Lines.Add('Impar Decrementa: ' + IntToStr(IncDec));
    end;
    Arrays.Lines.Add('------------------');
    Inc(i);
  until i>High(Numeros);

end;

procedure TForm1.Button8Click(Sender: TObject);
var Cliente: Array[0..5] of TCliente;
    i,j: Integer;
    Novo: String[1];
begin
  i:=0;
  
  repeat
    Cliente[i].nome:= InputBox('Cadastrar Cliente','Digite o nome','');
    Cliente[i].telefone:=StrToFloat(InputBox('Cadastrar Cliente','Digite o telefone',''));
    Cliente[i].idade:=StrToInt(InputBox('Cadastrar Cliente','Digite a idade',''));
    Cliente[i].endereco:= InputBox('Cadastrar Cliente','Digite o endere�o','');

    Novo:= InputBox('Cadastrar Cliente','Deseja cadastrar um novo cliente?(S/N)','');
    Inc(i);
  until (Novo = 'N') or (Novo = 'n');

  j:=0;

  repeat
    Records.Lines.Add('Nome: ' + Cliente[j].nome);
    Records.Lines.Add('Telefone: ' + FloatToStr(Cliente[j].telefone));
    Records.Lines.Add('Idade: ' + IntToStr(Cliente[j].idade));
    Records.Lines.Add('Endere�o: ' + Cliente[j].endereco);
    Records.Lines.Add('---------------------');

    Inc(j);
  until j>i -1;
end;

{ Crie uma estrutura representando os alunos de um determinado curso. A estrutura deve
 conter a matr�icula do aluno, nome, nota da primeira prova, nota da segunda prova e nota
 da terceira prova.
 (a) Permita ao usuario entrar com os dados de 5 alunos. �
 (b) Encontre o aluno com maior nota da primeira prova.
 (c) Encontre o aluno com maior media geral. �
 (d) Encontre o aluno com menor media geral �
 (e) Para cada aluno diga se ele foi aprovado ou reprovado, considerando o valor 6 para
 aprovac�ao.}
procedure TForm1.Button9Click(Sender: TObject);
var Aluno: Array[0..2] of TAluno;
    i, j, cont: Integer;
    media, valor: double;
begin
  i:=0;

  repeat
    Aluno[i].codMatricula:= StrToInt(InputBox('Alunos','Codigo do aluno',''));

    j:=0;
    repeat
      Aluno[i].notas[j]:= StrToFloat(InputBox('Alunos','Digite a '+IntToStr(j)+' nota: ',''));
      media:= media + Aluno[i].Notas[j];    //calcula a media do aluno
      Inc(j);
    until j>High(Aluno[i].Notas);

    media:= media /3;
    Aluno[i].media:= media;   // atribui o valor da media

    Inc(i);
  until i>High(Aluno);

  i:=0;
  j:=0;
  repeat
    cont:= j + 1;
    if (Aluno[j].media > Aluno[cont].media) then begin
      valor:=04;

    end;
    Inc(j);
  until j>High(Aluno[i].Notas);

  // impressao
  repeat
    Records.Lines.Add('Codigo: ' + IntToStr(Aluno[i].codMatricula));
    Records.Lines.Add('Media final: ' + FloatToStr(Aluno[i].media));
    Records.Lines.Add('--------------');

    Inc(i);
  until i>High(Aluno);

end;


{ Escrever um algoritmo que l� um conjunto de 4 valores i, a, b, c, onde i
  � um valor inteiro e positivo e a, b, c, s�o quaisquer
  valores reais e os escreva. A seguir:

a) Se i=1 escrever os tr�s valores a, b, c em ordem crescente.
b) Se i=2 escrever os tr�s valores a, b, c em ordem decrescente.
c) Se i=3 escrever os tr�s valores a, b, c de forma que
   o maior entre a, b, c fique dentre os dois.}
procedure TForm1.Button10Click(Sender: TObject);
var conjunto: Array[0..3] of Integer;
    i, j, numero: Integer;
begin
  i:=0;

  repeat
    numero := Random(50);
    if(i = 0) and (numero mod 2 = 0)then begin
      conjunto[i]:=numero;
    end else begin
      conjunto[i]:=numero;
    end;

    if i = 1 then begin
      j:=1;
      Arrays.Lines.Add('Crescente: ');
      repeat
        Arrays.Lines.Add(IntToStr(conjunto[j]));
        Inc(j);
      until j>High(conjunto);
    end;

    Inc(i);
  until i>High(conjunto);

end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  MLista.Clear;
end;

end.
