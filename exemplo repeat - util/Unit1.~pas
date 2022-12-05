unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SqlFun;

type
  TForm1 = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
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
var i:integer;
begin

  i:=0;

  repeat
    ShowMessage(IntToStr(i));
    inc(i);
  until i>5;

end;



procedure TForm1.Button2Click(Sender: TObject);
var i: Integer;
    lista: TStringList;
begin
  i:=0;
  lista:= TStringList.Create;

  lista.Add('Rosa');
  lista.Add('Verde');
  lista.Add('Azul');

  repeat
    if lista[i] = 'Rosa' then begin
      Memo1.Lines.Add(lista[i]);
    end else if lista[i] = 'Verde' then begin
      Memo1.Lines.Add(lista[i]);
    end else if lista[i] = 'Azul' then begin
      Memo1.Lines.Add(lista[i]);
    end;
    Inc(i);
  until i>lista.Count -1;

  lista.Free;
end;

end.
