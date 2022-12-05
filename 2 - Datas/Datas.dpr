program Datas;

uses
  Forms,
  Unit_Principal in 'Unit_Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
