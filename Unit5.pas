unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, TeEngine, Series, ExtCtrls,
  TeeProcs, Chart, frxClass, frxDBSet;

type
  TForm5 = class(TForm)
    con1: TADOConnection;
    qry1: TADOQuery;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    btn1: TButton;
    cht1: TChart;
    Series1: TBarSeries;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    frxDBjadwal: TfrxDBDataset;
    frxjadwal: TfrxReport;
    frxDBdetailjadwal: TfrxDBDataset;
    frxdetailjadwal: TfrxReport;
    qry2: TADOQuery;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure frxjadwalClickObject(View: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
var i:Integer;
begin
  qry1.SQL.Clear;
  qry1.SQL.Add('select Count(no)as jumlah_kelas,sum(total_kehadiran) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
  qry1.Open;

  cht1.Series[0].Clear;
  for i:=1 to qry1.RecordCount do
begin
  cht1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.Fields[2].AsString);
  qry1.Next;
end;
  dbgrd1.Columns[2].Width:=90;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select *from jadwal_table');
qry1.Open;

dbgrd1.columns[0].Width:=30;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[5].Width:=50;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=90;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
cht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
dbgrd1.columns[0].Width:=30;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[5].Width:=50;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=90;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
frxjadwal.ShowReport();
end;

procedure TForm5.frxjadwalClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if View.Name ='Memo7' then
  begin
    qry2.SQL.Clear;
    qry2.SQL.Add('select *from jadwal_table where kelas="'+view.TagStr+'"');
    qry2.Open;

    frxdetailjadwal.ShowReport();
  end;
end;

end.
