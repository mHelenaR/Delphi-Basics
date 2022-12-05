unit Unit_Listas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlFun, StdCtrls;

type
  TForm1 = class(TForm)
    Btn_AddLista: TButton;
    Btn_SeparaLista: TButton;
    Btn_Capacity: TButton;
    Btn_Clear: TButton;
    Btn_Count: TButton;
    Btn_Text: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Btn_CommaText: TButton;
    Btn_Quote: TButton;
    Button4: TButton;
    Btn_Strings: TButton;
    Btn_DelimitedText: TButton;
    Btn_Values: TButton;
    Btn_Duplicate: TButton;
    Btn_Insert: TButton;
    Btn_Delete: TButton;
    Btn_Move: TButton;
    Btn_Exchange: TButton;
    Btn_IndexOf: TButton;
    Btn_AddStrings: TButton;
    Btn_Assing: TButton;
    Btn_Exp: TButton;
    procedure Btn_AddListaClick(Sender: TObject);
    procedure Btn_SeparaListaClick(Sender: TObject);
    procedure Btn_TextClick(Sender: TObject);
    procedure Btn_CountClick(Sender: TObject);
    procedure Btn_ClearClick(Sender: TObject);
    procedure Btn_CapacityClick(Sender: TObject);
    procedure Btn_StringsClick(Sender: TObject);
    procedure Btn_CommaTextClick(Sender: TObject);
    procedure Btn_DelimitedTextClick(Sender: TObject);
    procedure Btn_QuoteClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Btn_ValuesClick(Sender: TObject);
    procedure Btn_DuplicateClick(Sender: TObject);
    procedure Btn_InsertClick(Sender: TObject);
    procedure Btn_DeleteClick(Sender: TObject);
    procedure Btn_MoveClick(Sender: TObject);
    procedure Btn_ExchangeClick(Sender: TObject);
    procedure Btn_IndexOfClick(Sender: TObject);
    procedure Btn_AddStringsClick(Sender: TObject);
    procedure Btn_AssingClick(Sender: TObject);
    procedure Btn_ExpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Lista_Principal, Lista_Separada, Lista_Frutas, Lista_Nomes, Lista_Numeros: TStringList;

implementation

{$R *.dfm}


{ Criar listas com Frutas, Nomes, Números
  Utilizar a sequencia de separadores ;^;^; }

procedure TForm1.Btn_AddListaClick(Sender: TObject);
begin
  // Cria a lista na memória
  Lista_Principal:= TStringList.Create;

  // Adiciona um novo item a lista
  Lista_Principal.Add('Manga;Mamão;Maçã;Kiwi;Banana;Laranja;Uva;Abacate;^');
  Lista_Principal.Add('Jana;Macelo;Carlos;Henrique;Marcos;Eren;Marcia;^');
  Lista_Principal.Add('1;23;45;657;22;098;567;6;98;^');
  ShowMessage(Lista_Principal.Text);

  // Libera a lista da memória
  Lista_Principal.Free;
end;

{ Removendo Pipe e particionando a lista }
procedure TForm1.Btn_SeparaListaClick(Sender: TObject);
begin
  Lista_Principal:= TStringList.Create;
  Lista_Separada:= TStringList.Create;
  Lista_Frutas:= TStringList.Create;
  Lista_Nomes:= TStringList.Create;
  Lista_Numeros:= TStringList.Create;

  Lista_Principal.Add('Manga;Mamão;Maçã;Kiwi;Banana;Laranja;Uva;Abacate;^Jana;Macelo;Carlos;Henrique;Marcos;Eren;Marcia;^1;23;45;657;22;098;567;6;98;^');
  ShowMessage('Lista Original: ' + #13
            + Lista_Principal.Text);

  // Lista que vai receber + String que vai ser separada + Pipe que sera removido + true como padrão
  StrToLista(Lista_Separada,Lista_Principal[0],'^',true);
  ShowMessage('Listas Separadas: ' + #13
            + Lista_Separada.Text);

  StrToLista(Lista_Frutas,Lista_Separada[0],';',true);
  ShowMessage('Lista de Frutas: ' + #13#13
            + Lista_Frutas.Text);

  StrToLista(Lista_Nomes,Lista_Separada[1],';',true);
  ShowMessage('Lista de Nomes: ' + #13#13
            + Lista_Nomes.Text);

  StrToLista(Lista_Numeros,Lista_Separada[2],';',true);
  ShowMessage('Lista de Números: ' + #13#13
            + Lista_Numeros.Text);

  Lista_Principal.Free;
  Lista_Separada.Free;
  Lista_Frutas.Free;
  Lista_Nomes.Free;
  Lista_Numeros.Free;
