object Form4: TForm4
  Left = 499
  Top = 166
  Width = 983
  Height = 675
  Caption = 'Grafik dan Stringgrid 2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 48
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object Label2: TLabel
    Left = 120
    Top = 88
    Width = 101
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object Label3: TLabel
    Left = 120
    Top = 128
    Width = 50
    Height = 13
    Caption = 'FAKULTAS'
  end
  object StringGrid1: TStringGrid
    Left = 488
    Top = 32
    Width = 320
    Height = 120
    TabOrder = 0
  end
  object Button1: TButton
    Left = 120
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 560
    Top = 184
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object Chart1: TChart
    Left = 120
    Top = 240
    Width = 689
    Height = 305
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 3
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object edt1: TEdit
    Left = 256
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 256
    Top = 48
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      '2017'
      '2018'
      '2019'
      '2020'
      '2021'
      '2022'
      '2023')
  end
  object cbb2: TComboBox
    Left = 256
    Top = 128
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'FKIP'
      'FISIP'
      'FKM'
      'FAPERTA'
      'FATEK'
      'FTI'
      'FEKON'
      'HUKUM'
      'FSI'
      'ILMU FARMASI')
  end
  object Button2: TButton
    Left = 224
    Top = 184
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 320
    Top = 184
    Width = 75
    Height = 25
    Caption = 'CLEAR ALL'
    TabOrder = 8
    OnClick = Button3Click
  end
end
