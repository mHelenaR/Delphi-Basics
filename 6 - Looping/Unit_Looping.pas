unit Unit_Looping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SqlFun, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edt_val1: TLabeledEdit;
    Edt_val2: TLabeledEdit;
    Edt_val3: TLabeledEdit;
    Button8: TButton;
    Button9: TButton;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TSoma = record
    numeros: Integer;
end;

type
  TEmpresa = record
    nome: String;
    cnpj: Double;
    numero : Integer;
    contato: Integer;
    status: boolean;
    logradouro : String;
end;

type
  TFornecedor = record
    nome: string;
    cnpj: double;
    empresa: string;
    codigo_id: integer;
    status: boolean;
end;

var
  Form1: TForm1;
  ListaPrincipal, ListaSeparada, ListaParticionada: TStringList;

implementation

{$R *.dfm}

procedure TForm1.Button7Click(Sender: TObject);
var Lista:TStringList;
    i,soma:integer;
begin
  i:=0;
  soma:=0;

  Lista:=TStringList.Create;

  Lista.Add('1');
  Lista.Add('2');
  Lista.Add('3');

  while i<=Lista.Count-1 do
  begin
    soma:=soma+1;
    if Lista[i] = '1' then
    begin
      ShowMessage(IntToStr(soma));
    end else if Lista[i] = '2' then
    begin
      ShowMessage(IntToStr(soma));
    end else if Lista[i] = '3' then
    begin
      ShowMessage(IntToStr(soma));
    end;
    i:=i+1;
  end;

  Lista.Free;
end;

{ Criar uma vari�vel soma e a cada intera��o ela � incrementada,
  e com isso utilizamos a lista/Array/Record para mostrar
  qual o conte�do desta vari�vel a cada intera��o }
procedure TForm1.Button1Click(Sender: TObject);
var Lista: TStringList;
    i, soma: Integer;
begin
  Lista:= TStringList.Create;     // Criar lista
  i:=0;     // Inicializa a vari�vel contadora
  soma:=0;

  Lista.Add('1');     // Adiciona itens na lista
  Lista.Add('2');
  Lista.Add('3');
  Lista.Add('4');
  Lista.Add('5');

  while i<= Lista.Count -1 do begin
    soma:= soma + 1;  // incrementa a vari�vel somadora

    if(Lista[i] = '1')then begin
      ShowMessage(IntToStr(soma));
    end else if(Lista[i] = '2')then begin
      ShowMessage(IntToStr(soma));
    end else if(Lista[i] = '3')then begin
      ShowMessage(IntToStr(soma));
    end else if(Lista[i] = '4')then begin
      ShowMessage(IntToStr(soma));
    end else if(Lista[i] = '5')then begin
      ShowMessage(IntToStr(soma));
    end else begin
      ShowMessage('Nenhuma das condi��es acima foi atingida!');
    end;

    i:= i + 1;    // Incrementa a vari�vel contadora
  end;
  Lista.Free;     // Libera lista da mem�ria
end;

procedure TForm1.Button2Click(Sender: TObject);
var ArraySoma: Array[0..10] of String;
    i, soma: Integer;
begin
  i:=1;
  soma:=0;
  
  while i<=10 do begin      // Adiciona dinamicamente os itens no array
    ArraySoma[i]:= IntToStr(i);
    i:=i+1;
  end;

  i:=1;     // Zera o contador

  while i<Length(ArraySoma) do begin
    soma:= soma + 1;

    if(ArraySoma[i] = '1')then begin
      ShowMessage(IntToStr(soma));
    end else if(ArraySoma[i] = '2')then begin
      ShowMessage(IntToStr(soma));
    end else if(ArraySoma[i] = '3')then begin
      ShowMessage(IntToStr(soma));
    end else if(ArraySoma[i] = '4')then begin
      ShowMessage(IntToStr(soma));
    end else if(ArraySoma[i] = '5')then begin
      ShowMessage(IntToStr(soma));
    end else if(ArraySoma[i] = '6')then begin
      ShowMessage(IntToStr(soma));
    end else if(ArraySoma[i] = '7')then begin
      ShowMessage(IntToStr(soma));
    end else if(ArraySoma[i] = '8')then begin
      ShowMessage(IntToStr(soma));
    end else if(ArraySoma[i] = '9')then begin
      ShowMessage(IntToStr(soma));
    end else if(ArraySoma[i] = '10')then begin
      ShowMessage(IntToStr(soma));
    end else begin
      ShowMessage('Nenhuma das condi��es foi atingida!');
    end;

    i:= i + 1;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var Somar: Array[0..6] of TSoma;
    i, soma: Integer;
