unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, SqlFun;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure NomeColunasToGrid;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  NomeColunasToGrid;
end;

procedure TForm1.NomeColunasToGrid;
var listaNomeColunas: TStringList;
    i,j: Integer;
begin
  listaNomeColunas:= TStringList.Create;
  listaNomeColunas.Add('Celsius|Fahrenheit|Kelvin|Réaumur|Rankine');
  StrToLista(listaNomeColunas,listaNomeColunas[0],'|',true);

  StringGrid1.ColCount:= listaNomeColunas.Count;
  StringGrid1.FixedRows:=1;

  for i:=0 to listaNomeColunas.Count -1 do begin
    StringGrid1.Cells[i,0]:= listaNomeColunas[i];
  end;

  listaNomeColunas.Free;

end;

end.
