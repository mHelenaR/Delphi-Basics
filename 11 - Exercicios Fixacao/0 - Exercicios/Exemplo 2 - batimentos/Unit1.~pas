unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    EdtIdade: TLabeledEdit;
    EdtBatimentos: TLabeledEdit;
    bCalcular: TButton;
    GroupBox1: TGroupBox;
    procedure bCalcularClick(Sender: TObject);
  private
    { Private declarations }
    function CalculaFequencia(idade: Integer;frequencia:Double):String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Function com parâmetro

  Escreva uma function que leia os batimentos cardíacos de um paciente
  e sua idade e retorne se ele está normal ou alterado
   - Crianças de até 2 anos: 120 a 140 BPM
   - De 8 até 17 anos: 80 a 100 BPM
   - de 18 a 65 anos: 73 a 78 BPM}
procedure TForm1.bCalcularClick(Sender: TObject);
begin
  ShowMessage('Status da frequencia: ' + CalculaFequencia(StrToInt(EdtIdade.Text),StrToFloat(EdtBatimentos.Text)));
end;

function TForm1.CalculaFequencia(idade: Integer; frequencia: Double): String;
begin
  if (idade<= 2) and ((frequencia>=120) and (frequencia<=140))then begin
    Result:= 'Normal';
  end else if ((idade>=8) and (idade<=17)) and ((frequencia>=80) and (frequencia<=100))then begin
    Result:= 'Normal';
  end else if ((idade>=18) and(idade<=65)) and ((frequencia>=73) and (frequencia<=78))then begin
    Result:= 'Normal';
  end else begin
    Result:= 'Alterado';
  end;
end;

end.
