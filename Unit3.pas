unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, StdCtrls, Buttons, ExtCtrls, TeeProcs, Chart,
  Grids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    combobox1: TComboBox;
    Edit1: TEdit;
    Chart1: TChart;
    BitBtn1: TBitBtn;
    psrsSeries1: TPieSeries;
    Button1: TButton;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  combobox1.Items.add('COVID 19');
  combobox1.Items.add('FLU BIASA');
  combobox1.Items.add('DEMAM');
  combobox1.Items.add('RINDU');
  StringGrid1.Cells[0,0]:='JENIS PENYAKIT';
  StringGrid1.Cells[0,1]:='COVID 19';
  StringGrid1.Cells[0,2]:='FLU BIASA';
  StringGrid1.Cells[0,3]:='DEMAM';
  StringGrid1.Cells[0,4]:='RINDU';
  StringGrid1.Cells[1,0]:='JUMLAH';
 Chart1.Title.Text.add('GRAFIK INFORMASI JENIS PENYAKIT');
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
  var i: integer;
begin
  for i:=1 to stringgrid1.rowcount-1 do
  chart1.Series[0].Add(strtofloat(stringgrid1.cells[1,i]),stringgrid1.cells[0,i]);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  stringgrid1.Cells[1,combobox1.ItemIndex+1]:=Edit1.Text;
end;

end.
