unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SqlFun, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    btnAluno1: TButton;
    btnAluno2: TButton;
    GroupBox3: TGroupBox;
    BtnDepositar_: TButton;
    cbTipoConta: TComboBox;
    EdtValor: TLabeledEdit;
    Label1: TLabel;
    BtnSacar_: TButton;
    BtnTransferir_: TButton;
    Label2: TLabel;
    MemoBanco: TMemo;
    GroupBox2: TGroupBox;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure btnAluno1Click(Sender: TObject);
    procedure btnAluno2Click(Sender: TObject);
    procedure BtnDepositar_Click(Sender: TObject);
    procedure BtnSacar_Click(Sender: TObject);
    procedure BtnTransferir_Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaAluno(nome:String;nota1,nota2,nota3:Double);
    function CalculaNotaAluno:Boolean;

    //banco
    procedure Impressao(ValorInformado, NomeTipoConta, TipoOperacao: String);
    function Depositar(NovoSaldo: Double; conta: String):Boolean;
    function Sacar(NovoSaque: Double; conta: String):Boolean;
    function Transferir(ValorTranferencia: Double;ContaDestino: String):Boolean;

  public
    { Public declarations }
  end;
type
  umAluno = record
    nome: String;
    notas: Array[0..2] of Double;
    mediaFinal: Double;
    isAprovado: Boolean;
end;

type
  TBanco = record
    saldoConta: Double;
    saldoCorrente, saldoPoupanca: Double;
    tipoConta: String;
    operacaoConcluida: Boolean;
end;

type
  TFuncionario = record
    nome: String;
    salario: Array[0..2] of Double;
    mediaSalarial: Double;
end;

var
  Form1: TForm1;
  dadosAluno: umAluno;
  contaBancaria: TBanco;
  
implementation

{$R *.dfm}

procedure TForm1.btnAluno1Click(Sender: TObject);
begin
  CarregaAluno('Carlos',60,50,40);

  CalculaNotaAluno;

  Memo1.Lines.Add('');
  Memo1.Lines.Add('Nome: ' + dadosAluno.nome);
  Memo1.Lines.Add('Media Final: ' + FloatToStr(dadosAluno.mediaFinal));

  if not(dadosAluno.isAprovado)then begin
    Memo1.Lines.Add('Situação: Reprovado!');
  end else begin
    Memo1.Lines.Add('Situação: Aprovado!');
  end;
end;

procedure TForm1.btnAluno2Click(Sender: TObject);
begin
  CarregaAluno('Janderson',80,70,60);

  CalculaNotaAluno;

  Memo1.Lines.Add('');
  Memo1.Lines.Add('Nome: ' + dadosAluno.nome);
  Memo1.Lines.Add('Media Final: ' + FloatToStr(dadosAluno.mediaFinal));

  if not(dadosAluno.isAprovado)then begin
    Memo1.Lines.Add('Situação: Reprovado!');
  end else begin
    Memo1.Lines.Add('Situação: Aprovado!');
  end;
end;

function TForm1.CalculaNotaAluno: Boolean;
begin
  dadosAluno.mediaFinal:= (dadosAluno.notas[0]+dadosAluno.notas[1]+dadosAluno.notas[2])/3;

  if dadosAluno.mediaFinal > 70 then begin
    Result:= True;
    dadosAluno.isAprovado:=true;
  end else if dadosAluno.mediaFinal <= 70 then begin
    Result:= False;
    dadosAluno.isAprovado:=true;
  end;

end;

procedure TForm1.CarregaAluno(nome: String; nota1, nota2, nota3: Double);
begin
 { with dadosAluno do begin
    nome:=nome;
    nota1:=nota1
  end  }
  dadosAluno.nome:=nome;
  dadosAluno.notas[0]:=nota1;
  dadosAluno.notas[1]:=nota2;
  dadosAluno.notas[2]:=nota3;
end;



// Exemplo Banco

// deposito
procedure TForm1.BtnDepositar_Click(Sender: TObject);
begin
  Depositar(StrToCurr(EdtValor.Text),cbTipoConta.Text);
  Impressao(EdtValor.Text,cbTipoConta.Text,'Depósito');
end;

function TForm1.Depositar(NovoSaldo: Double; conta: String): Boolean;
begin
  with contaBancaria do begin
    if (conta = 'Corrente') then begin                        // verifica se a conta é corrente ou poupança
      if(NovoSaldo > 1000) or (NovoSaldo <= 0 )then begin     // verifica se o valor nao é inválido
        operacaoConcluida:= False;                            // avisa se a operacao conseguiu ser concluida
        Result:= False;                            
      end else begin
        saldoCorrente:= saldoCorrente + NovoSaldo;            // soma o novo saldo com o saldo antigo da conta
        operacaoConcluida:= True;
        Result:= True;
      end;
    end else if conta = 'Poupança' then begin
      if NovoSaldo > 0 then begin
        SaldoPoupanca:= SaldoPoupanca + NovoSaldo;
        operacaoConcluida:= True;
        Result:= True;
      end else begin
        operacaoConcluida:= False;
        Result:= False;
      end;
    end;
  end;
