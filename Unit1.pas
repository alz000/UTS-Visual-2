unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
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
    procedure BtambahClick(Sender: TObject);
    procedure BkaliClick(Sender: TObject);
    procedure BbagiClick(Sender: TObject);
    procedure BkurangClick(Sender: TObject);
    procedure BcloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

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

end.
