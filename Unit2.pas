unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edtnilai1: TEdit;
    Edtnilai2: TEdit;
    Edtnilai3: TEdit;
    Edtbobot1: TEdit;
    Edtbobot2: TEdit;
    Edtbobot3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edttotal: TEdit;
    Edtgrade: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label6: TLabel;
    Edtnilai4: TEdit;
    Edtbobot4: TEdit;
    Edtnilai5: TEdit;
    Edtbobot5: TEdit;
    Label7: TLabel;
    Edtlulus: TEdit;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
 nil1, nil2, nil3, nil4, nil5, hasil : real ;
 b1, b2, b3, b4, b5 : real;
 grade, lulus :string;
begin
//berfungsi untuk mengambil data nilai
    nil1 := strtofloat(Edtnilai1.Text);
    nil2 := strtofloat(Edtnilai2.Text);
    nil3 := strtofloat(Edtnilai3.Text);
    nil4 := strtofloat(Edtnilai4.Text);
    nil5 := strtofloat(Edtnilai5.Text);
 //mengambil pesan data bobot
    b1 := strtofloat(Edtbobot1.Text)/100;
    b2 := strtofloat(Edtbobot2.Text)/100;
    b3 := strtofloat(Edtbobot3.Text)/100;
    b4 := strtofloat(Edtbobot4.Text)/100;
    b5 := strtofloat(Edtbobot5.Text)/100;
 //menghitung nilai akhir
    hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5 ;
 //menentukan grade nilai
    if (hasil >= 80) then
    grade:='A'
    else
    if (hasil >= 70) then
    grade :='B'
    else
    if (hasil >= 60) then
    grade := 'C'
    else
    if (hasil >= 50) then
    grade :='D'
    else
    grade :='E';
    if (hasil >= 60) then
    lulus :='Lulus'
    else
    lulus :='Tidak Lulus';
 //Hasil dari proses....
    Edttotal.Text := floattostr(hasil);
    Edtgrade.Text := grade;
    Edtlulus.Text := lulus;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Edtnilai1.Text := '';
  Edtnilai2.Text := '';
  Edtnilai3.Text := '';
  Edtnilai4.Text := '';
  Edtnilai5.Text := '';
  Edtbobot1.Text := '';
  Edtbobot2.Text := '';
  Edtbobot3.Text := '';
  Edtbobot4.Text := '';
  Edtbobot5.Text := '';
  Edttotal.Text := '';
  Edtgrade.Text := '';
  Edtlulus.Text := '';
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
close;
end;

end.
 