end;

{ Obtém todas as Strings adicionadas na lista }
procedure TForm1.Btn_TextClick(Sender: TObject);
begin
  Lista_Principal:= TStringList.Create;

  Lista_Principal.Add('Manga;Mamão;Maçã;Kiwi;Banana;Laranja;Uva;Abacate;^Jana;Macelo;Carlos;Henrique;Marcos;Eren;Marcia;^1;23;45;657;22;098;567;6;98;^');
  ShowMessage('Texto da Lista: ' + #13
            + Lista_Principal.Text);

  Lista_Principal.Free;
end;

{ Retorna o número de Strings(linhas) na lista }
procedure TForm1.Btn_CountClick(Sender: TObject);
begin
  Lista_Principal:= TStringList.Create;
  Lista_Separada:= TStringList.Create;

  Lista_Principal.Add('Manga;Mamão;Maçã;Kiwi;Banana;Laranja;Uva;Abacate;^Jana;Macelo;Carlos;Henrique;Marcos;Eren;Marcia;^1;23;45;657;22;098;567;6;98;^');
  StrToLista(Lista_Separada,Lista_Principal[0],'^',true);
  ShowMessage('Count da Lista: ' + #13
            + IntToStr(Lista_Separada.Count));

  {// Utilizado em laços para percorrer os indices da lista
  for i:= 0 to Lista_Separada.Count -2 do begin
    ShowMessage('Laço percorrendo a Lista: ' + #13
              + 'Posição: ' + IntToStr(i)    + #13
              + Lista_Separada[i]);
  end;

  Lista_Principal.Free;
  Lista_Separada.Free; }
end;

{ Exclui todos os indices da lista }
procedure TForm1.Btn_ClearClick(Sender: TObject);
begin
  Lista_Principal:= TStringList.Create;
  Lista_Separada:= TStringList.Create;
  Lista_Nomes:= TStringList.Create;

  Lista_Principal.Add('Manga;Mamão;Maçã;Kiwi;Banana;Laranja;Uva;Abacate;^Jana;Macelo;Carlos;Henrique;Marcos;Eren;Marcia;^1;23;45;657;22;098;567;6;98;^');
  StrToLista(Lista_Separada,Lista_Principal[0],'^',true);

  StrToLista(Lista_Nomes,Lista_Separada[1],';',true);
  ShowMessage('Antes de Clear: ' + #13
            + Lista_Nomes.Text);

  Lista_Nomes.Clear;

  ShowMessage('Depois do Clear: ' + #13
            + Lista_Nomes.Text);

  Lista_Principal.Free;
  Lista_Separada.Free;
  Lista_Nomes.Free;
end;

{ Defina ou obtenha a capacidade atual da lista de strings antes dela expandir }
procedure TForm1.Btn_CapacityClick(Sender: TObject);
begin
  Lista_Frutas:= TStringList.Create;

  Lista_Frutas.Capacity;
  ShowMessage('Capacidade da lista vazia: ' + #13
            + IntToStr(Lista_Frutas.Capacity ));

  Lista_Frutas.Add('Manga');
  Lista_Frutas.Add('Mamão');
  Lista_Frutas.Add('Maçã');
  Lista_Frutas.Add('Kiwi');

  ShowMessage('Lista com Itens: ' + #13
            + 'Capacity: ' + IntToStr(Lista_Frutas.Capacity) + #13
            + 'Lista: ' + #13
            + Lista_Frutas.Text);

  Lista_Frutas.Add('Banana');
  Lista_Frutas.Add('Laranja');
  Lista_Frutas.Add('Uva');
  Lista_Frutas.Add('Abacate');

  ShowMessage('Adicionando mais itens expande a capacidade: ' + #13
            + 'Capacity: ' +  IntToStr(Lista_Frutas.Capacity)+ #13
            + 'Lista: ' + #13
            + Lista_Frutas.Text);

  Lista_Frutas.Free;
end;

