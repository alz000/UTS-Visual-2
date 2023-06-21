object Form2: TForm2
  Left = 397
  Top = 201
  Width = 577
  Height = 554
  Caption = 'Kondisional'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 168
    Width = 88
    Height = 13
    Caption = 'NILAI KEHADIRAN'
  end
  object Label2: TLabel
    Left = 24
    Top = 208
    Width = 63
    Height = 13
    Caption = 'NILAI TUGAS'
  end
  object Label3: TLabel
    Left = 24
    Top = 248
    Width = 49
    Height = 13
    Caption = 'NILAI UTS'
  end
  object Label4: TLabel
    Left = 400
    Top = 184
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Label5: TLabel
    Left = 400
    Top = 216
    Width = 29
    Height = 13
    Caption = 'Grade'
  end
  object Label6: TLabel
    Left = 24
    Top = 288
    Width = 69
    Height = 13
    Caption = 'NILAI HARIAN'
  end
  object Label7: TLabel
    Left = 24
    Top = 328
    Width = 50
    Height = 13
    Caption = 'NILAI UAS'
  end
  object Label8: TLabel
    Left = 400
    Top = 248
    Width = 45
    Height = 13
    Caption = 'Kelulusan'
  end
  object Panel1: TPanel
    Left = 24
    Top = 8
    Width = 513
    Height = 49
    Caption = 'Contoh Kondisional'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 160
    Top = 96
    Width = 81
    Height = 33
    Caption = 'Nilai'
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 264
    Top = 96
    Width = 81
    Height = 33
    Caption = 'Bobot'
    TabOrder = 2
  end
  object Edtnilai1: TEdit
    Left = 160
    Top = 168
    Width = 81
    Height = 21
    TabOrder = 3
  end
  object Edtnilai2: TEdit
    Left = 160
    Top = 208
    Width = 81
    Height = 21
    TabOrder = 4
  end
  object Edtnilai3: TEdit
    Left = 160
    Top = 248
    Width = 81
    Height = 21
    TabOrder = 5
  end
  object Edtbobot1: TEdit
    Left = 264
    Top = 168
    Width = 81
    Height = 21
    TabOrder = 6
  end
  object Edtbobot2: TEdit
    Left = 264
    Top = 208
    Width = 81
    Height = 21
    TabOrder = 7
  end
  object Edtbobot3: TEdit
    Left = 264
    Top = 248
    Width = 81
    Height = 21
    TabOrder = 8
  end
  object Edttotal: TEdit
    Left = 456
    Top = 184
    Width = 81
    Height = 21
    TabOrder = 9
  end
  object Edtgrade: TEdit
    Left = 456
    Top = 216
    Width = 81
    Height = 21
    TabOrder = 10
  end
  object Button1: TButton
    Left = 160
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 456
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 13
    OnClick = Button3Click
  end
  object Edtnilai4: TEdit
    Left = 160
    Top = 288
    Width = 81
    Height = 21
    TabOrder = 14
  end
  object Edtbobot4: TEdit
    Left = 264
    Top = 288
    Width = 81
    Height = 21
    TabOrder = 15
  end
  object Edtnilai5: TEdit
    Left = 160
    Top = 328
    Width = 81
    Height = 21
    TabOrder = 16
  end
  object Edtbobot5: TEdit
    Left = 264
    Top = 328
    Width = 81
    Height = 21
    TabOrder = 17
  end
  object Edtlulus: TEdit
    Left = 456
    Top = 248
    Width = 81
    Height = 21
    TabOrder = 18
  end
end
