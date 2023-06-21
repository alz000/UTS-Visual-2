object Form2: TForm2
  Left = 642
  Top = 247
  Width = 616
  Height = 454
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
    Width = 36
    Height = 13
    Caption = 'NILAI 1'
  end
  object Label2: TLabel
    Left = 24
    Top = 200
    Width = 36
    Height = 13
    Caption = 'NILAI 2'
  end
  object Label3: TLabel
    Left = 24
    Top = 232
    Width = 36
    Height = 13
    Caption = 'NILAI 3'
  end
  object Label4: TLabel
    Left = 392
    Top = 192
    Width = 32
    Height = 13
    Caption = 'TOTAL'
  end
  object Label5: TLabel
    Left = 392
    Top = 224
    Width = 34
    Height = 13
    Caption = 'GRADE'
  end
  object Panel1: TPanel
    Left = 104
    Top = 24
    Width = 281
    Height = 57
    Caption = 'Contoh Kondisional'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 128
    Top = 112
    Width = 81
    Height = 33
    Caption = 'Nilai'
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 248
    Top = 112
    Width = 81
    Height = 33
    Caption = 'Bobot'
    TabOrder = 2
  end
  object Edtnilai1: TEdit
    Left = 128
    Top = 168
    Width = 81
    Height = 21
    TabOrder = 3
  end
  object Edtnilai2: TEdit
    Left = 128
    Top = 200
    Width = 81
    Height = 21
    TabOrder = 4
  end
  object Edtnilai3: TEdit
    Left = 128
    Top = 232
    Width = 81
    Height = 21
    TabOrder = 5
  end
  object Edtbobot1: TEdit
    Left = 248
    Top = 168
    Width = 81
    Height = 21
    TabOrder = 6
  end
  object Edtbobot2: TEdit
    Left = 248
    Top = 200
    Width = 81
    Height = 21
    TabOrder = 7
  end
  object Edtbobot3: TEdit
    Left = 248
    Top = 232
    Width = 81
    Height = 21
    TabOrder = 8
  end
  object Edttotal: TEdit
    Left = 464
    Top = 192
    Width = 81
    Height = 21
    TabOrder = 9
  end
  object Edtgrade: TEdit
    Left = 464
    Top = 224
    Width = 81
    Height = 21
    TabOrder = 10
  end
  object Button1: TButton
    Left = 128
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 464
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 12
  end
  object Button3: TButton
    Left = 248
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 13
    OnClick = Button3Click
  end
end
