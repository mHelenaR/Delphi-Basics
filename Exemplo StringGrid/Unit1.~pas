unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    StringGrid2: TStringGrid;
    Button2: TButton;
    Button1: TButton;
    Panel3: TPanel;
    StringGrid4: TStringGrid;
    Button4: TButton;
    Panel4: TPanel;
    StringGrid6: TStringGrid;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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
var Col,Row:integer;
begin
  Col:= 1;
  row:=1;
  StringGrid1.Cells[col,row]:='Teste';
end;

procedure TForm1.Button2Click(Sender: TObject);
var Col, Row: Integer;
begin
  Col:=1;
  StringGrid2.RowCount:=11;

  for Row:=1 to 10 do begin
    StringGrid2.Cells[Col,Row]:='teste: '+IntToStr(Row);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var Col,Row: Integer;
begin
  Col:=1;
  StringGrid4.RowCount:=11;
  Row:=1;
  while Row<StringGrid4.RowCount do begin
    StringGrid4.Cells[Col,Row]:='Linha: ' + IntToStr(Row);
    Row:=Row+1;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var Col, Row: Integer;
begin
  Col:=1;
  Row:=1;
  StringGrid6.RowCount:=11;

  repeat
    StringGrid6.Cells[Col,Row]:='Linha: ' + IntToStr(Row);
    Inc(Row);
  until Row>StringGrid6.RowCount;
end;

end.
