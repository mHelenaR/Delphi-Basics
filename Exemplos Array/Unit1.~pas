unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 umArray  : Array[0..2] of string;
 multiArray : Array[0..2, 0..2] of string;
begin

 //umArray (tripa de galinha)
 umArray[0]:='texto qualquer 1';
 umArray[1]:='texto qualquer 2';

 ShowMessage('Tamanho Total: '+IntToStr(Length(umArray)));
 ShowMessage('Inicio do Indice: '+IntToStr(Low(umArray)));
 ShowMessage('Final do Indice: '+IntToStr(High(umArray)));

 ShowMessage('Conteudo do Indice: '+umArray[0]);




 //multiArray (Matriz)
 multiArray[0][0]:='texto qualquer 1';
 multiArray[0][1]:='texto qualquer 2';
 ShowMessage('Conteudo da coluna 0 x 0: '+multiArray[0][0]);
 ShowMessage('Conteudo da coluna 0 x 1: '+multiArray[0][1]);

end;

procedure TForm1.Button2Click(Sender: TObject);
var
 umArray : array of string;
 multiArray : array of array of string;
begin
 //Example unidimensional (tripa de galinha):
 SetLength(umArray,2);
 umArray[0] := 'array unidimensional no indice 0';
 ShowMessage('Tamanho Total: '+inttostr(Length(umArray)));
 ShowMessage('Inicio do Indice: '+inttostr(Low(umArray)));
 ShowMessage('Final do Indice: '+inttostr(High(umArray)));
 ShowMessage('Conteudo do Indice: '+umArray[0]);






 //Example multidimensional (Matriz):
 SetLength(multiArray,2,2);
 multiArray[0][0]:= 'array multidimensional indice 0.0';
 ShowMessage('Tamanho Total: '+inttostr(Length(multiArray)));
 ShowMessage('Inicio do Indice: '+inttostr(Low(multiArray)));
 ShowMessage('Final do Indice: '+inttostr(High(multiArray)));
 ShowMessage('Conteudo do Indice: '+multiArray[0][0]);

end;

end.