{ Obtém ou atualiza a string em um determinado índice na lista }
procedure TForm1.Btn_StringsClick(Sender: TObject);
begin
  Lista_Nomes:= TStringList.Create;

  Lista_Nomes.Add('Marcos');
  Lista_Nomes.Add('Joana');
  Lista_Nomes.Add('Patricia');
  Lista_Nomes.Add('Carlos');
  ShowMessage('Lista anterior: ' + #13
            + Lista_Nomes.Text);

  Lista_Nomes.Strings[0]:= 'Marcia';
  Lista_Nomes.Strings[1]:= 'Jaqueline';
  Lista_Nomes.Strings[2]:= 'Ana Paula';
  Lista_Nomes.Strings[3]:= 'Roberta';
  ShowMessage('Lista alterada: ' + #13
            + Lista_Nomes.Text);

  Lista_Nomes.Free;
end;

{ Obter ou definir a lista por meio de uma string grande.
  Esta string terá as strings da lista separadas por vírgulas.
  Muito parecido com mapas e LinkedList }
procedure TForm1.Btn_CommaTextClick(Sender: TObject);
begin
  Lista_Numeros:= TStringList.Create;
  Lista_Numeros.CommaText:= '1=Integer, 45.4=Double, 0=Booleano';  //Não pode haver espaços entre as atribuições


  ShowMessage('Formatação de cada célula: ' + #13
            + Lista_Numeros.Text);

  Lista_Numeros.Free;
end;

{ Obtém ou define a lista por meio de uma string grande.
Essa string terá as strings da lista separadas pelo valor Delimiter (PIPE) }
procedure TForm1.Btn_DelimitedTextClick(Sender: TObject);
begin
  Lista_Frutas:= TStringList.Create;

  Lista_Frutas.Delimiter:= ';';
  Lista_Frutas.DelimitedText:= 'Manga;Mamão;Maçã;Kiwi;Banana;Laranja;Uva;Abacate;';
  ShowMessage('Removido o separador: ' + #13
            + Lista_Frutas.Text);

  Lista_Frutas.Free;
end;

{ Usada para incluir strings que possuem espaços em branco }
procedure TForm1.Btn_QuoteClick(Sender: TObject);
begin
  Lista_Principal:= TStringList.Create;

  Lista_Principal.Delimiter:=';';
  Lista_Principal.QuoteChar:='^'; // Vai preservar tudo o que esta entre esses dois pipes
  Lista_Principal.DelimitedText:= 'Manga;Mamão;Maçã;Kiwi;Banana;Laranja;Uva;Abacate;^Jana;Macelo;Carlos;Henrique;Marcos;Eren;Marcia;^1;23;45;657;22;098;567;6;98;^';
  ShowMessage('Quote preserva string: ' + #13
            + Lista_Principal.Text);

  Lista_Principal.Free;
end;

{ Funciona com os parametros CHAVES/VALOR.
  Names recupera as chaves das células }
procedure TForm1.Button4Click(Sender: TObject);
begin
  Lista_Nomes:= TStringList.Create;
  Lista_Nomes.CommaText:= 'Alex=34, Jana=23, Roberta=52';
  ShowMessage('Célula: ' + Lista_Nomes[1] + #13
            + 'Chave da célula: ' + Lista_Nomes.Names[1]);

  Lista_Nomes.Free;
end;

{ Funciona com os parametros CHAVES/VALOR.
  Values recupera os valores das células }
procedure TForm1.Btn_ValuesClick(Sender: TObject);
begin
  Lista_Nomes:=TStringList.Create;
  Lista_Nomes.CommaText:= 'Alex=34, Jana=23, Roberta=52';
  ShowMessage('Itens da lista: ' + #13
            + Lista_Nomes[0]  + #13
            + Lista_Nomes[1]  + #13
            + Lista_Nomes[2]  + #13#13
            + 'Acessando pela chave: ' + #13
            + Lista_Nomes.Values['Jana'] +#13
            + 'Acessando pelo indice: ' + #13
            + Lista_Nomes.ValueFromIndex[1]);

  Lista_Nomes.Free;
end;

{ Duplicate ignora, aceita e gera excessões, para itens
  duplicados, de acordo com sua configuração }
