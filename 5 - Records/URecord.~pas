unit URecord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MaskUtils, ExtCtrls, SqlFun;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Btn_SimEmpresa: TButton;
    Btn_Fornecedor: TButton;
    GroupBox2: TGroupBox;
    Btn_CadEmpresa: TButton;
    Edt_NomeEmpresa: TEdit;
    Edt_CnpjEmpresa: TEdit;
    Edt_DataEmpresa: TEdit;
    Edt_NumEmpresa: TEdit;
    Edt_ContEmpresa: TEdit;
    Edt_LogrEmpresa: TEdit;
    Edt_CepEmpresa: TEdit;
    Edt_RendaEmpresa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Btn_CadForne: TButton;
    Edt_NomeForne: TEdit;
    Edt_CnpjForne: TEdit;
    Edt_CodForne: TEdit;
    Edt_EndeForne: TEdit;
    Edt_ContForne: TEdit;
    Edt_EmpresaForne: TEdit;
    Edt_StatusForne: TEdit;
    Edt_EmailForne: TEdit;
    GroupBox4: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox5: TGroupBox;
    Btn_ArrayFrutas: TButton;
    Edt_Item1: TLabeledEdit;
    Edt_Item2: TLabeledEdit;
    Edt_Item3: TLabeledEdit;
    Edt_Item4: TLabeledEdit;
    Btn_ArrayIdade: TButton;
    Btn_ArraySalario: TButton;
    GroupBox6: TGroupBox;
    Edt_Nome: TLabeledEdit;
    Edt_Empresa: TLabeledEdit;
    Edt_Cod: TLabeledEdit;
    Btn_ArrayLista: TButton;
    Btn_ArrayListaEdt: TButton;
    Edt_Idade: TLabeledEdit;
    procedure Btn_SimEmpresaClick(Sender: TObject);
    procedure Btn_FornecedorClick(Sender: TObject);
    procedure Btn_CadEmpresaClick(Sender: TObject);
    procedure Btn_CadForneClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Btn_ArrayFrutasClick(Sender: TObject);
    procedure Btn_ArrayIdadeClick(Sender: TObject);
    procedure Btn_ArraySalarioClick(Sender: TObject);
    procedure Btn_ArrayListaClick(Sender: TObject);
    procedure Btn_ArrayListaEdtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TEmpresa = record
    nome : String;
    cnpj : Double;
    data_abertura: TDateTime;
    numero : Integer;
    contato: Integer;
    cep : Integer;
    logradouro : String;
    renda_anual : Currency;
end;

type
  TFornecedor = record
    nome : String;
    cnpj : Double;
    codigo_id : Integer;
    endereco : String;
    empresa : String;
    contato : Integer;
    status : Boolean;
    email : String;
end;

type
  TArrayEst = record
    frutas_nome : Array[0..3] of String;
    idades : Array[0..3] of Integer;
    salario : Array[0..3] of Currency;
    lista_dinam : Array of String;
end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Criar 2 tipos de records: Fornecedores e Empresas;
  No tipo Array, empresa deverá conter 3 empresas diferentes,
  com 3 cnpj diferentes. }
  
procedure TForm1.Btn_SimEmpresaClick(Sender: TObject);
var Rec_Empresa:TEmpresa;
begin
  Rec_Empresa.nome:='Salto de Luz';
  Rec_Empresa.cnpj:=9537321100018;
  Rec_Empresa.data_abertura:=StrToDateTime('12/12/1990');
  Rec_Empresa.numero:=785;
  Rec_Empresa.contato:=124528456;
  Rec_Empresa.cep:=85530999;
  Rec_Empresa.logradouro:='Rua Tapajós do Rio Carmo';
  Rec_Empresa.renda_anual:=7845641.485;

  ShowMessage('Record Empresa: ' + #13#13
            + 'Nome: ' + Rec_Empresa.nome + #13
            + 'CNPJ: ' + FormatMaskText('000\.000\.000\-00;0;',FloatToStr(Rec_Empresa.cnpj)) + #13
            + 'Data de Abertura: ' + DateToStr(Rec_Empresa.data_abertura) + #13
            + 'Número: ' + IntToStr(Rec_Empresa.numero) + #13
            + 'Contato: ' + IntToStr(Rec_Empresa.contato) + #13
            + 'CEP: ' + IntToStr(Rec_Empresa.cep) + #13
            + 'Logradouro: ' + Rec_Empresa.logradouro + #13
            + 'Renda Anual: ' + CurrToStr(Rec_Empresa.renda_anual));
