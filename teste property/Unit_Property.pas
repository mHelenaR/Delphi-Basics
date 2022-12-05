unit Unit_Property;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
    FNome: String;
    FBairro: String;
    FCEP: String;
    FId: string;
    FCPF: string;
    FSexo: String;
    FCidade: String;
    FEndereco: string;
    FTelefone: string;
    FRG: string;
   
  public
    { Public declarations }
    property Id :string read FId write SetId;
    property Nome:String read FNome write SetNome;
    property Sexo:String read FSexo write SetSexo;
    property CPF:string read FCPF write SetCPF;
    property RG:string read FRG write SetRG;
    property Telefone:string read FTelefone write SetTelefone;
    property Endereco:string read FEndereco write SetEndereco;
    property Bairro:String read FBairro write SetBairro;
    property Cidade:String read FCidade write SetCidade;
    property CEP :String read FCEP write SetCEP;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.SetBairro(const Value: String);
begin
  FBairro := Value;
end;

procedure TForm1.SetCEP(const Value: String);
begin
  FCEP := Value;
end;

procedure TForm1.SetCidade(const Value: String);
begin
  FCidade := Value;
end;

procedure TForm1.SetCPF(const Value: string);
begin
 if Length(Value) = 14 then
  FCPF := Value;
  else
    raise Exception.Create('Erro');
end;

procedure TForm1.SetEndereco(const Value: string);
begin
  FEndereco := Value;
end;

procedure TForm1.SetId(const Value: string);
begin
  FId := Value;
end;

procedure TForm1.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TForm1.SetRG(const Value: string);
begin
  FRG := Value;
end;

procedure TForm1.SetSexo(const Value: String);
begin
  FSexo := Value;
end;

procedure TForm1.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

end.