begin
  i:=0;
  soma:=0;

  Somar[0].numeros:= 1;
  Somar[1].numeros:= 2;
  Somar[2].numeros:= 3;
  Somar[3].numeros:= 4;
  Somar[4].numeros:= 5;
  Somar[5].numeros:= 6;
  Somar[6].numeros:= 7;

  while i<Length(Somar) do begin
    soma:= soma + 1;

    if(Somar[i].numeros = 1)then begin
      ShowMessage(IntToStr(soma));
    end else if(Somar[i].numeros = 2)then begin
      ShowMessage(IntToStr(soma));
    end else if(Somar[i].numeros = 3)then begin
      ShowMessage(IntToStr(soma));
    end else if(Somar[i].numeros = 4)then begin
      ShowMessage(IntToStr(soma));
    end else if(Somar[i].numeros = 5)then begin
      ShowMessage(IntToStr(soma));
    end else if(Somar[i].numeros = 6)then begin
      ShowMessage(IntToStr(soma));
    end else if(Somar[i].numeros = 7)then begin
      ShowMessage(IntToStr(soma));
    end else begin
      ShowMessage('Nenhuma das condi��es foi atingida!');
    end;

    i:= i + 1;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var Lista: TStringList;
    i, Soma: Integer;
begin
  Lista:= TStringList.Create;
  Soma:=0;

  for i:=0 to 9 do begin     // Adicionando dinamicamente os itens na lista
    Lista.Add(IntToStr(i));
  end;

  for i:=0 to Lista.Count -1 do begin
    Soma:= Soma + 1;

    if(Lista[i] = IntToStr(i))then begin
      ShowMessage('Posi��o i: ' + IntToStr(i) + #13
                + 'Valor Soma: ' + IntToStr(Soma));
    end else begin
      ShowMessage('Nenhuma das condi��es foi atingida!');
    end;
  end;

  Lista.Free;
end;

procedure TForm1.Button5Click(Sender: TObject);
var Numeros: Array[0..5] of Integer;
    i, soma: Integer;
begin
  soma:=0;
  
  Numeros[0]:=1;
  Numeros[1]:=2;
  Numeros[2]:=3;
  Numeros[3]:=4;
  Numeros[4]:=5;
  Numeros[5]:=6;

  for i:=0 to Length(Numeros) -1 do begin
    soma:= soma + 1;

    if(Numeros[i] = 1)then begin
      ShowMessage(IntToStr(soma));
    end else if(Numeros[i] = 2)then begin
      ShowMessage(IntToStr(soma));
    end else if(Numeros[i] = 3)then begin
      ShowMessage(IntToStr(soma));
    end else if(Numeros[i] = 4)then begin
      ShowMessage(IntToStr(soma));
    end else if(Numeros[i] = 5)then begin
      ShowMessage(IntToStr(soma));
    end else if(Numeros[i] = 6)then begin
      ShowMessage(IntToStr(soma));
    end else begin
      ShowMessage('Nenhuma das condi��es foi atingida!');
    end;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var RecSoma: Array[0..5] of TSoma;
    i, soma: Integer;
