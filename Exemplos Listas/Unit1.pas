unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Sqlfun;

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
  Lista:TStringList;
begin
//Frutas, nomes, nuemros
  Lista:= TStringList.Create;      //Instaciado lista na memoria

  Lista.Add('Branco');         //Lista recebendo informação
  Lista.Add('Preto');
  Lista.Add('Rosa');
  Lista.Add('Verde');
  Lista.Add('Azul');

  ShowMessage(Lista[0]);       //Manipulando informação
  ShowMessage(Lista[1]);
  ShowMessage(Lista[2]);
  ShowMessage(Lista[3]);
  ShowMessage(Lista[4]);

  Lista.Free;
end;



procedure TForm1.Button2Click(Sender: TObject);
var
  ListaInicial, Lista1, Lista2:TStringList;
begin
//agrupar  ;^;^;
  ListaInicial:= TStringList.Create;
  Lista1:= TStringList.Create;
  Lista2:= TStringList.Create;

  ListaInicial.Add('Azul;Branco^Borboleta;Pomba');

  StrToLista(Lista1,ListaInicial[0],'^',true);
  ShowMessage(Lista1[0]);
  ShowMessage(Lista1[1]);

  StrToLista(Lista2,Lista1[0],';',true);
  ShowMessage(Lista2[0]);
  ShowMessage(Lista2[1]);

  StrToLista(Lista2,Lista1[1],';',true);
  ShowMessage(Lista2[0]);
  ShowMessage(Lista2[1]);

  ShowMessage(ListaInicial.Text);
  ShowMessage(IntToStr(ListaInicial.Count));
  ListaInicial.Clear;
  ShowMessage(ListaInicial.Text);

  ListaInicial.Free;
  Lista1.Free;
  Lista2.Free;
end;

end.