end;

// Saque
procedure TForm1.BtnSacar_Click(Sender: TObject);
begin
  Sacar(StrToCurr(EdtValor.Text),cbTipoConta.Text);
  Impressao(EdtValor.Text, cbTipoConta.Text, 'Saque');
end;

function TForm1.Sacar(NovoSaque: Double; conta: String): Boolean;
begin
  with contaBancaria do begin
    if (NovoSaque <= 0) then begin
      operacaoConcluida:= False;
      Result:= False;
    end else begin
      if(conta = 'Corrente') and (NovoSaque <= saldoCorrente) then begin
        saldoCorrente:= saldoCorrente - NovoSaque;
        operacaoConcluida:= True;
        Result:= True;
      end else if (conta = 'Poupança') and (NovoSaque <= saldoPoupanca) then begin
        saldoPoupanca:= saldoPoupanca - NovoSaque;
        operacaoConcluida:= True;
        Result:= True;
      end else begin
        operacaoConcluida:= False;
        Result:= False;
      end;
    end;
  end;
end;

// Transferir
procedure TForm1.BtnTransferir_Click(Sender: TObject);
begin
  Transferir(StrToFloat(EdtValor.Text), cbTipoConta.Text);
  Impressao(EdtValor.Text, cbTipoConta.Text, 'Transferência');
end;

function TForm1.Transferir(ValorTranferencia: Double; ContaDestino: String): Boolean;
begin
  with contaBancaria do begin
    if ValorTranferencia>0 then begin
      if (ContaDestino = 'Corrente') and (ValorTranferencia <= saldoPoupanca) then begin   // subtrai o valor da tranferencia da conta escolhida
        saldoCorrente:= saldoPoupanca - ValorTranferencia;          
        saldoPoupanca:= saldoPoupanca - ValorTranferencia;
      end else if (ContaDestino = 'Poupança') and (ValorTranferencia <= saldoCorrente) then begin
        saldoPoupanca:= saldoCorrente - ValorTranferencia;
        saldoCorrente:= saldoCorrente - ValorTranferencia;
      end;
    end else begin
      operacaoConcluida:= False;
    end;
  end;
end;

// Impressao
procedure TForm1.Impressao(ValorInformado, NomeTipoConta, TipoOperacao: String);
begin
  with MemoBanco.Lines do begin
    if contaBancaria.operacaoConcluida = false then begin // operação nao realizada
      Add('------------------------');
      Add('Valor inválido!!!');

      if NomeTipoConta = 'Corrente' then begin          // tipo da conta destino
        Add('Tipo da conta: ' + NomeTipoConta);
      end else if NomeTipoConta = 'Poupança' then begin
        Add('Tipo da conta: ' + NomeTipoConta);
      end;

      if TipoOperacao = 'Depósito' then begin           // mensagem de erro do deposito
        Add('Tipo de Operação: ' + TipoOperacao);
        Add('O Valor não pode ser depositado!');
        Add('Limite de depósito: R$ 1.000,00');
        Add('Valor mínimo de depósito: R$ 0,01');
        Add('Valor do depósito: ' + ValorInformado);

      end else if TipoOperacao = 'Saque' then begin     // erro no saque
        Add('Tipo de Operação: ' + TipoOperacao);
        Add('O Valor não pode ser Sacado!');
        Add('Valor mínimo de Saque: R$ 0,01');
        if NomeTipoConta = 'Corrente' then begin
          Add('Saldo Bancário: ' + FloatToStr(contaBancaria.saldoCorrente));
        end else if NomeTipoConta = 'Poupança' then begin
          Add('Saldo Bancário: ' + FloatToStr(contaBancaria.SaldoPoupanca));
        end;
        Add('Valor do Saque: ' + ValorInformado);

      end else if TipoOperacao = 'Transferência' then begin     // erro na tranferencia
        Add('Tipo de Operação: ' + TipoOperacao);
      end;
      Add('------------------------');

    end else begin                                // operação realizada
      Add('------------------------');
      Add('Operação realizada com sucesso!!!');
      Add('Tipo de Operação: ' + TipoOperacao);

      if NomeTipoConta = 'Corrente' then begin
        Add('Tipo da conta: ' + NomeTipoConta);
        Add('Saldo Bancário: ' + FloatToStr(contaBancaria.saldoCorrente));
      end else if NomeTipoConta = 'Poupança' then begin
        Add('Tipo da conta: ' + NomeTipoConta);
        Add('Saldo Bancário: ' + FloatToStr(contaBancaria.SaldoPoupanca));
      end;

      Add('------------------------');
    end;
  end;
