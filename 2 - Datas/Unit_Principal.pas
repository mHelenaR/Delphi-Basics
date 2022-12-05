unit Unit_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DateUtils;

type
  TForm1 = class(TForm)
    Btn_DayMonth: TButton;
    Btn_Encode: TButton;
    Btn_OfWeek: TButton;
    Btn_OfYear: TButton;
    Btn_Between: TButton;
    Btn_InAMonth: TButton;
    Btn_InAYear: TButton;
    Btn_DSpan: TButton;
    Btn_Decode: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Btn_IncDay: TButton;
    Btn_IncMonth: TButton;
    Btn_RecDate: TButton;
    Btn_RecHour: TButton;
    procedure Btn_DayMonthClick(Sender: TObject);
    procedure Btn_EncodeClick(Sender: TObject);
    procedure Btn_OfWeekClick(Sender: TObject);
    procedure Btn_OfYearClick(Sender: TObject);
    procedure Btn_BetweenClick(Sender: TObject);
    procedure Btn_InAMonthClick(Sender: TObject);
    procedure Btn_InAYearClick(Sender: TObject);
    procedure Btn_DSpanClick(Sender: TObject);
    procedure Btn_DecodeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Btn_IncDayClick(Sender: TObject);
    procedure Btn_IncMonthClick(Sender: TObject);
    procedure Btn_RecDateClick(Sender: TObject);
    procedure Btn_RecHourClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

  {    FORMATOS DEFINIDOS
  yy     = Year last 2 digits
  yyyy     = Year as 4 digits
  m     = Month number no-leading 0
  mm     = Month number as 2 digits
  mmm     = Month using ShortDayNames (Jan)
  mmmm     = Month using LongDayNames  (January)
  d     = Day number no-leading 0
  dd     = Day number as 2 digits
  ddd     = Day using ShortDayNames (Sun)
  dddd     = Day using LongDayNames  (Sunday)
  }

procedure TForm1.Btn_DayMonthClick(Sender: TObject);
var
  Day_Month: TDateTime;
begin
  //Essa conversão segue a formatação Mês - Dia - Ano
  Day_Month := StrToDate('30/12/2000');
  
  ShowMessage('Data: ' + DateToStr(Day_Month) + #13
            + 'Dia do mês: ' + IntToStr(DayOfTheMonth(Day_Month)));

end;

procedure TForm1.Btn_EncodeClick(Sender: TObject);
var
  Date1, Date2, Date3, Date4, Date5, Date6: TDateTime;
