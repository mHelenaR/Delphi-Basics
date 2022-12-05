unit Unit_Variaveis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlFun, StdCtrls, SQLGrid, ExtCtrls, Grids, SqlDtg;

type
  TForm1 = class(TForm)
    Btn_Funcionario: TButton;
    Btn_Aluno: TButton;
    RpStringGrid1: TRpStringGrid;
    procedure Btn_FuncionarioClick(Sender: TObject);
    procedure Btn_AlunoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  //Funcionarios
  Func_Idade: Integer;
  Func_Nome: String;
  Func_Altura: Double;
  Func_Aniversario: TDate;
  Func_Salario: Currency;
  //Alunos
  Alu_Sexo: Char;
  Alu_Nome, Alu_Materias: String;
  Alu_Idade: Integer;
  Alu_Notas: Double;

implementation

uses DateUtils, ConvUtils;
{$R *.dfm}

{1 - Criar variáveis com informações sobre um funcionário: idade do tipo Integer,
Nome do tipo String, Altura do tipo Double,
Aniversario do tipo Tdate, Salario do tipo Currency e mostrar na tela no Evento
AOnClick do botão (Mostrar uma informação por vez).}

procedure TForm1.Btn_FuncionarioClick(Sender: TObject);
begin
  Func_Idade := 21;
  Func_Nome := 'Carla Almeida';
  Func_Altura := 1.70;
  Func_Aniversario := StrToDate('12/12/2000');
  Func_Salario := 2.984;

  ShowMessage(IntToStr(Func_Idade));
  ShowMessage(Func_Nome);
  ShowMessage(FloatToStr(Func_Altura));
  ShowMessage(DateToStr(Func_Aniversario));
  ShowMessage(CurrToStr(Func_Salario));
end;

{2 - Criar variáveis com informações sobre um aluno, Sexo
do tipo Char, Nome e Matérias do tipo String, Idade do tipo Integer,
Nota do tipo Double, Mostrar todas as informações em apenas um ShowMessage.}

procedure TForm1.Btn_AlunoClick(Sender: TObject);
begin
  Alu_Sexo:= 'F';
  Alu_Nome:= 'Joana';
  Alu_Materias:= 'Matemática, Artes';
  Alu_Idade:= 10;
  Alu_Notas:= 85.9;

  ShowMessage('Nome: ' + Alu_Nome + #13
            + 'Sexo: ' + Alu_Sexo + #13
            + 'Idade: ' + IntToStr(Alu_Idade) + #13
            + 'Matérias: ' + Alu_Materias + #13
            + 'Notas: ' + FloatToStr(Alu_Notas));
end;


end.
