unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  Buttons;

type
  TForm4 = class(TForm)
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    BitBtn1: TBitBtn;
    Chart1: TChart;
    Series1: TPieSeries;
    edt1: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure charadd;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
  StringGrid1.RowCount:=1;
  StringGrid1.ColCount:=4;
  StringGrid1.Cells[0,0]:='NO';
  StringGrid1.Cells[1,0]:='JUMLAH TERDAFTAR';
  StringGrid1.Cells[2,0]:='FAKULTAS';
  StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';

  StringGrid1.ColWidths[0]:=20;
  StringGrid1.ColWidths[1]:=70;
  StringGrid1.ColWidths[2]:=170;
  StringGrid1.ColWidths[3]:=100;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  StringGrid1.RowCount := StringGrid1.RowCount+1;
  StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount - 1);
  StringGrid1.Cells[1,StringGrid1.RowCount -1] := edt1.Text;
  StringGrid1.Cells[2,StringGrid1.RowCount -1] := cbb2.Text;
  StringGrid1.Cells[3,StringGrid1.RowCount -1] := cbb1.Text;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
  var i: integer;
begin
  for i:=1 to StringGrid1.rowcount-1 do
  begin
    Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
  end;
  end;


procedure TForm4.charadd;
var i:Integer;
begin
  Chart1.Series[0].Clear; //membersihkan tampilan char
for i:=1 to StringGrid1.rowcount-1 do
begin
  Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
end;
end;

procedure TForm4.Button2Click(Sender: TObject);
var i:Integer;
begin
  Chart1.Series[0].Clear; //membersihkan tampilan char
for i:=1 to StringGrid1.rowcount-1 do
begin
  Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
end;
end;


procedure TForm4.Button3Click(Sender: TObject);
begin
StringGrid1.RowCount:= StringGrid1.RowCount-
MAX_PATH; //hapus isi data stringgrid all
charadd; //procedure
end;

end.
