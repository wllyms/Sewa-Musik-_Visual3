object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 192
  Top = 117
  Height = 229
  Width = 324
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM user')
    Params = <>
    Left = 144
    Top = 56
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
    Left = 72
    Top = 56
  end
end