end;

procedure TForm1.Btn_FornecedorClick(Sender: TObject);
var Rec_Fornecedores:TFornecedor;
begin
  Rec_Fornecedores.nome:='Carlos Almeida';
  Rec_Fornecedores.cnpj:=1248965741259;
  Rec_Fornecedores.codigo_id:=45896;
  Rec_Fornecedores.endereco:='Rua Cergio Poeta Ramos';
  Rec_Fornecedores.empresa:='Aurora Doces';
  Rec_Fornecedores.contato:=96512358;
  Rec_Fornecedores.status:=true;
  Rec_Fornecedores.email:='carlos.almeida43@aurora.com.br';

  ShowMessage('Record Fornecedor: ' + #13#13
            + 'Nome: ' + Rec_Fornecedores.nome + #13
            + 'CNPJ: ' + FormatMaskText('000\.000\.000\-00;0;',FloatToStr(Rec_Fornecedores.cnpj)) + #13
            + 'Código(ID): ' + IntToStr(Rec_Fornecedores.codigo_id) + #13
            + 'Endereço: ' + Rec_Fornecedores.endereco + #13
            + 'Empresa: ' + Rec_Fornecedores.empresa + #13
            + 'Contato: ' + IntToStr(Rec_Fornecedores.contato) + #13
            + 'Status: ' + BoolToStr(Rec_Fornecedores.status) + #13
            + 'Email: ' + Rec_Fornecedores.email);
end;

procedure TForm1.Btn_CadEmpresaClick(Sender: TObject);
var Rec_Empresa:TEmpresa;
begin
  Rec_Empresa.nome:=Edt_NomeEmpresa.Text;
  Rec_Empresa.cnpj:=StrToFloat(Edt_CnpjEmpresa.Text);
  Rec_Empresa.data_abertura:=StrToDate(Edt_DataEmpresa.Text);
  Rec_Empresa.numero:=StrToInt(Edt_NumEmpresa.Text);
  Rec_Empresa.contato:=StrToInt(Edt_ContEmpresa.Text);
  Rec_Empresa.cep:=StrToInt(Edt_CepEmpresa.Text);
  Rec_Empresa.logradouro:=Edt_LogrEmpresa.Text;
  Rec_Empresa.renda_anual:=StrToCurr(Edt_RendaEmpresa.Text);

  ShowMessage('Record Empresa: ' + #13#13
            + 'Nome: ' + Rec_Empresa.nome + #13
            + 'CNPJ: ' + FormatMaskText('000\.000\.000\-00;0;',FloatToStr(Rec_Empresa.cnpj)) + #13
            + 'Data de Abertura: ' + DateToStr(Rec_Empresa.data_abertura) + #13
            + 'Número: ' + IntToStr(Rec_Empresa.numero) + #13
            + 'Contato: ' + IntToStr(Rec_Empresa.contato) + #13
            + 'CEP: ' + IntToStr(Rec_Empresa.cep) + #13
            + 'Logradouro: ' + Rec_Empresa.logradouro + #13
            + 'Renda Anual: ' + CurrToStr(Rec_Empresa.renda_anual));
end;

