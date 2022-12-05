unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    EdtQuantLitro: TLabeledEdit;
    EdtKM: TLabeledEdit;
    EdtValGasolina: TLabeledEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CalculaGastoGasolina;
    procedure CalculaGastoGasolinaUsuario(QuantidadeKM, QuantidadeLitro, ValoGasolina:Double);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


{ 1 - Escreva uma procedure que calcule
    - quantos litros de gasolina um carro precisa para percorrer 478 km,
    - sendo que o carro faz 11 km por litro,
  dentro desta procedure escreva outra
    - procedure local que determine o valor gasto para percorrer este trajeto
    - com a gasolina a 7,19 reais o litro,
  mostre em um showmessege o total de gasolina gasto e o valor total da viajem. }

procedure TForm1.Button1Click(Sender: TObject);
begin
  CalculaGastoGasolina;
end;

procedure TForm1.CalculaGastoGasolina;
var quantidadeLitroKM: Double;

  procedure CalculaValorPagarGasolina(litrosKm: Double);
  var valorPagar: Double;
  begin
    valorPagar:= litrosKm*7.19; // calcula valor da gasolina
    ShowMessage('Valor gasto no total da viajem: ' + CurrToStr(valorPagar));
  end;

begin
  quantidadeLitroKM := 478/11;      // quantidade de litros em 478km
  ShowMessage('Quantidade de litros usados na viajem: ' + CurrToStr(quantidadeLitroKM));
  CalculaValorPagarGasolina(quantidadeLitroKM);
end;


{Com parâmetro

1 - Escreva este mesmo exemplo acima só que agora os valores
(Distância em KM, quantos Km o carro faz pro litro e o valor da gasolina)
serão digitados pelo usuário e então lhe retorne o resultado. }
procedure TForm1.Button2Click(Sender: TObject);
begin
  CalculaGastoGasolinaUsuario(StrToFloat(EdtKM.Text),StrToFloat(EdtQuantLitro.Text),StrToFloat(EdtValGasolina.Text));
end;

procedure TForm1.CalculaGastoGasolinaUsuario(QuantidadeKM, QuantidadeLitro,ValoGasolina: Double);
var quantidadeLitroKM: Double;

  procedure CalculaValorGasolina(litrosKM, valorGasolina: Double);
  var valorPagar:Double;
  begin
    valorPagar:= litrosKM * valorGasolina;
    ShowMessage('Valor total gasto na viajem: ' + CurrToStr(valorPagar));
  end;

begin
  quantidadeLitroKM:= QuantidadeKM / QuantidadeLitro;
  ShowMessage('Quantidade de litros usados na viajem: ' + CurrToStr(quantidadeLitroKM));
  CalculaValorGasolina(quantidadeLitroKM,ValoGasolina);
end;

end.
