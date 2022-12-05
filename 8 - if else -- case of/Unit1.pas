unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox2: TGroupBox;
    Button1: TButton;
    Edt_Case: TLabeledEdit;
    GroupBox5: TGroupBox;
    Button2: TButton;
    GroupBox6: TGroupBox;
    Memo: TMemo;
    Ex1_nome: TLabeledEdit;
    Ex1_Pontuacao: TLabeledEdit;
    Button3: TButton;
    Ex2_Idade: TLabeledEdit;
    Button4: TButton;
    Button5: TButton;
    edtConta: TLabeledEdit;
    EdtAltura: TLabeledEdit;
    EdtPeso: TLabeledEdit;
    GroupBox1: TGroupBox;
    Button6: TButton;
    idade: TLabeledEdit;
    Button7: TButton;
    GroupBox3: TGroupBox;
    Button8: TButton;
    EdtLado1: TLabeledEdit;
    EdtLado3: TLabeledEdit;
    EdtLado2: TLabeledEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Escreva	um	programa	para	ler	o	n�mero	de	lados	de	um	pol�gono	regular
  e	a	medida	do	lado	(em	cm).	Calcular	e	imprimir	o	seguinte:
    - Se	o	n�mero	de	lados	for	igual	a	3	escrever	TRI�NGULO	e	o	valor	da
      �rea
    - Se	o	n�mero	de	lados	for	igual	a	4	escrever	QUADRADO	e	o	valor	da
      sua	�rea.
    - Se	o	n�mero	de	lados	for	igual	a	5	escrever	PENT�GONO. }
procedure TForm1.Button1Click(Sender: TObject);
var area, perimetro: Double;
    lados: Integer;
begin
  lados:= StrToInt(Edt_Case.Text);
  Case lados of
    3: begin
         area:= (lados*lados)/2;
         perimetro:= lados*3;
         ShowMessage('Tri�ngulo ' + #13#13
                   + 'Area: ' + FloatToStr(area) + #13
                   + 'Perimetro: ' + FloatToStr(perimetro));
       end;
    4: Begin
         area:= lados * lados;
         perimetro:= lados * 4;
         ShowMessage('Quadrado: ' + #13#13
                   + 'Area: ' + FloatToStr(area) + #13
                   + 'Perimetro: ' + FloatToStr(perimetro));
       end;
    5: begin
         area:= (sqrt(5 * (5 + 2 * (sqrt(5)))) * lados * lados) / 4;
         perimetro:= lados*5;
         ShowMessage('Pent�gono: ' + #13#13
                   + 'Area: ' + FloatToStr(area) + #13
                   + 'Perimetro: ' + FloatToStr(perimetro));
       end;
    else ShowMessage('O n�mero de lados n�o � v�lido!');
  end;
end;

