unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, SqlFun;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox2: TGroupBox;
    StringGrid2: TStringGrid;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    procedure GeraLista(lista:TStringList;ForOrWhile: String);
    procedure ForSeparaStringList(lista:TStringList);
    procedure ForPreencheRecord;
    procedure ForRecordToGrid;
  public
    { Public declarations }
  end;

type
  TEmpresa = record
    nome: String;
    lucro3meses: Array[0..3] of Double;
    quantFuncionarios: Integer;
end;

var
  Form1: TForm1;
  cont: Integer;
  dadosEmpresa: Array[0..2] of TEmpresa;

implementation

{$R *.dfm}

//StringList
procedure TForm1.Button1Click(Sender: TObject);
var lista: TStringList;
begin
  StringGrid1.ClearGrid(2);
  lista:= TStringList.Create;

  GeraLista(lista,'For');
  ForSeparaStringList(lista);

  lista.Free;
end;

procedure TForm1.ForSeparaStringList(lista:TStringList);
var i:Integer;
    listaAux: TStringList;

    procedure ForAdicionaTextoGrid(lista: TStringList;contRow: Integer);
    var col,row, i:Integer;
    begin
      row:=contRow;
      StringGrid1.RowCount:=row;
      for col:=0 to lista.Count -1 do begin
        StringGrid1.ColCount:= col;
        StringGrid1.Cells[col, row]:= lista[col];
      end;
    end;
begin
  listaAux:= TStringList.Create;
  for i:=0 to lista.Count -1 do begin
    StrToLista(lista,lista[i],'|',true);
  end;
  for i:=0 to lista.Count -1 do begin
    StrToLista(listaAux,lista[i],'^',true);
    ForAdicionaTextoGrid(listaAux,i);  // adicionando no grid
  end;
  StringGrid1.FixedRows:=1;
  listaAux.Free;
end;

procedure TForm1.GeraLista(lista:TStringList;ForOrWhile: String);
begin
  if ForOrWhile = 'For' then begin
    lista.Add('Nome^Idade^Departamento^Empresa^Email^Telefone^Endereco|'+
              'Ana^28^Produtos^MarcoCia^ana@gmail.com^789546123^Aurora|' +
              'Carla^23^Cosmeticos^Rossoni^carla@gmail.com^123456789^Alameda|' +
              'Ronaldo^54^Bebidas^Markita^ronaldo@gmail.com^456789123^NovoSol|' +
              'Levi^54^Bebidas^Aurora^levi@gmail.com^345987562^Solsticio|' +
              'Thorne^34^Cosmeticos^CeA^thorne@gmail.com^951753852^Outonal|' +
              'Wanda^45^Estufa^Amanhecer^wanda@gmail.com^654975321^Rodovia|' +
              'Cassiano^29^Internacional^RuralEx^casssiano@gmail.com^1657953285^Rural|');
  end else if ForOrWhile = 'While' then begin
    with lista do begin
      Add('Banana|Arvore|Fruta|Disponivel');
      Add('Ma��|Arvore|Fruta|Indisponivel');
      Add('Morango|Terra|Fruta|Indisponivel');
      Add('P�ra|Arvore|Fruta|Disponivel');
      Add('Kiwi|Terra|Fruta|Indisponivel');
      Add('Jaca|Arvore|Fruta|Disponivel');
    end;
  end;
end;

// Array -----
procedure TForm1.Button2Click(Sender: TObject);
var Produtos: Array[0..3,0..3] of String;

    procedure ForPreencheArray;
    begin
      Produtos[0][0]:= 'Nome';  Produtos[1][0]:='Validade'; Produtos[2][0]:='Produtora';
      Produtos[0][1]:= 'Banana';Produtos[1][1]:='10/12/12'; Produtos[2][1]:='Aurora';
      Produtos[0][2]:= 'Ma�a';  Produtos[1][2]:='20/12/12'; Produtos[2][2]:='Autonomo';
    end;
    procedure ForArrayToGrid;
    var i,j: Integer;
    begin
      for i:=0 to High(Produtos) do begin
        for j:=0 to High(Produtos) do begin
          StringGrid1.ColCount:=i;
          StringGrid1.RowCount:=j;
          StringGrid1.Cells[i,j]:= Produtos[i][j];
        end;
      end;
    end;
begin
  StringGrid1.ClearGrid(2);
  ForPreencheArray;
  ForArrayToGrid;
  StringGrid1.FixedRows:=1;
end;

// Record ----
procedure TForm1.Button3Click(Sender: TObject);
begin
  StringGrid1.ClearGrid(2);
  ForPreencheRecord;
  ForRecordToGrid;
end;

procedure TForm1.ForPreencheRecord;
begin
  dadosEmpresa[0].nome:='Aurora';
  dadosEmpresa[0].lucro3meses[0]:= 456213;
  dadosEmpresa[0].lucro3meses[1]:= 564584;
  dadosEmpresa[0].lucro3meses[2]:= 454544;
  dadosEmpresa[0].quantFuncionarios:= 512;

  dadosEmpresa[1].nome:='Nova City';
  dadosEmpresa[1].lucro3meses[0]:= 111111;
  dadosEmpresa[1].lucro3meses[1]:= 85788;
  dadosEmpresa[1].lucro3meses[2]:= 7425242;
  dadosEmpresa[1].quantFuncionarios:= 214;

  dadosEmpresa[2].nome:='Engenho';
  dadosEmpresa[2].lucro3meses[0]:= 64545455;
  dadosEmpresa[2].lucro3meses[1]:= 84245252;
  dadosEmpresa[2].lucro3meses[2]:= 425424586;
  dadosEmpresa[2].quantFuncionarios:= 1000;
