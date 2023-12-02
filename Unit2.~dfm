object Fidentitas: TFidentitas
  Left = 192
  Top = 117
  Width = 1044
  Height = 721
  Caption = 'IDENTITAS PENYEWA'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 120
    Top = 24
    Width = 849
    Height = 89
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 336
      Top = 48
      Width = 144
      Height = 17
      Caption = 'IDENTITAS PENYEWA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MV Boli'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 312
      Top = 24
      Width = 220
      Height = 17
      Caption = 'PENYEWAAN MUSIK SEJAHTERA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MV Boli'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 120
    Top = 136
    Width = 825
    Height = 273
    Caption = 'INPUT DATA PENYEWA'
    TabOrder = 1
    object Label4: TLabel
      Left = 224
      Top = 96
      Width = 42
      Height = 16
      Caption = 'NAMA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Elephant'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 224
      Top = 144
      Width = 47
      Height = 16
      Caption = 'NO HP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Elephant'
      Font.Style = []
      ParentFont = False
    end
    object Enama: TEdit
      Left = 344
      Top = 88
      Width = 257
      Height = 21
      TabOrder = 0
    end
    object Ehp: TEdit
      Left = 344
      Top = 136
      Width = 257
      Height = 21
      TabOrder = 1
    end
  end
  object Button2: TButton
    Left = 464
    Top = 320
    Width = 177
    Height = 49
    Caption = 'SIMPAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Elephant'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from identitas')
    Params = <>
    Left = 32
    Top = 184
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'Localhost'
    Port = 3306
    Database = 'db_penyewaan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\Lenovo\OneDrive\Documents\Kuliah Uniskahhh\Semester 5\V' +
      'isual 3\Project\Penyewaan\libmysql.dll'
    Left = 24
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 72
    Top = 128
  end
end
