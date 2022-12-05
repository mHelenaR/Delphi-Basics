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
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
var resultado: Integer;
begin
  resultado:= 1+1;

  if resultado = 2 then begin
    ShowMessage('O resultado é 2');
  end else begin
    ShowMessage('O resultado não é 2');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var resultado: Integer;
begin
  resultado:= 10;

  if(resultado>=5) and (resultado<=10) then begin
    ShowMessage('O resultado esta entre 5 e 10');
  end else if (resultado>=1) and (resultado <=5) then begin
    ShowMessage('O resultado esta entre 1 e 5');
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var resultado: Integer;
begin
  resultado:= 50;

  if(resultado = 10) or (resultado = 20) then begin
    ShowMessage('O resultado é: '+IntToStr(resultado));
  end else if (resultado = 40) or (resultado = 50) then begin
    ShowMessage('O resultado é: '+IntToStr(resultado));
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var resultado: Integer;
begin
  resultado:= 10;

  if not(resultado = 10) then begin
    ShowMessage('O resultado nao é igual a 10');
  end else begin
    ShowMessage('O resultado é: ' + IntToStr(resultado));
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var resultado: Integer;
begin
  resultado:=3;

  case resultado of
    1: ShowMessage('é igual a 1');
    2: ShowMessage('é igual a 2');
    3: begin
         ShowMessage('é igual a 3');
         ShowMessage('é diferente de 2');
       end;
    else ShowMessage('Não é nenhum dos numeros acima');
  end;
end;

end.