begin
  soma:=0;

  RecSoma[0].numeros:=1;
  RecSoma[1].numeros:=2;
  RecSoma[2].numeros:=3;
  RecSoma[3].numeros:=4;
  RecSoma[4].numeros:=5;
  RecSoma[5].numeros:=6;

  for i:=0 to Length(RecSoma) -1 do begin
    soma:= soma +1;

    if(RecSoma[i].numeros = 1)then begin
      ShowMessage(IntToStr(soma));
    end else if(RecSoma[i].numeros = 2)then begin
      ShowMessage(IntToStr(soma));
    end else if(RecSoma[i].numeros = 3)then begin
      ShowMessage(IntToStr(soma));
    end else if(RecSoma[i].numeros = 4)then begin
      ShowMessage(IntToStr(soma));
    end else if(RecSoma[i].numeros = 5)then begin
      ShowMessage(IntToStr(soma));
    end else if(RecSoma[i].numeros = 6)then begin
      ShowMessage(IntToStr(soma));
    end else begin
      ShowMessage('Nenhuma das condi��es foi atingida!');
    end;
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var i, j: Integer;
begin
  ListaPrincipal:= TStringList.Create;
  i:=0;
  j:=0;

  if(Edt_val1.Text <> '') and (Edt_val2.Text <> '') and (Edt_val3.Text <> '')then begin

    ListaPrincipal.Add(Edt_val1.Text+';'+Edt_val2.Text+';'+Edt_val3.Text);
    ListaPrincipal.Add('morango;abacaxi;banana;kiwi');
    ListaPrincipal.Add('sorvete;lasanha;pipoca;cerveja;batata');

    while i<ListaPrincipal.Count do begin
      StrToLista(ListaSeparada,ListaPrincipal[i],';',true);
      j:=0;  // Zerar o contador sempre que mudar a posi��o da lista principal
      while j<ListaSeparada.Count do begin
        ShowMessage(ListaSeparada[j]);
        j:= j + 1;
      end;
      i:=i+1;
    end;
  end else begin
    ShowMessage('Preencha os campos acima!');
  end;
  ListaPrincipal.Free;
end;

{ No clique de um bot�o crie uma lista que recebe a seguinte string
  'Bolo^Chocolate;Nescau^Achocolatado;Chinelo^Havaianas' delimite-a com o ";"

  Mostre cada mensagem de acordo com sua posi��o
  Bolo^Chocolate;
  Nescau^Achocolatado;
  Chinelo^Havaianas

  Em um For a quebre-a novamente agora pelo delimitador "^".

  E a cada intera��o do For mostre a mensagem de acordo com sua posi��o
  Bolo
  Chocolate
  Nescau
  Achocolatado
  Chinelo
  Havaianas }
procedure TForm1.Button9Click(Sender: TObject);
var i, j, l: Integer;
begin
  ListaPrincipal:= TStringList.Create;
  ListaSeparada:= TStringList.Create;
  ListaParticionada:= TStringList.Create;
  i:=0;


  ListaPrincipal.Add('Bolo^Chocolate;Nescau^Achocolatado;Chinelo^Havaianas');

  while i<ListaPrincipal.Count do begin
    StrToLista(ListaParticionada,ListaPrincipal[i],';',true);
    j:=0;
    while j<ListaParticionada.Count do begin
      ShowMessage('Removendo o pipe ";": ' + #13
                + 'Posi��o: ' + IntToStr(j) + #13
                + ListaParticionada[j]);
      StrToLista(ListaSeparada,ListaParticionada[j],'^',true);
      l:=0;
      while l<ListaSeparada.Count do begin
        ShowMessage('Removendo o pipe "^": ' + #13
                  + 'Posi��o: ' + IntToStr(l) + #13
                  + ListaSeparada[l]);
        l:=l+1;
      end;
      j:=j+1;
    end;
    i:=i+1;
  end;

  ListaPrincipal.Free;
  ListaSeparada.Free;
  ListaParticionada.Free;
end;

procedure TForm1.Button10Click(Sender: TObject);
var i, soma: Integer;
begin
  ListaPrincipal:= TStringList.Create;
  i:=1;
  soma:=1;

  while i<20 do begin
    soma:= (soma + i)* 2;
    if soma<100 then begin
      ListaPrincipal.Add(IntToStr(soma));
      ShowMessage('   Situa��o da lista:    ' + #13
                + ListaPrincipal.Text);
    end else begin
      ShowMessage('A soma ultrapassou 100.' + #13#13
                + 'A lista finalizou com: ' + #13
                + ListaPrincipal.Text);
      Break;
    end;
    i:=i+1;
  end;
  ListaPrincipal.Free;