begin
  Date1:= EncodeDateTime(2000,12,20,10,20,12,120);
  LongTimeFormat :='hh:mm:ss.z';                      //Formata horas ou data

  //Recebe o ano o número da semana, imprime a primeira segunda
  Date2:= EncodeDateWeek(2022,1);

  //Recebe o ano e o número dia entre 0 e 366
  Date3:= EncodeDateDay(2022,180);

  //Recebe Ano - Mês - Numero da semana do mes 1 a 5 - Numero do dia da semana 1 a 7
  Date4:= EncodeDateMonthWeek(2022,12,2,1);

  //Recebe Ano - Mês - Numero da semana do mes 1 a 5 - Numero do dia da semana 1 a 7
  Date5:=EncodeDayOfWeekInMonth(2022,11,1,4);

  //Hora - Min - Sec - MilSec
  Date6:= EncodeTime(14,28,12,56);

  ShowMessage('Encode Date Time: '        + #13
            + 'Data: ' + DateToStr(Date1) + #13
            + 'Hora: ' + TimeToStr(Date1) + #13#13
            + 'Encode Date Week: '        + #13
            + 'Data: ' + DateToStr(Date2) + #13#13
            + 'Encode Date Day: '         + #13
            + 'Data: ' + DateToStr(Date3) + #13#13
            + 'Encode Date Month Week: '  + #13
            + 'Data: ' + DateToStr(Date4) + #13#13
            + 'Encode Day of Week in Mouth: ' + #13
            + 'Data: ' + DateToStr(Date5) + #13#13
            + 'Encode Time: '             + #13
            + 'Data: ' + TimeToStr(Date6) + #13);
end;

procedure TForm1.Btn_OfWeekClick(Sender: TObject);
var
  Date1: TDateTime;
  Dia_Semana: array[1..7] of String;
begin
  Dia_Semana[1]:= 'Domingo';
  Dia_Semana[2]:= 'Segunda';
  Dia_Semana[3]:= 'Terça';
  Dia_Semana[4]:= 'Quarta';
  Dia_Semana[5]:= 'Quinta';
  Dia_Semana[6]:= 'Sexta';
  Dia_Semana[7]:= 'Sábado';

  Date1:= EncodeDate(2022,12,25);

  //Encontra em qual dia da semana a data vai ocorrer
  ShowMessage('Natal de 2022 vai ser na(o): '+ Dia_Semana[DayOfWeek(Date1)]);
end;

procedure TForm1.Btn_OfYearClick(Sender: TObject);
var
  Date1: TDateTime;
begin
  Date1:= EncodeDate(2022,12,25);

  //Utiliza a data para retornar o número do dia do ano
  ShowMessage('O natal é o dia número: ' + IntToStr(DayOfTheYear(Date1)) + ' de 2022.');
end;

procedure TForm1.Btn_BetweenClick(Sender: TObject);
var
  Date1, Date2: TDateTime;
begin
  Date1:= EncodeDate(2020,12,25);
  Date2:= EncodeDate(2022,12,25);

  //Dias de diferença entre duas datas;
  ShowMessage('Dias de diferença: ' + IntToStr(DaysBetween(Date1,Date2)) + ' dias.');
end;

procedure TForm1.Btn_InAMonthClick(Sender: TObject);
var
  Result: Integer;
begin
  //Retorna quantos dias tem no mes utilizando inteiros ou datas
  Result:= DaysInAMonth(2022,11);
  DaysInMonth(EncodeDate(2022,11,12));

  ShowMessage('Dias no mês: ' + IntToStr(Result));
end;

procedure TForm1.Btn_InAYearClick(Sender: TObject);
var
  Result: Integer;

begin
  //Retorna a quantidade de dias no ano utilizando inteiros ou datas
  Result:= DaysInAYear(2022);
  DaysInYear(EncodeDate(2022,12,12));

  ShowMessage('Dias no ano: ' + IntToStr(Result));
end;

procedure TForm1.Btn_DSpanClick(Sender: TObject);
var
  Date1, Date2: TDateTime;
begin
  Date1:= EncodeDateTime(2020,12,25, 15,45,10,85);
  Date2:= EncodeDateTime(2022,12,25, 02,22,41,02);

  //Retorna em numeros fracionados a quantidade de dias de diferença
  ShowMessage(FloatToStr(DaySpan(Date1,Date2)));
end;

{As funções decode particionam a data}

procedure TForm1.Btn_DecodeClick(Sender: TObject);
var
  Date1: TDateTime;
  //O comando aceita apenas Word
  Ano, Mes, Dia, Semana: Word;
  Horas, Minutos, Segundos, Mil_Segundos: word;
begin
  Date1:= Now;

  //Adicionando um mês ao valor
  //Date1 := IncMonth(Date1);

  DecodeDateTime(Date1, Ano, Mes,Dia,Horas, Minutos, Segundos, Mil_Segundos);
  ShowMessage('Decode DateTime '              + #13#13
            + 'Data: '    + DateToStr(Date1)  + #13
            + 'Dia: '     + IntToStr(Dia)     + #13
            + 'Mês: '     + IntToStr(Mes)     + #13
            + 'Ano: '     + IntToStr(Ano)     + #13
            + 'Hora: '    + IntToStr(Horas)   + #13
            + 'Minuto: '  + IntToStr(Minutos) + #13
            + 'Segundo: ' + IntToStr(Segundos)+ #13
            + 'Mil Sec: ' + IntToStr(Mil_Segundos) + #13);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Date1: TDateTime;
  Ano, Mes, Dia, Semana: Word;
  Horas, Minutos, Segundos, Mil_Segundos: word;
begin
  Date1:= Now;

  DecodeDateWeek(Date1, Ano, Semana, Dia);
  ShowMessage('Decode Date Week '             + #13#13
            + 'Data: '    + DateToStr(Date1)  + #13
            + 'Dia: '     + IntToStr(Dia)     + #13
            + 'Semana: '  + IntToStr(Semana)  + #13
            + 'Ano: '     + IntToStr(Ano)     + #13);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Date1: TDateTime;
  Ano, Mes, Dia, Semana: Word;
  Horas, Minutos, Segundos, Mil_Segundos: word;
begin
  Date1:= Now;

  DecodeDateDay(Date1, Ano, Dia);
  ShowMessage('Decode Date Day '              + #13#13
            + 'Data: '    + DateToStr(Date1)  + #13
            + 'Dia: '     + IntToStr(Dia)     + #13
            + 'Ano: '     + IntToStr(Ano)     + #13);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Date1: TDateTime;
  Ano, Mes, Dia, Semana: Word;
  Horas, Minutos, Mil_Segundos: word;
begin
  Date1:= Now;

  DecodeDateMonthWeek(Date1,Ano, Mes, Semana, Dia);
  ShowMessage('Decode Date Month Week '       + #13#13
            + 'Data: '    + DateToStr(Date1)  + #13
            + 'Dia: '     + IntToStr(Dia)     + #13
            + 'Semana: '  + IntToStr(Semana)  + #13
            + 'Mes: '     + IntToStr(Mes)     + #13
            + 'Ano: '     + IntToStr(Ano)     + #13);
end;

procedure TForm1.Btn_IncDayClick(Sender: TObject);
var
  Date1, Increment, Decrement: TDateTime;
begin
  Date1:= Now;

  Increment:= IncDay(Date1);
  Decrement:= IncDay(Date1, -1);

  ShowMessage('Dia incrementado: ' + DateToStr(Increment) + #13
            + 'Dia Decrementado: ' + DateToStr(Decrement));
end;

procedure TForm1.Btn_IncMonthClick(Sender: TObject);
var
  Date1, Increment, Decrement: TDateTime;
begin
  Date1:= Now;

  Increment:= IncMinute(Date1);
  Decrement:= IncMinute(Date1, -10);

  ShowMessage('Minuto incrementado: ' + TimeToStr(Increment) + #13
            + 'Minuto Decrementado: ' + TimeToStr(Decrement));
end;

procedure TForm1.Btn_RecDateClick(Sender: TObject);
var
  Date1, Date2: TDateTime;
begin
  Date1:= Now;
  Date2:= RecodeDate(Date1, 2012,12,12);

  ShowMessage('Recode Date'     + #13#13
            + 'Data atual: '    + DateToStr(Date1) + #13
            + 'Data Alterada: ' + DateToStr(Date2));
end;

procedure TForm1.Btn_RecHourClick(Sender: TObject);
var
  Date1, Date2: TDateTime;
begin
  Date1:= Now;
  Date2 := RecodeTime(Date1, 7, 35, 22, 0);

  ShowMessage('Recode Date'     + #13#13
            + 'Hora atual: '    + TimeToStr(Date1) + #13
            + 'Hora Alterada: ' + TimeToStr(Date2));
end;

end.
