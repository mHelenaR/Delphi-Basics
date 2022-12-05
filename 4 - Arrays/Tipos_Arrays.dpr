program Tipos_Arrays;

uses
  Forms,
  Unit_Array in 'Unit_Array.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