end;

procedure TForm1.ForRecordToGrid;
var i, j: Integer;
begin
  StringGrid1.ColCount:=5;
  StringGrid1.Cells[0,0]:= 'Nome';
  StringGrid1.Cells[1,0]:= '1 mes';
  StringGrid1.Cells[2,0]:= '2 mes';
  StringGrid1.Cells[3,0]:= '3 mes';
  StringGrid1.Cells[4,0]:= 'Qtd Func';
  for i:=0 to High(dadosEmpresa) do begin
    StringGrid1.Cells[0,i+1]:= dadosEmpresa[i].nome;
    StringGrid1.Cells[1,i+1]:= FloatToStr(dadosEmpresa[i].lucro3meses[0]);
    StringGrid1.Cells[2,i+1]:= FloatToStr(dadosEmpresa[i].lucro3meses[1]);
    StringGrid1.Cells[3,i+1]:= FloatToStr(dadosEmpresa[i].lucro3meses[2]);
    StringGrid1.Cells[4,i+1]:= IntToStr(dadosEmpresa[i].quantFuncionarios);
    StringGrid1.RowCount:=i+2;
  end;
  StringGrid1.FixedRows:=1;
end;

procedure TForm1.Button4Click(Sender: TObject);
var listarFrutas: TStringList;

    procedure WhileSeparaLista(Lista: TStringList);
    var col,row,j,i: Integer;
        ListaAux: TStringList;
    begin
      i:=0;
      ListaAux:= TStringList.Create;
      while i<Lista.Count do begin
        StrToLista(ListaAux,Lista[i],'|',True);
        StringGrid2.RowCount:= i;
        col:=0;
        while col<ListaAux.Count  do begin
          StringGrid2.ColCount:= col;
          StringGrid2.Cells[col,i]:=ListaAux[col];
          col:=col+1;
        end;
        i:=i+1;
      end;
    end;
begin
  listarFrutas:= TStringList.Create;
  GeraLista(listarFrutas,'While');
  WhileSeparaLista(listarFrutas);
  listarFrutas.Free;
end;

procedure TForm1.Button5Click(Sender: TObject);
var numeros: Array[0..10,0..10] of Integer;
    i, j: Integer;

    procedure PreencheArray;
    begin
      i:=0;
      while i<High(numeros) do begin
        j:=0;
        while j<High(numeros) do begin
          numeros[i][j]:= ((i*6)+7)+j;
          j:=j+1;
        end;
      i:=i+1;
      end;
    end;
    
    procedure ArraytoGrid;
    begin
      i:=0;
      while i<High(numeros) do begin
        j:=0;
        while j<High(numeros) do begin
          StringGrid2.ColCount:=i;
          StringGrid2.RowCount:=j;
          StringGrid2.Cells[i,j]:= IntToStr(numeros[i][j]);
          j:=j+1;
        end;
        i:=i+1;
      end;
    end;
begin
  PreencheArray;
  ArrayTogrid;
end;

procedure TForm1.Button6Click(Sender: TObject);
var empresa: Array[0..2] of TEmpresa;
    i,j: Integer;
begin
  StringGrid2.ClearGrid(2);
  i:=0;
  StringGrid2.RowCount:=length(empresa);
  StringGrid2.ColCount:=5;

  empresa[0].nome:='Teste Novo';
  while i< High(empresa[0].lucro3meses) do begin
    empresa[0].lucro3meses[i]:=(((500*6)*i)*12)+4;
    i:=i+1;
  end;
  empresa[0].quantFuncionarios:=456;

  i:=0;
  empresa[1].nome:='Aurora';
  while i< High(empresa[1].lucro3meses) do begin
    empresa[1].lucro3meses[i]:=(((3434*6)*i)*12)+45;
    i:=i+1;
  end;
  empresa[1].quantFuncionarios:=789;

  i:=0;
  empresa[2].nome:='Lagoa Azul';
  while i< High(empresa[2].lucro3meses) do begin
    empresa[2].lucro3meses[i]:=(((333*6)*i)*12)+13;
    i:=i+1;
  end;
  empresa[2].quantFuncionarios:=1235;

  j:=0;
  while j<=High(empresa) do begin
    StringGrid2.Cells[0,j]:= empresa[j].nome;
    StringGrid2.Cells[1,j]:= FloatToStr(empresa[j].lucro3meses[0]);
    StringGrid2.Cells[2,j]:= FloatToStr(empresa[j].lucro3meses[1]);
    StringGrid2.Cells[3,j]:= FloatToStr(empresa[j].lucro3meses[2]);
    StringGrid2.Cells[4,j]:= IntToStr(empresa[j].quantFuncionarios);
    j:=j+1;
  end;
end;

end.
