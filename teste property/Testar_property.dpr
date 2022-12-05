program Testar_property;

uses
  Forms,
  Unit_Property in 'Unit_Property.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
