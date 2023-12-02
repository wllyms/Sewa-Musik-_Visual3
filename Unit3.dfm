object Fmusik: TFmusik
  Left = 192
  Top = 117
  Width = 857
  Height = 628
  AutoSize = True
  Caption = 'Data Alat Musik'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 8
    Top = 216
    Width = 59
    Height = 13
    Caption = 'ID BARANG'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 89
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 352
      Top = 48
      Width = 128
      Height = 17
      Caption = 'DATA ALAT MUSIK'
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
    Left = 0
    Top = 120
    Width = 305
    Height = 257
    Caption = 'INPUT ALAT MUSIK'
    TabOrder = 1
    object Label4: TLabel
      Left = 8
      Top = 112
      Width = 107
      Height = 16
      Caption = 'NAMA BARANG'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Elephant'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 168
      Width = 97
      Height = 16
      Caption = 'HARGA SEWA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Elephant'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 56
      Width = 108
      Height = 16
      Caption = 'KODE BARANG'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Elephant'
      Font.Style = []
      ParentFont = False
    end
    object Ebarang: TEdit
      Left = 136
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Eharga: TEdit
      Left = 136
      Top = 160
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 368
    Top = 120
    Width = 185
    Height = 249
    Caption = 'AKSI'
    TabOrder = 2
    object Button1: TButton
      Left = 56
      Top = 32
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Elephant'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 56
      Top = 88
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Elephant'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 56
      Top = 144
      Width = 75
      Height = 25
      Caption = 'EDIT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Elephant'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 56
      Top = 200
      Width = 75
      Height = 25
      Caption = 'KEMBALI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Elephant'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 380
    Width = 849
    Height = 217
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_musik'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kode_musik'
        Title.Alignment = taCenter
        Title.Caption = 'KODE ALAT'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_musik'
        Title.Alignment = taCenter
        Title.Caption = 'NAMA ALAT'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'harga_musik'
        Title.Alignment = taCenter
        Title.Caption = 'HARGA SEWA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Ekode: TEdit
    Left = 136
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from musik')
    Params = <>
    Left = 696
    Top = 208
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'db_penyewaan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\Lenovo\OneDrive\Documents\Kuliah Uniskahhh\Semester 5\V' +
      'isual 3\Project\Penyewaan\libmysql.dll'
    Left = 696
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 760
    Top = 152
  end
end