procedure TForm1.Btn_CadForneClick(Sender: TObject);
var Rec_Fornecedor:TFornecedor;
begin
  Rec_Fornecedor.nome:=Edt_NomeForne.Text;
  Rec_Fornecedor.cnpj:=StrToFloat(Edt_CnpjForne.Text);
  Rec_Fornecedor.codigo_id:=StrToInt(Edt_CodForne.Text);
  Rec_Fornecedor.endereco:=Edt_EndeForne.Text;
  Rec_Fornecedor.empresa:=Edt_EmpresaForne.Text;
  Rec_Fornecedor.contato:=StrToInt(Edt_ContForne.Text);
  Rec_Fornecedor.status:=StrToBool(Edt_StatusForne.Text);
  Rec_Fornecedor.email:=Edt_EmailForne.Text;

  ShowMessage('Record Fornecedor: ' + #13
            + 'Nome: ' + Rec_Fornecedor.nome + #13
            + 'CNPJ: ' + FormatMaskText('000\.000\.000\-00;0;',FloatToStr(Rec_Fornecedor.cnpj)) + #13
            + 'Código(ID): ' + IntToStr(Rec_Fornecedor.codigo_id) + #13
            + 'Endereço: ' + Rec_Fornecedor.endereco + #13
            + 'Empresa: ' + Rec_Fornecedor.empresa + #13
            + 'Contato: ' + IntToStr(Rec_Fornecedor.contato) + #13
            + 'Status: ' + BoolToStr(Rec_Fornecedor.status) + #13
            + 'Email: ' + Rec_Fornecedor.email);
end;

procedure TForm1.Button1Click(Sender: TObject);
var Rec_Empresa:Array[0..2] of TEmpresa;
begin
  Rec_Empresa[0].nome:='Braga & Cia';
  Rec_Empresa[0].cnpj:=1111111111111;
  Rec_Empresa[0].data_abertura:=StrToDate('12/04/1945');
  Rec_Empresa[0].numero:=45678;
  Rec_Empresa[0].contato:=44589621;
  Rec_Empresa[0].cep:=85562041;
  Rec_Empresa[0].logradouro:='Rua Esperança da Graça';
  Rec_Empresa[0].renda_anual:=7841246954;

  Rec_Empresa[1].nome:='Roberta Construções';
  Rec_Empresa[1].cnpj:=4581259654251;
  Rec_Empresa[1].data_abertura:=StrToDate('23/01/2015');
  Rec_Empresa[1].numero:=1254;
  Rec_Empresa[1].contato:=25638547;
  Rec_Empresa[1].cep:=85241000;
  Rec_Empresa[1].logradouro:='Rua Economia Nacional';
  Rec_Empresa[1].renda_anual:=12569652;

  Rec_Empresa[2].nome:='Meskita Hoteis';
  Rec_Empresa[2].cnpj:=1259654786235;
  Rec_Empresa[2].data_abertura:=StrToDate('30/01/2004');
  Rec_Empresa[2].numero:=1452;
  Rec_Empresa[2].contato:=78459658;
  Rec_Empresa[2].cep:=85425962;
  Rec_Empresa[2].logradouro:='Rua Aliança da Cruz';
  Rec_Empresa[2].renda_anual:=25456851;

  ShowMessage('Array de Records: ' + #13
            + 'Empresa 1: ' + #13#13
            + 'Nome: ' + Rec_Empresa[0].nome + #13
            + 'CNPJ: ' + FloatToStr(Rec_Empresa[0].cnpj) + #13
            + 'Data de Abertura: ' + DateToStr(Rec_Empresa[0].data_abertura) + #13
            + 'Numero: ' + IntToStr(Rec_Empresa[0].numero) + #13
            + 'Contato: ' + IntToStr(Rec_Empresa[0].contato) + #13
            + 'CEP: ' + IntToStr(Rec_Empresa[0].cep) + #13
            + 'Logradouro: ' + Rec_Empresa[0].logradouro + #13
            + 'Renda Anual: ' + CurrToStr(Rec_Empresa[0].renda_anual) + #13#13
            + 'Empresa 2: ' + #13#13
            + 'Nome: ' + Rec_Empresa[1].nome + #13
            + 'CNPJ: ' + FloatToStr(Rec_Empresa[1].cnpj) + #13
            + 'Data de Abertura: ' + DateToStr(Rec_Empresa[1].data_abertura) + #13
            + 'Numero: ' + IntToStr(Rec_Empresa[1].numero) + #13
            + 'Contato: ' + IntToStr(Rec_Empresa[1].contato) + #13
            + 'CEP: ' + IntToStr(Rec_Empresa[1].cep) + #13
            + 'Logradouro: ' + Rec_Empresa[1].logradouro + #13
            + 'Renda Anual: ' + CurrToStr(Rec_Empresa[1].renda_anual) + #13#13
            + 'Empresa 3: ' + #13#13
            + 'Nome: ' + Rec_Empresa[2].nome + #13
            + 'CNPJ: ' + FloatToStr(Rec_Empresa[2].cnpj) + #13
            + 'Data de Abertura: ' + DateToStr(Rec_Empresa[2].data_abertura) + #13
            + 'Numero: ' + IntToStr(Rec_Empresa[2].numero) + #13
            + 'Contato: ' + IntToStr(Rec_Empresa[2].contato) + #13
            + 'CEP: ' + IntToStr(Rec_Empresa[2].cep) + #13
            + 'Logradouro: ' + Rec_Empresa[2].logradouro + #13
            + 'Renda Anual: ' + CurrToStr(Rec_Empresa[2].renda_anual));
