program laco_repeticao;

uses
  Forms,
  U_For in 'U_For.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