procedure TForm1.Btn_DuplicateClick(Sender: TObject);
begin
  Lista_Numeros:= TStringList.Create;
  Lista_Principal:= TStringList.Create;

  Lista_Principal.Add('1;23;45;45;657;22;22;22;22;098;098;098;567;6;6;98;');

  Lista_Numeros.Sorted := true; // Falso o duplicates nâo funciona
  Lista_Numeros.Duplicates:= dupIgnore; // Ignorar duplicados

  StrToLista(Lista_Numeros,Lista_Principal[0],';',true);
  ShowMessage('Duplicados ignorados: ' + #13
            + Lista_Numeros.Text);

  Lista_Numeros.Clear;  //Limpar lista

  Lista_Numeros.Duplicates:= dupAccept;  // Aceitar duplicados

  StrToLista(Lista_Numeros,Lista_Principal[0],';',true);
  ShowMessage('Duplicados Aceitos: ' + #13
            + Lista_Numeros.Text);

  Lista_Numeros.Free;
  Lista_Principal.Free;
end;

{ Insere um item em uma posição específica}
procedure TForm1.Btn_InsertClick(Sender: TObject);
begin
  Lista_Principal:= TStringList.Create;

  Lista_Principal.Insert(0,'Manga;Mamão;Maçã;Kiwi;Banana;Laranja;Uva;Abacate;');
  Lista_Principal.Insert(1,'Jana;Macelo;Carlos;Henrique;Marcos;Eren;Marcia;');
  ShowMessage('Inserindo itens com posição: ' + #13
            + Lista_Principal.Text);

  Lista_Principal.Free;
end;

{ Deleta um item da lista pelo índice }
procedure TForm1.Btn_DeleteClick(Sender: TObject);
begin
  Lista_Principal:= TStringList.Create;
  Lista_Frutas:= TStringList.Create;
  Lista_Separada:= TStringList.Create;

  Lista_Principal.Add('Manga;Mamão;Maçã;Kiwi;Banana;Laranja;Uva;Abacate;^Jana;Macelo;Carlos;Henrique;Marcos;Eren;Marcia;^1;23;45;657;22;098;567;6;98;^');
  StrToLista(Lista_Separada,Lista_Principal[0],'^',true);
  StrToLista(Lista_Frutas,Lista_Separada[0],';',true);

  ShowMessage('Lista sem Delete: ' + #13
            + Lista_Frutas.Text);

  Lista_Frutas.Delete(0);

  ShowMessage('Lista após Deletar o índice 0: ' + #13
            + Lista_Frutas.Text);

  Lista_Principal.Free;
  Lista_Separada.Free;
  Lista_Frutas.Free;
end;

{Move o item para a posição escolhida }
procedure TForm1.Btn_MoveClick(Sender: TObject);
begin
  Lista_Principal:= TStringList.Create;
  Lista_Nomes:= TStringList.Create;

  Lista_Principal.Add('Jana;Macelo;Carlos;Henrique;Marcos;Eren;Marcia;');
  StrToLista(Lista_Nomes,Lista_Principal[0],';',true);
  ShowMessage('Lista antes de mover: ' + #13
             + Lista_Nomes.Text);

  Lista_Nomes.Move(0,2);

  ShowMessage('Movendo 0 para 2: ' + #13
             + Lista_Nomes.Text);

  Lista_Principal.Free;
  Lista_Nomes.Free;
end;

{ Troca de lugar dois itens }
procedure TForm1.Btn_ExchangeClick(Sender: TObject);
begin
  Lista_Numeros:= TStringList.Create;
  
  Lista_Numeros.Add(IntToStr(2));
  Lista_Numeros.Add(IntToStr(78));
  Lista_Numeros.Add(IntToStr(456));
  Lista_Numeros.Add(IntToStr(95));
  Lista_Numeros.Add(IntToStr(14));
  Lista_Numeros.Add(IntToStr(23));

  ShowMessage('Lista anterior: ' + #13
            + Lista_Numeros.Text);

  Lista_Numeros.Exchange(2,4);
  ShowMessage('Lista depois da troca: ' + #13
            + Lista_Numeros.Text);
            
  Lista_Numeros.Free;
end;

{ Encontra o indice do item }
procedure TForm1.Btn_IndexOfClick(Sender: TObject);
begin
  Lista_Frutas:= TStringList.Create;

  Lista_Frutas.Add('Maçã');
  Lista_Frutas.Add('Banana');
  Lista_Frutas.Add('Laranja');
  Lista_Frutas.Add('Abacate');

  ShowMessage('Lista completa: ' + #13#13
            + Lista_Frutas.Text);
  ShowMessage('Posição da "Laranja": ' + IntToStr(Lista_Frutas.IndexOf('Laranja')));

  Lista_Frutas.Free;
