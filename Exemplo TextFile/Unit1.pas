unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    idade: TEdit;
    Memo: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject); //1. Criando e add texto em um arquivo TextFile.  ;
var
 MeuArquivoTexto : TextFile; //TEXTFILE - CRIANDO E ESCREVENDO UM ARQUIVO TXT
begin
  AssignFile(MeuArquivoTexto, 'C:\Teste.txt');  //AssignFile - Esta instru��o vai criar um arquivo na m�moria e vai referenciar um local fisico.
  ReWrite(MeuArquivoTexto);                     //ReWrite - Cria o arquivo f�sico e abre para escrita, por�m, caso o arquivo j� exista, esta instru��o apaga o arquivo para cri�-lo novamente.
  WriteLn(MeuArquivoTexto, 'Hello');            //WriteLn - Add texto qualquer.
  WriteLn(MeuArquivoTexto, 'World');            //WriteLn - Add texto qualquer.
  CloseFile(MeuArquivoTexto);                   //CloseFile - Fecha o arquivo texto aberto na mem�ria/f�sico.
end;





procedure TForm1.Button2Click(Sender: TObject); //2. Reabrindo o arquivo e add mais texto em um arquivo TextFile.
var
  MeuArquivoTexto : TextFile; //TEXTFILE - ABRINDO E ADD TEXTOS EM UM ARQUIVO TXT
begin
 if not FileExists('C:\Teste.txt') then begin
   Showmessage('Arquivo n�o localizado! Sorry!');
   Exit;
 end;

 AssignFile(MeuArquivoTexto, 'C:\Teste.txt');             //AssignFile - Esta instru��o vai criar um arquivo na m�moria e vai referenciar um local fisico.
 Append(MeuArquivoTexto);                                 //Append -  Abre um arquivo texto existente para implementar (dados adicionais).
 WriteLn(MeuArquivoTexto, 'Mais um texto adicionado!');   //WriteLn - Add texto qualquer.

 CloseFile(MeuArquivoTexto);                              //CloseFile - Fecha o arquivo texto aberto na mem�ria.

end;



procedure TForm1.Button3Click(Sender: TObject); //3. Reabrindo o arquivo e lendo as informa��s (textos) em um arquivo TextFile.
var MeuArquivoTexto:TextFile;
   LinhaTexto:String;
begin
 if not FileExists('C:\Teste.txt') then begin
   Showmessage('Arquivo n�o localizado! Sorry!');
   Exit;
 end;



 AssignFile(MeuArquivoTexto, 'C:\Teste.txt');      //AssignFile - Esta instru��o vai criar um arquivo na m�moria e vai referenciar um local fisico.
 FileMode := fmOpenRead;                           //Vari�vel FileMode define o modo no qual o procedimento Reset abre um arquivo
                                                   //fmOpenRead         = 0 = Read only
                                                   //fmOpenWrite         = 1 = Write only
                                                   //fmOpenReadWrite     = 2 = Read and write (default)
 Reset(MeuArquivoTexto);                           //procedimento Reset abre um arquivo para acesso de leitura, grava��o ou leitura e grava��o.

 while not Eof(MeuArquivoTexto) do                // While normal varrendo e mostrando o conte�do de cada linha
 begin
   ReadLn(MeuArquivoTexto, LinhaTexto);
   ShowMessage(LinhaTexto);
 end;


 CloseFile(MeuArquivoTexto);

end;



procedure TForm1.Button4Click(Sender: TObject);
var  MinhaLista: TStringList;
begin
 MinhaLista := TStringList.Create;         //Crio.
 MinhaLista.LoadFromFile('C:\Teste.txt');  //Carrego.
 ShowMessage(MinhaLista[1]);               //Exemplo simples de ler/mostrar uma determinada linha. Poderia usar While ou For etc.
                                           //Observa��o: Nesse caso estou lendo linha do �ndice ou posi��o ou endere�o '1'
                                           //(ou seja, a segunda linha, pois lembre-se que a estrutura seu �ndice come�a com 0)
 FreeAndNil(MinhaLista);                   //Libero.
end;



procedure TForm1.Button5Click(Sender: TObject);
var i, idades: Integer;
    arquivo: TextFile;
    texto: string;
begin
  idades:= StrToInt(idade.Text);
  
  AssignFile(arquivo, 'C:\Teste.txt');
  Append(arquivo);

  if not FileExists('C:\Teste.txt') then begin
    Showmessage('Arquivo n�o localizado');
    Exit;
  end;

  if(idades<16)then begin
    Memo.Lines.Add('N�o pode votar');
    Memo.Lines.Add('N�o pode dirigir');
  end else if(idades>=16) and (idades<18)then begin
    Memo.Lines.Add('Pode votar');
    Memo.Lines.Add('N�o pode dirigir');
  end else if(idades>=18) and (idades<=70)then begin
    Memo.Lines.Add('O voto � obrigat�rio');
    Memo.Lines.Add('Pode dirigir');
  end else if(idades>70)then begin
    Memo.Lines.Add('O voto � opcional');
    Memo.Lines.Add('Pode dirigir');
  end else begin
    ShowMessage('Condi��o inv�lida');
  end;

  for i:=0 to Memo.Lines.Count  do begin
    texto:= Memo.Lines.Strings[i];

    WriteLn(arquivo, texto);
  end;

  CloseFile(arquivo);
end;

end.