end;

procedure TForm1.Button11Click(Sender: TObject);
var i, j: Integer;
begin
  ListaPrincipal:= TStringList.Create;
  ListaSeparada:= TStringList.Create;
  ListaParticionada:= TStringList.Create;

  ListaPrincipal.Add('1;23;45;45;657;22;22;22;22;098;098;098;567;6;6;98;');
  ListaPrincipal.Add('17;46;45;45;666;54;22;33;45;8;45;098;666;7;333;8;');

  ListaParticionada.Sorted:= true;
  ListaParticionada.Duplicates:= dupIgnore;

  i:=0;
  while i<ListaPrincipal.Count do begin
    ShowMessage('Lista Principal: ' + #13#13
              + ListaPrincipal[i]);
    StrToLista(ListaParticionada,ListaPrincipal[i],';',true);
    
    j:=0;
    while j<ListaParticionada.Count do begin
      ShowMessage('Posi��o: ' + IntToStr(j) + #13
                + 'C�lula: ' + ListaParticionada[j]);

      if ListaParticionada[j] = '098' then begin
        ShowMessage('Chegou no 098. Comando Continue acionado!!');
        j:= j +1;  // Se nao incrementar o contador ele fica preso na mesma posi��o do loop por causa do Continue
        Continue;  // ignora todas as instru��es abaixo dele
        
        ShowMessage('C�lula: ' + ListaParticionada[j]);
      end;
      j:= j +1;
    end;
    
    ShowMessage('Removendo os Duplicados: ' + #13#13
                + ListaParticionada.Text);
    i:=i+1;
  end;

  ListaPrincipal.Free;
  ListaParticionada.Free;
  ListaSeparada.Free;
end;

{ 1 - Fazer um Array estatico simples que armazena 5 frutas (tipo strings),
      alimentar o mesmo com dados e depois exibir o dado; }
procedure TForm1.Button12Click(Sender: TObject);
var Frutas: Array[0..5] of String;
    i: Integer;
begin
  i:=0;
  while i<Length(Frutas) do begin
    if i = 0 then begin
      Frutas[i]:= 'Banana';
    end else if i = 1 then begin
      Frutas[i]:= 'Ma��';
    end else if i = 2 then begin
      Frutas[i]:= 'Morango';
    end else if i = 3 then begin
      Frutas[i]:= 'Kiwi';
    end else if i = 4 then begin
      Frutas[i]:= 'Laranja';
    end else if i = 5 then begin
      Frutas[i]:= 'Abacaxi';
    end else begin
      ShowMessage('Fora das Condi��es!');
    end;
    i:=i+1;
  end;
  
  i:=0;
  while i<Length(Frutas) do begin
    ShowMessage(Frutas[i]);
    i:=i+1;
  end;
end;

{ 2 - Fazer um Array estatico simples que armazena 3 notas (tipo double),
      alimentar e apresentar atrav�s de mensagem o dado; }
procedure TForm1.Button13Click(Sender: TObject);
var Notas: Array[0..3] of Double;
    i: Integer;
begin
  i:=0;

  while i<Length(Notas) do begin
    if i = 0 then begin
      Notas[i]:= 45.9;
    end else if i = 1 then begin
      Notas[i]:= 84.9;
    end else if i = 2 then begin
      Notas[i]:= 75.9;
    end else if i = 3 then begin
      Notas[i]:= 64.8;
    end else begin
      ShowMessage('Nenhuma das condi��es forama atingidas!');
    end;
    i:=i+1;
  end;
  i:=0;
  while i<Length(Notas) do begin
    ShowMessage('Posi��o: ' + IntToStr(i) + #13
              + 'Nota: ' + FloatToStr(Notas[i]));
    i:=i+1;
  end;
