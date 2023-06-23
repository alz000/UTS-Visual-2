unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, TeEngine, Series, ExtCtrls,
  TeeProcs, Chart;

type
  TForm5 = class(TForm)
    con1: TADOConnection;
    qry1: TADOQuery;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    btn1: TButton;
    cht1: TChart;
    Series1: TBarSeries;
    procedure btn1Click(Sender: TObject);
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
  for i:=1 to qry1.RecordCount do
begin
  cht1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.Fields[2].AsString);
  qry1.Next;
end;
end;

end.
