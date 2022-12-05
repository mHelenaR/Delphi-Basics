program Proj_Declaracoes;

uses
  Forms,
  Unit_Variaveis in 'Unit_Variaveis.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
