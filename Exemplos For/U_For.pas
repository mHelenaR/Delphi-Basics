unit U_For;

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
  i : Integer;
  Lista:TStringList;
  ArrayFruta: Array[0..1] of String;
begin
  Lista:=TStringList.Create;
  Lista.Add('Maçã');
  Lista.Add('Pera');
  Lista.Add('Laranja');

  For i := 0 to Lista.Count-1 do
  begin
    showmessage('inicio');

    ShowMessage('i = '+Lista[i]);
    if (Lista[i]='Maçã') then continue;

    {
    sdfsdfsdfsdfsdfsf
    }

    showmessage('fim');
 end;

  Lista.Free;

  {ArrayFruta[0]:='alguma coisa';
  showmessage('tamanho total: '+inttostr(length(ArrayFruta)));}
end;


procedure TForm1.Button2Click(Sender: TObject);
var  i : Integer;
begin
  For i := 0 to 2 do
  begin
    ShowMessage('i = '+inttostr(i));
    break; continue;
  end;
end;

end.