end;

procedure TForm1.Button2Click(Sender: TObject);
var Rec_Fornecedor:Array[0..7] of TFornecedor;
begin
  Rec_Fornecedor[0].nome:='Savio da Silva';
  Rec_Fornecedor[0].empresa:='Cia Alimentos';
  Rec_Fornecedor[0].codigo_id:= 1334;

  Rec_Fornecedor[1].nome:='Roberta D Avila';
  Rec_Fornecedor[1].empresa:='Construtora Arruda';
  Rec_Fornecedor[1].codigo_id:=543;

  Rec_Fornecedor[2].nome:='Diego Damasceno';
  Rec_Fornecedor[2].empresa:='Recurso Reservado';
  Rec_Fornecedor[2].codigo_id:=356;

  Rec_Fornecedor[3].nome:='Silvana Rogers';
  Rec_Fornecedor[3].empresa:='Nova Aurora';
  Rec_Fornecedor[3].codigo_id:=6532;

  Rec_Fornecedor[4].nome:='Carla Pereira';
  Rec_Fornecedor[4].empresa:='Soja Alimentos';
  Rec_Fornecedor[4].codigo_id:=64820;

  Rec_Fornecedor[5].nome:='Sales Roberto';
  Rec_Fornecedor[5].empresa:='Major Max';
  Rec_Fornecedor[5].codigo_id:=2548;

  Rec_Fornecedor[6].nome:='Natalie Portman';
  Rec_Fornecedor[6].empresa:='New Palace';
  Rec_Fornecedor[6].codigo_id:=948;

  ShowMessage('Array Fornecedores: ' + #13
            + 'Fornecedor 1: ' + #13#13
            + 'Código: ' + IntToStr(Rec_Fornecedor[0].codigo_id) + #13
            + 'Nome: ' + Rec_Fornecedor[0].nome+ #13
            + 'Empresa: ' + Rec_Fornecedor[0].empresa + #13#13
            + 'Fornecedor 2: ' + #13#13
            + 'Código: ' + IntToStr(Rec_Fornecedor[1].codigo_id) + #13
            + 'Nome: ' + Rec_Fornecedor[1].nome + #13
            + 'Empresa: ' + Rec_Fornecedor[1].empresa + #13#13
            + 'Fornecedor 3: ' + #13#13
            + 'Código: ' + IntToStr(Rec_Fornecedor[2].codigo_id) + #13
            + 'Nome: ' + Rec_Fornecedor[2].nome + #13
            + 'Empresa: ' + Rec_Fornecedor[2].empresa);
end;

