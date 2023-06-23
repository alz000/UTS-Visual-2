object Form1: TForm1
  Left = 482
  Top = 171
  Width = 436
  Height = 421
  Caption = 'Kalkulator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 40
    Top = 32
    Width = 57
    Height = 13
    Caption = 'INPUTAN 1'
  end
  object Label3: TLabel
    Left = 40
    Top = 56
    Width = 57
    Height = 13
    Caption = 'INPUTAN 2'
  end
  object Label4: TLabel
    Left = 40
    Top = 104
    Width = 65
    Height = 13
    Caption = 'Hasil Tambah'
  end
  object Label5: TLabel
    Left = 40
    Top = 144
    Width = 60
    Height = 13
    Caption = 'Hasil Kurang'
  end
  object Label6: TLabel
    Left = 40
    Top = 184
    Width = 43
    Height = 13
    Caption = 'Hasil Kali'
  end
  object Label7: TLabel
    Left = 40
    Top = 224
    Width = 79
    Height = 13
    Caption = 'Hasil Pembagian'
  end
  object Nil1: TEdit
    Left = 128
    Top = 32
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object Nil2: TEdit
    Left = 128
    Top = 56
    Width = 97
    Height = 21
    TabOrder = 1
  end
  object Ehtambah: TEdit
    Left = 128
    Top = 104
    Width = 97
    Height = 21
    TabOrder = 2
  end
  object ehkali: TEdit
    Left = 128
    Top = 184
    Width = 97
    Height = 21
    TabOrder = 3
  end
  object Ehbagi: TEdit
    Left = 128
    Top = 224
    Width = 97
    Height = 21
    TabOrder = 4
  end
  object ehkurang: TEdit
    Left = 128
    Top = 144
    Width = 97
    Height = 21
    TabOrder = 5
  end
  object Btambah: TButton
    Left = 280
    Top = 104
    Width = 97
    Height = 25
    Caption = 'Tambah'
    TabOrder = 6
    OnClick = BtambahClick
  end
  object Bkali: TButton
    Left = 280
    Top = 144
    Width = 97
    Height = 25
    Caption = 'Kali'
    TabOrder = 7
    OnClick = BkaliClick
  end
  object Bbagi: TButton
    Left = 280
    Top = 184
    Width = 97
    Height = 25
    Caption = 'Bagi'
    TabOrder = 8
    OnClick = BbagiClick
  end
  object Bkurang: TButton
    Left = 280
    Top = 224
    Width = 97
    Height = 25
    Caption = 'Kurang'
    TabOrder = 9
    OnClick = BkurangClick
  end
  object Bclose: TButton
    Left = 168
    Top = 296
    Width = 137
    Height = 41
    Caption = 'Close'
    TabOrder = 10
    OnClick = BcloseClick
  end
  object btn1: TButton
    Left = 280
    Top = 32
    Width = 97
    Height = 41
    Caption = 'Proses Semua'
    TabOrder = 11
    OnClick = btn1Click
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 16
    object UTS1: TMenuItem
      Caption = 'UTS'
      object Kondisional1: TMenuItem
        Caption = 'Kondisional'
        OnClick = Kondisional1Click
      end
      object GrafikdanStringgrid1: TMenuItem
        Caption = 'Grafik dan Stringgrid'
        OnClick = GrafikdanStringgrid1Click
      end
      object GrafikdanStringgrid21: TMenuItem
        Caption = 'Grafik dan Stringgrid 2'
        OnClick = GrafikdanStringgrid21Click
      end
      object DatabaseGrafikChart1: TMenuItem
        Caption = 'Database Grafik Chart'
        OnClick = DatabaseGrafikChart1Click
      end
    end
  end
end