end;


// Media salarial do funcionário
procedure TForm1.Button1Click(Sender: TObject);
var dadosFunc: TFuncionario;

  procedure CarregaFuncionario(nomeFunc: String; salFunc1, salFunc2, salFunc3: Double);
  begin
    with dadosFunc do begin
      nome:= nomeFunc;
      salario[0]:= salFunc1;
      salario[1]:= salFunc2;
      salario[2]:= salFunc3;
    end;
  end;

  procedure CalculaMediaSalarial(salFunc1, salFunc2, salFunc3: Double);
  var j: Integer;
  begin
    with dadosFunc do begin
      mediaSalarial:=0;
      mediaSalarial:= (salFunc1 + salFunc2 + salFunc3)/3;
    end;
  end;

  procedure PreencheMemo(nomeFunc: String; ultimoSalario, mediaSalario: Double);
  begin
    with Memo2.Lines do begin
      Add('Nome: ' + nomeFunc);
      Add('Ultimo Salario: ' + FloatToStr(ultimoSalario));
      Add('Media Salarial: ' + FloatToStr(mediaSalario));
      Add('');
    end;
  end;

begin
  with dadosFunc do begin

    CarregaFuncionario('Jocemar', 1200,1000,1300);
    CalculaMediaSalarial(salario[0],salario[1],salario[2]);
    PreencheMemo(nome,salario[2], mediaSalarial);

    CarregaFuncionario('Juliana', 1500,1100,1600);
    CalculaMediaSalarial(salario[0],salario[1],salario[2]);
    PreencheMemo(nome,salario[2], mediaSalarial);

    CarregaFuncionario('Francisco', 1000,2000,1400);
    CalculaMediaSalarial(salario[0],salario[1],salario[2]);
    PreencheMemo(nome,salario[2], mediaSalarial);

    CarregaFuncionario('Marcelo', 1600,3000,1500);
    CalculaMediaSalarial(salario[0],salario[1],salario[2]);
    PreencheMemo(nome,salario[2], mediaSalarial);

    CarregaFuncionario('Carolina', 3000,4000,1000);
    CalculaMediaSalarial(salario[0],salario[1],salario[2]);
    PreencheMemo(nome,salario[2], mediaSalarial);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var dadosFunc: Array[0..4] of TFuncionario;
    i: Integer;

  procedure CarregaFuncionario(cont:Integer; nomeFunc: String; salFunc1, salFunc2, salFunc3: Double);
  begin
    dadosFunc[cont].nome:= nomeFunc;
    dadosFunc[cont].salario[0]:= salFunc1;
    dadosFunc[cont].salario[1]:= salFunc2;
    dadosFunc[cont].salario[2]:= salFunc3;
  end;

  procedure CalculaMediaSalarial(cont:Integer;salFunc1, salFunc2, salFunc3: Double);
  begin
    dadosFunc[cont].mediaSalarial:=0;
    dadosFunc[cont].mediaSalarial:= (salFunc1 + salFunc2 + salFunc3)/3;
  end;

  procedure PreencheMemo(nomeFunc: String; ultimoSalario, mediaSalario: Double);
  begin
    with Memo2.Lines do begin
      Add('Nome: ' + nomeFunc);
      Add('Ultimo Salario: ' + FloatToStr(ultimoSalario));
      Add('Media Salarial: ' + FloatToStr(mediaSalario));
      Add('');
    end;
  end;
begin
  //1. Carrega funcionario. (Procedure local do botao)
  CarregaFuncionario(0,'Jocemar', 1200,1000,1300);
  CarregaFuncionario(1,'Juliana', 1500,1100,1600);
  CarregaFuncionario(2,'Francisco', 1000,2000,1400);
  CarregaFuncionario(3,'Marcelo', 1600,3000,1500);
  CarregaFuncionario(4,'Carolina', 3000,4000,1000);

  //2. CalculaMediaSalarialFuncionario (Procedure local)
  //3. Alimentar o Memo com os dados (procedure local)
  for i:=0 to High(dadosFunc) do begin
    CalculaMediaSalarial(i,dadosFunc[i].salario[0],dadosFunc[i].salario[1],dadosFunc[i].salario[2]);
    PreencheMemo(dadosFunc[i].nome,dadosFunc[i].salario[2], dadosFunc[i].mediaSalarial);
  end;

end;

end.