procedure TForm1.Btn_ArrayFrutasClick(Sender: TObject);
var Rec_ArrayEstatico:Array[0..1] of TArrayEst;
begin
  Rec_ArrayEstatico[0].frutas_nome[0]:='Banana';
  Rec_ArrayEstatico[0].frutas_nome[1]:='Maçã';
  Rec_ArrayEstatico[0].frutas_nome[2]:='Cereja';
  Rec_ArrayEstatico[0].frutas_nome[3]:='Pêra';
  ShowMessage('Array String 1: ' + #13
            + '1 - ' + Rec_ArrayEstatico[0].frutas_nome[0] + #13
            + '2 - ' + Rec_ArrayEstatico[0].frutas_nome[1] + #13
            + '3 - ' + Rec_ArrayEstatico[0].frutas_nome[2] + #13
            + '4 - ' + Rec_ArrayEstatico[0].frutas_nome[3] + #13);

  Rec_ArrayEstatico[1].frutas_nome[0]:=Edt_Item1.Text;
  Rec_ArrayEstatico[1].frutas_nome[1]:=Edt_Item2.Text;
  Rec_ArrayEstatico[1].frutas_nome[2]:=Edt_Item3.Text;
  Rec_ArrayEstatico[1].frutas_nome[3]:=Edt_Item4.Text;
  ShowMessage('Array String 2: ' + #13
            + '1 - ' + Rec_ArrayEstatico[1].frutas_nome[0] + #13
            + '2 - ' + Rec_ArrayEstatico[1].frutas_nome[1] + #13
            + '3 - ' + Rec_ArrayEstatico[1].frutas_nome[2] + #13
            + '4 - ' + Rec_ArrayEstatico[1].frutas_nome[3] + #13);

  Edt_Item1.Clear;
  Edt_Item2.Clear;
  Edt_Item3.Clear;
  Edt_Item4.Clear;
end;

procedure TForm1.Btn_ArrayIdadeClick(Sender: TObject);
var Rec_ArrayEst:Array[0..2] of TArrayEst;
    Soma_Idades:Double;
begin
  Rec_ArrayEst[0].idades[0]:=StrToInt(Edt_Item1.Text);
  Rec_ArrayEst[0].idades[1]:=StrToInt(Edt_Item2.Text);
  Rec_ArrayEst[0].idades[2]:=StrToInt(Edt_Item3.Text);

  Rec_ArrayEst[1].idades[0]:=StrToInt(Edt_Item1.Text);
  Rec_ArrayEst[1].idades[1]:=StrToInt(Edt_Item2.Text);
  Rec_ArrayEst[1].idades[2]:=StrToInt(Edt_Item3.Text);

  Soma_Idades:= ((Rec_ArrayEst[0].idades[0] + Rec_ArrayEst[1].idades[0]) + (Rec_ArrayEst[0].idades[1] + Rec_ArrayEst[1].idades[1])+ (Rec_ArrayEst[0].idades[2] + Rec_ArrayEst[1].idades[2]))/4;

  ShowMessage('Resultado soma: ' + FloatToStr(Soma_Idades));

  Edt_Item1.Clear;
  Edt_Item2.Clear;
  Edt_Item3.Clear;
  Edt_Item4.Clear;
end;

procedure TForm1.Btn_ArraySalarioClick(Sender: TObject);
var Rec_ArrayEst:Array[0..3] of TArrayEst;
    Result_bimestre:Currency;
begin
  Rec_ArrayEst[0].salario[0]:=StrToCurr(Edt_Item1.Text);
  Rec_ArrayEst[0].salario[1]:=StrToCurr(Edt_Item2.Text);
  Rec_ArrayEst[0].salario[2]:=StrToCurr(Edt_Item3.Text);

  Result_bimestre:= Rec_ArrayEst[0].salario[0] + Rec_ArrayEst[0].salario[1] + Rec_ArrayEst[0].salario[2];

  ShowMessage('Soma dos salarios: ' + FormatFloat('#,###.##',Result_bimestre));
end;

procedure TForm1.Btn_ArrayListaClick(Sender: TObject);
var Lista_Principal, Lista_Separada, Lista_Dados, Lista_Pessoa:TStringList;
    Rec_Lista:Array of TArrayEst;
begin
  Lista_Principal:=TStringList.Create;
  Lista_Separada:=TStringList.Create;
  Lista_Dados:=TStringList.Create;
  Lista_Pessoa:=TStringList.Create;

  SetLength(Rec_Lista,2);
  { Quando declarado arrays dinamicos em ambos os escopos,
    é necessário setar o tamanho para cada posição que usara
    a lista que esta dentro do record }
  SetLength(Rec_Lista[0].lista_dinam,4);
  SetLength(Rec_Lista[1].lista_dinam,4);

  Lista_Principal.Add('Fornecedor1=Nome=Carla^Idade=34^Empresa=Meskita^Codigo=24454|'
                    + 'Fornecedor2=Nome=Ana^Idade=29^Empresa=Aurora^Codigo=1452|');
  StrToLista(Lista_Separada,Lista_Principal[0],'|',true);

  Lista_Dados.CommaText:= Lista_Separada[0] + ',' + Lista_Separada[1];

  StrToLista(Lista_Pessoa, Lista_Dados.Values['Fornecedor1'],'^',true);

  Rec_Lista[0].lista_dinam[0]:=Lista_Pessoa.Values['Nome'];
  Rec_Lista[0].lista_dinam[1]:=Lista_Pessoa.Values['Idade'];
  Rec_Lista[0].lista_dinam[2]:=Lista_Pessoa.Values['Empresa'];
  Rec_Lista[0].lista_dinam[3]:=Lista_Pessoa.Values['Codigo'];

  StrToLista(Lista_Pessoa, Lista_Dados.Values['Fornecedor2'],'^',true);

  Rec_Lista[1].lista_dinam[0]:=Lista_Pessoa.Values['Codigo'];
  Rec_Lista[1].lista_dinam[1]:=Lista_Pessoa.Values['Nome'];
  Rec_Lista[1].lista_dinam[2]:=Lista_Pessoa.Values['Idade'];
  Rec_Lista[1].lista_dinam[3]:=Lista_Pessoa.Values['Empresa'];

  ShowMessage('Fornecedor 1: ' + #13
            + 'Codigo: ' + Rec_Lista[0].lista_dinam[3] + #13
            + 'Nome: ' + Rec_Lista[0].lista_dinam[0] + #13
            + 'Idade: ' + Rec_Lista[0].lista_dinam[1] + #13
            + 'Empresa: ' + Rec_Lista[0].lista_dinam[2] + #13#13
            + 'Fornecedor 2: ' + #13
            + 'Codigo: ' + Rec_Lista[1].lista_dinam[0] + #13
            + 'Nome: ' + Rec_Lista[1].lista_dinam[1] + #13
            + 'Idade: ' + Rec_Lista[1].lista_dinam[2] + #13
            + 'Empresa: ' + Rec_Lista[1].lista_dinam[3]);

  Lista_Principal.Clear;
  Lista_Separada.Clear;
  Lista_Dados.Clear;
  Lista_Pessoa.Clear;
end;

procedure TForm1.Btn_ArrayListaEdtClick(Sender: TObject);
var Lista_Principal, Lista_Separada, Lista_Dados, Lista_Pessoa:TStringList;
    Rec_Lista:Array of TArrayEst;
begin
  Lista_Principal:=TStringList.Create;
  Lista_Separada:=TStringList.Create;
  Lista_Dados:=TStringList.Create;
  Lista_Pessoa:=TStringList.Create;

  SetLength(Rec_Lista,2);

  SetLength(Rec_Lista[0].lista_dinam,4);
  SetLength(Rec_Lista[1].lista_dinam,4);

  Lista_Principal.Add('Fornecedor=Nome='+Edt_Nome.Text+'^Idade='+Edt_Idade.Text+'^Empresa='+Edt_Empresa.Text+'^Codigo='+Edt_Cod.Text);
  StrToLista(Lista_Separada,Lista_Principal[0],'|',true);

 // Lista_Dados.CommaText:= Lista_Separada[0] + ',' + Lista_Separada[1];

  StrToLista(Lista_Pessoa, Lista_Separada.Values['Fornecedor'],'^',true);

  Rec_Lista[0].lista_dinam[0]:=Lista_Pessoa.Values['Nome'];
  Rec_Lista[0].lista_dinam[1]:=Lista_Pessoa.Values['Idade'];
  Rec_Lista[0].lista_dinam[2]:=Lista_Pessoa.Values['Empresa'];
  Rec_Lista[0].lista_dinam[3]:=Lista_Pessoa.Values['Codigo'];

  ShowMessage('Fornecedor: ' + #13
            + 'Codigo: ' + Rec_Lista[0].lista_dinam[3] + #13
            + 'Nome: ' + Rec_Lista[0].lista_dinam[0] + #13
            + 'Idade: ' + Rec_Lista[0].lista_dinam[1] + #13
            + 'Empresa: ' + Rec_Lista[0].lista_dinam[2]);

  Lista_Principal.Clear;
  Lista_Separada.Clear;
  Lista_Dados.Clear;
  Lista_Pessoa.Clear;
end;

end.