{ colocar 2 edits (nome, pontua��o), apresentar num memo nome e classifica��o.
  (a classifica��o ser� de acordo com a pontua��o: de 0 at� 4 - terceiro lugar,
  de 4 ate 7 - segundo lugar, de 7 ate 10 primeiro lugar. }
procedure TForm1.Button2Click(Sender: TObject);
var nome: String;
    pontuacao: Double;
begin
  nome:= Ex1_nome.Text;
  pontuacao:= StrToFloat(Ex1_Pontuacao.Text);

  if(pontuacao >=0) and (pontuacao <=4) then begin
    Memo.Lines.Add('Nome: ' + nome);
    Memo.Lines.Add('Classifica��o: Terceiro lugar');
    Memo.Lines.Add('Pontos: ' + FloatToStr(pontuacao));
  end else if(pontuacao>=4) and (pontuacao<=7) then begin
    Memo.Lines.Add('Nome: ' + nome);
    Memo.Lines.Add('Pontua��o: Segundo Lugar');
    Memo.Lines.Add('Pontos: ' + FloatToStr(pontuacao));
  end else if(pontuacao>=7) and (pontuacao<=10)then begin
    Memo.Lines.Add('Nome: ' + nome);
    Memo.Lines.Add('Pontua��o: Primeiro Lugar');
    Memo.Lines.Add('Pontos: ' + FloatToStr(pontuacao));
  end else begin
    ShowMessage('Nenhuma das classifica��es foi atingida');
  end;
end;

{ Elabore um programa que, dada a idade de um nadador, classifique-o em uma das seguintes categorias:
    infantil A = 5 - 7 anos
    infantil B = 8 - 10 anos
    juvenil A = 11 - 13 anos
    juvenil B = 14 - 17 anos
    s�nior = maiores de 17 anos  }
procedure TForm1.Button3Click(Sender: TObject);
var idade: Integer;
begin
  Memo.Lines.Clear;

  idade:= StrToInt(Ex2_Idade.Text);

  if(idade>=5) and (idade<=7)then begin
    Memo.Lines.Add('Idade: ' + IntToStr(idade));
    Memo.Lines.Add('Classifica��o: Infantil "A"');
  end else if(idade>=8) and (idade<=10) then begin
    Memo.Lines.Add('Idade: ' + IntToStr(idade));
    Memo.Lines.Add('Classifica��o: Infantil B');
  end else if(idade>=11) and (idade<=13) then begin
    Memo.Lines.Add('Idade: ' + IntToStr(idade));
    Memo.Lines.Add('Classifica��o: Juvenil A');
  end else if(idade>=14) and (idade<=17) then begin
    Memo.Lines.Add('Idade: ' + IntToStr(idade));
    Memo.Lines.Add('Classifica��o: Juvenil B');
  end else if(idade>17) then begin
    Memo.Lines.Add('Idade: ' + IntToStr(idade));
    Memo.Lines.Add('Classifica��o: S�nior');
  end else begin
    ShowMessage('Nenhuma das condi��es foram atingidas!');
  end;
end;

{Calculando peso ideal com procedure ou function
  Baixo peso muito grave = abaixo de 16 kg/m�
  Baixo peso grave = entre 16 e 16,99 kg/m�.
  Baixo peso = entre 17 e 18,49 kg/m�.
  Peso normal = entre 18,50 e 24,99 kg/m�
  Sobrepeso = entre 25 e 29,99 kg/m�.
  Obesidade grau I = entre 30 e 34,99 kg/m�.
  Obesidade grau II = entre 35 e 39,99 kg/m�.
  Obesidade grau III (obesidade m�rbida) = maior que 40 kg/m� }
procedure TForm1.Button4Click(Sender: TObject);
var calc, resultado: Double;
begin
  resultado:=0;
  calc:=0;

  calc:= StrToFloat(EdtAltura.Text) * StrToFloat(EdtAltura.Text);
  resultado:= StrToFloat(EdtPeso.Text)/calc;

  if(resultado < 16)then begin
    ShowMessage('Baixo peso muito grave!');
  end else if (resultado>=16) and (resultado<=16.99) then begin
    ShowMessage('Baixo peso grave');
  end else if (resultado>=16) and (resultado<=18.46) then begin
    ShowMessage('Baixo peso');
  end else if (resultado>=18.50) and (resultado<=24.99) then begin
    ShowMessage('Peso Normal');
  end else if (resultado>=25) and (resultado<=29.99) then begin
    ShowMessage('Sobrepeso');
  end else if (resultado>=30) and (resultado<=34.99) then begin
    ShowMessage('Obesidade grau I');
  end else if (resultado>=35) and (resultado<=39.99) then begin
    ShowMessage('Obesidade grau II');
  end else if (resultado>=40) then begin
    ShowMessage('Obesidade grau III(Obesidade M�rbida)');
  end;

end;


{
No seu formulario adicione 3 bot�es e 1 memo, com o case of vamos
validar o n�mero do bot�o que o usu�rio clicou.

1 - Adi��o
2 - Subtra��o
3 - Divis�o
Caso o usu�rio digite um n�mero diferente mostre uma
mensagem para que informe uma op��o v�lida

dentro de cada ind�ce ser� processado 3 linhas, a v�riavel recebendo os
valores fixos no c�digo, a linha que vai realizar a opera��o
matem�tica e outra linha adicionado a informa��o no memo.
}
procedure TForm1.Button5Click(Sender: TObject);
var opcao: Integer;
    conta: Double;
begin
  opcao:= StrToInt(edtConta.Text);

  Case opcao of
      1:begin
          conta:= 78+10;
          Memo.Lines.Add('Opera��o: Adi��o');
          Memo.Lines.Add('Resultado: ' + FloatToStr(conta));
        end;
      2:begin
          conta:=100-50;
          Memo.Lines.Add('Opera��o: Subtra��o');
          Memo.Lines.Add('Resultado: ' + FloatToStr(conta));
        end;
      3:begin
          conta:=10/2;
          Memo.Lines.Add('Opera��o: Divis�o');
          Memo.Lines.Add('Resultado: ' + FloatToStr(conta));
        end;
      else ShowMessage('Op��o Inv�lida');
  end;
end;

{ Fa�a um programa que solicita a idade de uma pessoa e
  verifica se ela pode votar (idade>=16).}
procedure TForm1.Button6Click(Sender: TObject);
var idad: Integer;
begin
  Memo.Lines.Clear;

  Memo.Lines.Add('Posso votar?');

  idad:= StrToInt(idade.Text);
  if(idad<16)then begin
    Memo.Lines.Add('Idade: ' + IntToStr(idad));
    Memo.Lines.Add('N�o pode votar');
  end else if(idad>=16) and (idad<=70)then begin
    Memo.Lines.Add('Idade: ' + IntToStr(idad));
    Memo.Lines.Add('Pode Votar');
  end else if(idad>70)then begin
    Memo.Lines.Add('Idade: ' + IntToStr(idad));
    Memo.Lines.Add('O voto � opcional');
  end else begin
    ShowMessage('Comando inv�lido');
  end;
end;

{ Fa�a um programa que dada a idade de uma pessoa,
  retorna uma das seguintes mensagens: �N�o pode
  nem votar e nem dirigir�, �Pode votar,
  mas n�o pode dirigir�, �Pode votar e pode dirigir�}
procedure TForm1.Button7Click(Sender: TObject);
var i, idades: Integer;
    arquivo: TextFile;
    texto, caminho: string;
begin
  idades:= StrToInt(idade.Text);
  
  //arquivo
  caminho:='C:\ProjetosERP\8 - if else -- case of\arquivos\votarDirigir.txt';
  AssignFile(arquivo, caminho);
  if not FileExists(caminho) then begin
    ReWrite(arquivo);
    Showmessage('Arquivo Criado');
  end;
  Append(arquivo);

  if(idades<16)then begin
    Memo.Lines.Add('N�o pode votar');
    Memo.Lines.Add('N�o pode dirigir');
  end else if(idades>=16) and (idades<18)then begin
    Memo.Lines.Add('Pode votar');
    Memo.Lines.Add('N�o pode dirigir');
  end else if(idades>=18) and (idades<=70)then begin
    Memo.Lines.Add('O voto � obrigat�rio');
    Memo.Lines.Add('Pode dirigir');
  end else if(idades>70)then begin
    Memo.Lines.Add('O voto � opcional');
    Memo.Lines.Add('Pode dirigir');
  end else begin
    ShowMessage('Condi��o inv�lida');
  end;

  for i:=0 to Memo.Lines.Count  do begin
    texto:= Memo.Lines.Strings[i];

    WriteLn(arquivo, texto);
  end;

  CloseFile(arquivo);
end;

{ Dado um triangulo tais que a=b=c, o tri�ngulo formado
  com estes segmentos � chamado de eq�il�tero. Se a=b%c ou a%b=c ou b%a=c,
  o tri�ngulo � chamado is�sceles e se a%b%c o tri�ngulo � chamado escaleno.
  Altere o programa do exerc�cio 6 para, al�m de verificar se os
  segmentospodem formar um tri�ngulo, classifique o tri�ngulo.
  Calcule a area e o perimetro de cada um e imprima as informa��es em um memo}
procedure TForm1.Button8Click(Sender: TObject);
var lado1, lado2, lado3: Double;
    area, perimetro, altura: Double;
    arquivo: TextFile;
    i: integer;
    caminho: String;
begin
  Memo.Lines.Clear;
  altura:=0;
  i:=0;

  //arquivo
  caminho:='C:\ProjetosERP\8 - if else -- case of\arquivos\triangulos.txt';
  AssignFile(arquivo, caminho);
  if not FileExists(caminho) then begin
    ReWrite(arquivo);
    Showmessage('Arquivo Criado');
  end;
  Append(arquivo);

  // calculo triangulos
  lado1:= StrToFloat(EdtLado1.Text);
  lado2:= StrToFloat(EdtLado2.Text);
  lado3:= StrToFloat(EdtLado3.Text);

  if(lado1 = lado2) and (lado1 = lado3) and (lado2 = lado3)then begin
    perimetro:= lado1 * lado2 * lado3;
    area:= (lado1 * lado2)/2;

    Memo.Lines.Add('O tri�ngulo � equilatero');
    Memo.Lines.Add('Perimetro: '  + FloatToStr(perimetro));
    Memo.Lines.Add('Area: ' + FloatToStr(area));

  end else if ((lado1 = lado2) and (lado1 <> lado3) and not(lado2 = lado3)) or
              ((lado2 = lado3) and (lado1 <> lado2) and not(lado1 = lado3)) or
              ((lado3 = lado1) and (lado1 <> lado2) and not(lado2 = lado3)) then begin
    perimetro:= lado1 + lado2+lado3;
    area:= (lado1 * lado2) + lado3;

    Memo.Lines.Add('O triangulo e is�sceles');
    Memo.Lines.Add('Perimetro: '  + FloatToStr(perimetro));
    Memo.Lines.Add('Area: ' + FloatToStr(area));

  end else if not(lado1 = lado2) and not(lado2 = lado3) and not(lado3 = lado1)then begin
    perimetro:= lado1 + lado2 + lado3;
    area:= (lado1 * lado2)/2;

    Memo.Lines.Add('O triangulo � escaleno');
    Memo.Lines.Add('Perimetro: ' + FloatToStr(perimetro));
    Memo.Lines.Add('Area: ' + FloatToStr(area));
    
  end else begin
    ShowMessage('Erro');
  end;

  // gravando as linhas do memo no arquivo
  for i:=0 to Memo.Lines.Count do begin
    Writeln(arquivo, Memo.Lines.Strings[i]);
  end;
  CloseFile(arquivo);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
     showmessage(OpenDialog1.FileName);
  end;
end;

end.
