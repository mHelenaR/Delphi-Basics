unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SqlFun;

type
  TForm1 = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TCores = record
    nome: String;
end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i: Integer;
begin
  i:=0;
  while i<7 do
  begin
    if i mod 2 = 0 then
    begin
      if i = 6 then
      begin
        ShowMessage('Valor é 6');
        i:= i + 1;
        Continue;
      end else if i = 8 then begin
        ShowMessage('Parou no 8');
        Break;
        ShowMessage('Essa mensagem nao é executada');
      end;
      ShowMessage(IntToStr(i));
    end;
    i:= i + 1;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var ListaCores: TStringList;
    i: Integer;
begin
  ListaCores:= TStringList.Create;
  i:=0;

  ListaCores.Add('Amarelo');
  ListaCores.Add('Verde');
  ListaCores.Add('Azul');

  while i<=ListaCores.Count-1 do
  begin
    if ListaCores[i] = 'Amarelo' then
    begin
      Label1.Caption:= 'Amarelo';
      Label1.Color:= clYellow;
      ShowMessage(ListaCores[i]);
    end else if ListaCores[i] = 'Verde' then
    begin
      Label1.Caption:= 'Verde';
      Label1.Color:= clGreen;
      ShowMessage(ListaCores[i]);
    end else if ListaCores[i] = 'Azul' then
    begin
      Label1.Caption:= 'Azul';
      Label1.Color:= clBlue;
      ShowMessage(ListaCores[i]);
    end;
    i:= i + 1;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var Cores: Array[0..2] of String;
    i: Integer;
begin
  Cores[0]:= 'Amarelo';
  Cores[1]:= 'Verde';
  Cores[2]:= 'Azul';

  i:=0;

  while i<Length(Cores) do
  begin
    if Cores[i] = 'Amarelo' then
    begin
      Label2.Caption:= 'Amarelo';
      Label2.Color:= clYellow;
      ShowMessage(Cores[i]);
    end else if Cores[i] = 'Verde' then
    begin
      Label2.Caption:= 'Verde';
      Label2.Color:= clGreen;
      ShowMessage(Cores[i]);
    end else if Cores[i]  = 'Azul' then
    begin
      Label2.Caption:= 'Azul';
      Label2.Color:= clBlue;
      ShowMessage(Cores[i]);
    end;
    i:= i + 1;
  end;
end;



procedure TForm1.Button4Click(Sender: TObject);
var Cores: Array[0..2] of TCores;
    i: Integer;
begin
  i:=0;

  Cores[0].nome:= 'Amarelo';
  Cores[1].nome:= 'Azul';
  Cores[2].nome:= 'Verde';

  while i<=Length(Cores)-1 do
  begin
    if Cores[i].nome = 'Amarelo' then
    begin
      Label3.Caption:= 'Amarelo';
      Label3.Color:= clYellow;
      ShowMessage(Cores[i].nome);
    end else if Cores[i].nome = 'Azul' then
    begin
      Label3.Caption:= 'Azul';
      Label3.Color:= clBlue;
      ShowMessage(Cores[i].nome);
    end else if Cores[i].nome = 'Verde' then
    begin
      Label3.Caption:= 'Verde';
      Label3.Color:= clGreen;
      ShowMessage(Cores[i].nome);
    end;
    i:= i + 1;
  end;

end;

end.
