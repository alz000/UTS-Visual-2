unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Nil1: TEdit;
    Nil2: TEdit;
    Ehtambah: TEdit;
    ehkali: TEdit;
    Ehbagi: TEdit;
    ehkurang: TEdit;
    Btambah: TButton;
    Bkali: TButton;
    Bbagi: TButton;
    Bkurang: TButton;
    Bclose: TButton;
    MainMenu1: TMainMenu;
    UTS1: TMenuItem;
    Kondisional1: TMenuItem;
    GrafikdanStringgrid1: TMenuItem;
    GrafikdanStringgrid21: TMenuItem;
    DatabaseGrafikChart1: TMenuItem;
    btn1: TButton;
    procedure BtambahClick(Sender: TObject);
    procedure BkaliClick(Sender: TObject);
    procedure BbagiClick(Sender: TObject);
    procedure BkurangClick(Sender: TObject);
    procedure BcloseClick(Sender: TObject);
    procedure Kondisional1Click(Sender: TObject);
    procedure GrafikdanStringgrid1Click(Sender: TObject);
    procedure GrafikdanStringgrid21Click(Sender: TObject);
    procedure DatabaseGrafikChart1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.BtambahClick(Sender: TObject);

begin
  Ehtambah.Text:=inttostr(strtoint(Nil1.Text)+strtoint(Nil2.Text));
end;

procedure TForm1.BkaliClick(Sender: TObject);
begin
  ehkali.Text:=inttostr(strtoint(Nil1.Text)*strtoint(Nil2.Text));
end;

procedure TForm1.BbagiClick(Sender: TObject);
begin
Ehbagi.Text:=floattostr(strtoint(Nil1.Text)/strtoint(Nil2.Text));
end;

procedure TForm1.BkurangClick(Sender: TObject);
begin
ehkurang.Text:=inttostr(strtoint(Nil1.Text)-strtoint(Nil2.Text));
end;

procedure TForm1.BcloseClick(Sender: TObject);
begin
close;
end;

procedure TForm1.Kondisional1Click(Sender: TObject);
begin
Form2.show;
end;

procedure TForm1.GrafikdanStringgrid1Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm1.GrafikdanStringgrid21Click(Sender: TObject);
begin
  form4.show;
end;

procedure TForm1.DatabaseGrafikChart1Click(Sender: TObject);
begin
  form5.show
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  Ehtambah.Text:=inttostr(strtoint(Nil1.Text)+strtoint(Nil2.Text));
  ehkali.Text:=inttostr(strtoint(Nil1.Text)*strtoint(Nil2.Text));
  Ehbagi.Text:=floattostr(strtoint(Nil1.Text)/strtoint(Nil2.Text));
  ehkurang.Text:=inttostr(strtoint(Nil1.Text)-strtoint(Nil2.Text));
end;

end.