end;

{ Concatena duas listas }
procedure TForm1.Btn_AddStringsClick(Sender: TObject);
begin
  Lista_Principal:= TStringList.Create;
  Lista_Frutas:= TStringList.Create;

  Lista_Principal.Add('Lista 1');
  Lista_Principal.Add('Lista 2');
  Lista_Principal.Add('Lista 3');
  ShowMessage('Lista 1 original: ' + #13#13
            + Lista_Principal.Text);

  Lista_Frutas.Add('Laranja');
  Lista_Frutas.Add('Tomate');
  Lista_Frutas.Add('Morango');
  Lista_Frutas.Add('Banana');
  Lista_Frutas.Add('Kiwi');
  ShowMessage('Lista 2: ' + #13#13
            + Lista_Frutas.Text);

  Lista_Principal.AddStrings(Lista_Frutas);    //concatenação
  ShowMessage('Lista 1 concatenada com a 2: ' + #13#13
            + Lista_Principal.Text);

  Lista_Principal.Free;
  Lista_Frutas.Free;
end;

{ Substitui listas }
procedure TForm1.Btn_AssingClick(Sender: TObject);
begin
  Lista_Principal:= TStringList.Create;
  Lista_Numeros:= TStringList.Create;
  Lista_Separada:= TStringList.Create;

  Lista_Numeros.Add('1');
  Lista_Numeros.Add('2');
  Lista_Numeros.Add('3');
  ShowMessage('Lista Original: ' + #13
            + Lista_Numeros.Text);

  Lista_Principal.Add('1;23;45;657;22;098;567;6;98;');
  StrToLista(Lista_Separada,Lista_Principal[0],';',true);

  Lista_Numeros.Assign(Lista_Separada);  //Recebe uma lista

  ShowMessage('Lista modificada: ' + #13
            + Lista_Numeros.Text);

  Lista_Principal.Free;
  Lista_Separada.Free;
  Lista_Numeros.Free;
end;

procedure TForm1.Btn_ExpClick(Sender: TObject);
begin
  Lista_Principal:= TStringList.Create;
  Lista_Separada:= TStringList.Create;
  Lista_Frutas:= TStringList.Create;
  Lista_Nomes:= TStringList.Create;
  Lista_Numeros:= TStringList.Create;

  Lista_Principal.Add('Manga;Mamão;Laranja;Maçã;Kiwi;Banana;Maçã;Laranja;Uva;Abacate;Maçã;^Jana;Eren;Macelo;Carlos;Henrique;Eren;Macelo;Marcos;Eren;Marcia;^1;23;6;45;657;1;6;22;098;23;1;567;6;1;98;^');
  StrToLista(Lista_Separada,Lista_Principal[0],'^',true);

  //Lista Frutas
  Lista_Frutas.Sorted:= true;
  Lista_Frutas.Duplicates:= dupIgnore;
  StrToLista(Lista_Frutas,Lista_Separada[0],';',true);
  Lista_Frutas.Exchange(1,2);
  //Lista_Frutas.Move(0,3);     Move nao funciona quando o sorted esta ativado
  ShowMessage('Frutas: ' + #13 + Lista_Frutas.Text);

  //Lista Nomes
  Lista_Nomes.Sorted:= False;
  Lista_Nomes.Duplicates:= dupAccept;
  StrToLista(Lista_Nomes,Lista_Separada[1],';',true);
  Lista_Nomes.Insert(0,'Ronaldo');
  Lista_Nomes.Insert(5,'Ana Paula');
  Lista_Nomes.Insert(3, 'Jeferson');
  Lista_Nomes.Add('Henrique');
  ShowMessage('Nomes: ' + #13 + Lista_Nomes.Text);

  //Lista Números
  Lista_Numeros.Sorted:= false; 
  Lista_Numeros.Duplicates:= dupIgnore;
  StrToLista(Lista_Numeros,Lista_Separada[2],';',true);
  Lista_Numeros.Move(0,5);
  ShowMessage('Números: ' + #13 + Lista_Numeros.Text);


end;

end.
