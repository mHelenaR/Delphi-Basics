program ExLooping;

uses
  Forms,
  Unit_Looping in 'Unit_Looping.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
