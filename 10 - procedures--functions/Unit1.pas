unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    btnAluno1: TButton;
    btnAluno2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnAluno1Click(Sender: TObject);
    procedure btnAluno2Click(Sender: TObject);
  private
    { Private declarations }
    function CalculaMedia(nota1, nota2, nota3: Double):Double;

    procedure CarregaAluno(nome:String;nota1,nota2,nota3:Double);
    function CalculaNotaAluno:Boolean;
  public
    { Public declarations }
  end;

type
  umAluno = record
    nome: String;
    notas: Array[0..2] of Double;
    mediaFinal: Double;
    isAprovado: Boolean;
end;

var
  Form1: TForm1;
  dadosAluno: umAluno;

implementation

{$R *.dfm}  



procedure TForm1.Button2Click(Sender: TObject);
var texto:string;
    num1, numero2:integer;

   function CalculaMdeia(pNumero:integer):integer;
   begin
     result:=pNumero*2;
   end;

begin
   num1:=10;
   numero2:=CalculaMdeia(num1);
   showmessage(inttostr(num1));   
end;

procedure TForm1.Button1Click(Sender: TObject);
var a:string;

  procedure teste;
  begin
    a:='sdfsf';
    showmessage('teste');
  end;

begin
end;

function TForm1.CalculaMedia(nota1, nota2, nota3: Double): Double;
var media: Double;
begin
  media:= (nota1+nota2+nota3)/3;
  Result:= media;
end;

procedure TForm1.Button3Click(Sender: TObject);
var notas: Array[0..2] of Double;
begin
  notas[0]:=80;
  notas[1]:=90;
  notas[2]:=80;

  ShowMessage(FloatToStr(CalculaMedia(notas[0],notas[1],notas[2])));
end;






procedure TForm1.btnAluno1Click(Sender: TObject);
begin
  CarregaAluno('Carlos',60,50,40);

  CalculaNotaAluno;

  Memo1.Lines.Add('');
  Memo1.Lines.Add('Nome: ' + dadosAluno.nome);
  Memo1.Lines.Add('Media Final: ' + FloatToStr(dadosAluno.mediaFinal));

  if not(dadosAluno.isAprovado)then begin
    Memo1.Lines.Add('Situa��o: Reprovado!');
  end else begin
    Memo1.Lines.Add('Situa��o: Aprovado!');
  end;
end;

procedure TForm1.CarregaAluno(nome: String; nota1, nota2, nota3: Double);
begin
 { with dadosAluno do begin
    nome:=nome;
    nota1:=nota1
  end  }
  dadosAluno.nome:=nome;
  dadosAluno.notas[0]:=nota1;
  dadosAluno.notas[1]:=nota2;
  dadosAluno.notas[2]:=nota3;
end;

function TForm1.CalculaNotaAluno: Boolean;
begin
  dadosAluno.mediaFinal:= (dadosAluno.notas[0]+dadosAluno.notas[1]+dadosAluno.notas[2])/3;

  if dadosAluno.mediaFinal > 50 then begin
    Result:= True;
    dadosAluno.isAprovado:=true;
  end else if dadosAluno.mediaFinal <= 50 then begin
    Result:= False;
    dadosAluno.isAprovado:=true;
  end;
end;

procedure TForm1.btnAluno2Click(Sender: TObject);
begin
  CarregaAluno('Janderson',80,70,60);

  CalculaNotaAluno;

  Memo1.Lines.Add('');
  Memo1.Lines.Add('Nome: ' + dadosAluno.nome);
  Memo1.Lines.Add('Media Final: ' + FloatToStr(dadosAluno.mediaFinal));

  if not(dadosAluno.isAprovado)then begin
    Memo1.Lines.Add('Situa��o: Reprovado!');
  end else begin
    Memo1.Lines.Add('Situa��o: Aprovado!');
  end;
end;

end.
