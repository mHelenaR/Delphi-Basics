unit Cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmCadastro = class(TForm)
    Panel1: TPanel;
    BtnCadastrar: TButton;
    BtnLogin: TButton;
    EdtNome: TLabeledEdit;
    EdtEmail: TLabeledEdit;
    EdtSenha: TLabeledEdit;
    procedure BtnLoginClick(Sender: TObject);
    procedure BtnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

uses Login;

{$R *.dfm}

procedure TFrmCadastro.BtnLoginClick(Sender: TObject);
begin
  FrmCadastro.close;
  FrmLogin.ShowModal;
end;

procedure TFrmCadastro.BtnCadastrarClick(Sender: TObject);
var arquivoCadastro: TextFile;
    caminhoArquivo: String;
begin
  caminhoArquivo:= 'C:\ProjetosERP\11 - Exercicios Fixacao\procedures e functions\Exemplo 3 - Hotel\Usuarios\cadastro.txt';
  AssignFile(arquivoCadastro,caminhoArquivo);

  if not FileExists(caminhoArquivo) then begin
    Rewrite(arquivoCadastro);
    ShowMessage('Arquivo Criado!');
  end;

  Writeln(arquivoCadastro,'novo');

  CloseFile(arquivoCadastro);

end;

end.