end;

{ 3 - Fazer um Array din�mico simples que armazena 3 idades (tipo integer)
      alimentar com dados e depois exibir os dados; }
procedure TForm1.Button14Click(Sender: TObject);
var Idades: Array of Integer;
    i: Integer;
begin
  SetLength(Idades, 3);
  i:=0;

  while i<Length(Idades) do begin
    if i = 0 then begin
      Idades[i]:= 21;
    end else if i = 1 then begin
      Idades[i]:= 45;
    end else if i = 2 then begin
      Idades[i]:= 61;
    end;

    if Idades[i] > 50 then begin
      ShowMessage('A idade � maior que 50!');
      Break;
    end else begin
      ShowMessage(IntToStr(Idades[i]));
    end;

    i:=i+1;
  end;
end;

{ 4 - Fazer um array estatico matriz que armazena 3x3 dados sendo cada
      coluna com linha de 2 posi��es , alimentar todo
      o array manulamente e depois exibir esses dados. }
procedure TForm1.Button15Click(Sender: TObject);
var Matriz: Array[0..3,0..3] of Integer;
    i, j: Integer;
begin
  i:=0;


  While i<Length(Matriz) do begin
    j:=0;
    while j<High(Matriz[i]) do begin
        Matriz[i][j]:= i+j;
        ShowMessage('Matriz['+IntToStr(i)+']['+IntToStr(j)+']: ' + IntToStr(Matriz[i][j]));
      j:=j+1;
    end;
    i:=i+1;
  end;
end;

procedure TForm1.Button16Click(Sender: TObject);
var Empresa: Array[0..1] of TEmpresa;
    i: Integer;
begin
  i:=0;
  while i<High(Empresa) do begin

    Empresa[i].status:= StrToBool(InputBox('Empresa','Status(true/false)',''));
    if Empresa[i].status = false then begin
      ShowMessage('Empresas desativadas n�o podem ser cadastradas!');
      Break;
    end;

    Empresa[i].nome:= InputBox('Empresa','Nome','');
    Empresa[i].cnpj:= StrToFloat(InputBox('Empresa','CNPJ',''));
    Empresa[i].numero:= StrToInt(InputBox('Empresa','N�mero',''));
    Empresa[i].contato:= StrToInt(InputBox('Empresa','Telefone',''));
    Empresa[i].logradouro:= InputBox('Empresa','Endere�o','');

    ShowMessage('Empresa: ' + #13#13
              + 'Nome: ' + Empresa[i].nome + #13
              + 'CNPJ: ' + FloatToStr(Empresa[i].cnpj) + #13
              + 'Numero: ' + IntToStr(Empresa[i].numero) + #13
              + 'Contato: ' + IntToStr(Empresa[i].contato) + #13
              + 'Logradouro: ' + Empresa[i].logradouro);
    i:=i+1;
  end;
end;

procedure TForm1.Button17Click(Sender: TObject);
var Fornecedor: Array[0..1] of TFornecedor;
    i: Integer;
begin
  i:=0;
  while i<High(Fornecedor) do begin
    Fornecedor[i].status:= StrToBool(InputBox('Fornecedor','Status(true/false)',''));
    Fornecedor[i].nome:= InputBox('Fornecedor','Nome','');
    Fornecedor[i].cnpj:= StrToFloat(InputBox('Fornecedor','CNPJ',''));
    Fornecedor[i].empresa:= InputBox('Fornecedor','Empresa','');
    Fornecedor[i].codigo_id:= StrToInt(InputBox('Fonecedor','Codigo(ID)',''));

    ShowMessage('Fornecedor: ' + #13#13
              + 'Nome: ' + Fornecedor[i].nome + #13
              + 'CNPJ: ' + FloatToStr(Fornecedor[i].cnpj) + #13
              + 'Empresa: ' + Fornecedor[i].empresa + #13
              + 'C�digo(ID): ' + IntToStr(Fornecedor[i].codigo_id));
    i:=i+1;
  end;
end;

end.
