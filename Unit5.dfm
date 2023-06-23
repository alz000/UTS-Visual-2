object Form5: TForm5
  Left = 363
  Top = 134
  Width = 875
  Height = 673
  Caption = 'Informasi Jadwal Praktikum Reguler'
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
  object dbgrd1: TDBGrid
    Left = 40
    Top = 96
    Width = 761
    Height = 201
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 648
    Top = 24
    Width = 145
    Height = 49
    Caption = 'Tampilkan Data Grafik'
    TabOrder = 1
    OnClick = btn1Click
  end
  object cht1: TChart
    Left = 216
    Top = 328
    Width = 400
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      '')
    TabOrder = 2
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object btn2: TButton
    Left = 544
    Top = 24
    Width = 99
    Height = 49
    Caption = 'Print'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 456
    Top = 24
    Width = 75
    Height = 49
    Caption = 'Load Data'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 336
    Top = 24
    Width = 105
    Height = 49
    Caption = 'Tambah Data Baru'
    TabOrder = 5
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=latih' +
      'an.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLED' +
      'B:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Databa' +
      'se Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lockin' +
      'g Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bu' +
      'lk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:C' +
      'reate System Database=False;Jet OLEDB:Encrypt Database=False;Jet' +
      ' OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact With' +
      'out Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 32
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from jadwal_table')
    Left = 128
    Top = 32
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 184
    Top = 32
  end
  object frxDBjadwal: TfrxDBDataset
    UserName = 'frxDBjadwal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no=no'
      'jam_awal=jam_awal'
      'jam_akhir=jam_akhir'
      'hari=hari'
      'tanggal=tanggal'
      'ruangan=ruangan'
      'matkul=matkul'
      'kelas=kelas'
      'total_kehadiran=total_kehadiran')
    DataSet = qry1
    BCDToCurrency = False
    Left = 648
    Top = 360
  end
  object frxjadwal: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45100.718773368100000000
    ReportOptions.LastChange = 45100.740984895800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnClickObject = frxjadwalClickObject
    Left = 648
    Top = 416
    Datasets = <
      item
        DataSet = frxDBjadwal
        DataSetName = 'frxDBjadwal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 158.740260000000000000
          Top = 15.118120000000000000
          Width = 359.055350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA PRAKTIKUM SEMESTER GANJIL')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frxDBjadwal
        DataSetName = 'frxDBjadwal'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 15.118120000000000000
          Width = 26.456710000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 41.574830000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          TagStr = '[frxDBjadwal."kelas"]'
          DataField = 'kelas'
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."kelas"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 215.433210000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'matkul'
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."matkul"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 517.795610000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'total_kehadiran'
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."total_kehadiran"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 389.291590000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."tanggal"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 26.456710000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'No.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 41.574830000000000000
          Top = 7.559060000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KELAS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 215.433210000000000000
          Top = 7.559060000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MATA KULIAH')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 517.795610000000000000
          Top = 7.559060000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH KEHADIRAN')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 389.291590000000000000
          Top = 7.559060000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
      end
      object Footer1: TfrxFooter
        Height = 34.015770000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 517.795610000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBjadwal."total_kehadiran">,MasterData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 389.291590000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'TOTAL KEHADIRAN PRAKTIKUM')
          ParentFont = False
        end
      end
    end
  end
  object frxDBdetailjadwal: TfrxDBDataset
    UserName = 'frxDBdetailjadwal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no=no'
      'jam_awal=jam_awal'
      'jam_akhir=jam_akhir'
      'hari=hari'
      'tanggal=tanggal'
      'ruangan=ruangan'
      'matkul=matkul'
      'kelas=kelas'
      'total_kehadiran=total_kehadiran')
    DataSet = qry2
    BCDToCurrency = False
    Left = 728
    Top = 360
  end
  object frxdetailjadwal: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45100.718773368100000000
    ReportOptions.LastChange = 45100.750635925930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 728
    Top = 416
    Datasets = <
      item
        DataSet = frxDBdetailjadwal
        DataSetName = 'frxDBdetailjadwal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 158.740260000000000000
          Top = 15.118120000000000000
          Width = 359.055350000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DETAIL DATA PRAKTIKUM SEMESTER GANJIL')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frxDBdetailjadwal
        DataSetName = 'frxDBdetailjadwal'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Width = 26.456710000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 30.236240000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'kelas'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."kelas"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 151.181200000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'matkul'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."matkul"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 548.031850000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'total_kehadiran'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."total_kehadiran"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 419.527830000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."tanggal"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 264.567100000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'jam_awal'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."jam_awal"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 340.157700000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'jam_akhir'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."jam_akhir"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 26.456710000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'No.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Top = 7.559060000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KELAS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Top = 7.559060000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MATA KULIAH')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 548.031850000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH KEHADIRAN')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 419.527830000000000000
          Top = 7.559060000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 264.567100000000000000
          Top = 7.559060000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'WAKTU')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 264.567100000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AWAL')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 340.157700000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AKHIR')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
      end
      object Footer1: TfrxFooter
        Height = 34.015770000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 517.795610000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBdetailjadwal."total_kehadiran">,MasterData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 389.291590000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'TOTAL KEHADIRAN PRAKTIKUM')
          ParentFont = False
        end
      end
    end
  end
  object qry2: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from jadwal_table')
    Left = 808
    Top = 360
  end
end
