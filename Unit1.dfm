object Form1: TForm1
  Left = 257
  Top = 63
  Width = 1305
  Height = 687
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 32
    Width = 205
    Height = 13
    Caption = 'Program Pengenalan dasar Operator Delphi'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 72
    Height = 13
    Caption = 'Nilai Praktek I :'
  end
  object Label3: TLabel
    Left = 24
    Top = 104
    Width = 75
    Height = 13
    Caption = 'Nilai Praktek II :'
  end
  object Label4: TLabel
    Left = 144
    Top = 152
    Width = 23
    Height = 13
    Caption = 'Hasil'
  end
  object Label5: TLabel
    Left = 144
    Top = 176
    Width = 23
    Height = 13
    Caption = 'Hasil'
  end
  object Label6: TLabel
    Left = 144
    Top = 200
    Width = 23
    Height = 13
    Caption = 'Hasil'
  end
  object Label7: TLabel
    Left = 144
    Top = 224
    Width = 23
    Height = 13
    Caption = 'Hasil'
  end
  object Nil1: TEdit
    Left = 168
    Top = 80
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object Nil2: TEdit
    Left = 168
    Top = 104
    Width = 97
    Height = 21
    TabOrder = 1
  end
  object Ehtambah: TEdit
    Left = 184
    Top = 152
    Width = 97
    Height = 21
    TabOrder = 2
  end
  object ehkali: TEdit
    Left = 184
    Top = 176
    Width = 97
    Height = 21
    TabOrder = 3
  end
  object Ehbagi: TEdit
    Left = 184
    Top = 200
    Width = 97
    Height = 21
    TabOrder = 4
  end
  object ehkurang: TEdit
    Left = 184
    Top = 224
    Width = 97
    Height = 21
    TabOrder = 5
  end
  object Btambah: TButton
    Left = 24
    Top = 152
    Width = 97
    Height = 25
    Caption = 'Tambah'
    TabOrder = 6
    OnClick = BtambahClick
  end
  object Bkali: TButton
    Left = 24
    Top = 176
    Width = 97
    Height = 25
    Caption = 'Kali'
    TabOrder = 7
    OnClick = BkaliClick
  end
  object Bbagi: TButton
    Left = 24
    Top = 200
    Width = 97
    Height = 25
    Caption = 'Bagi'
    TabOrder = 8
    OnClick = BbagiClick
  end
  object Bkurang: TButton
    Left = 24
    Top = 224
    Width = 97
    Height = 25
    Caption = 'Kurang'
    TabOrder = 9
    OnClick = BkurangClick
  end
  object Bclose: TButton
    Left = 72
    Top = 280
    Width = 137
    Height = 41
    Caption = 'Close'
    TabOrder = 10
    OnClick = BcloseClick
  end
end
