program Looping_For;

uses
  Forms,
  Unit_For in 'Unit_For.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
