object Flogin: TFlogin
  Left = 192
  Top = 117
  Width = 401
  Height = 336
  AutoSize = True
  Caption = 'HALAMAN LOGIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 393
    Height = 305
    Brush.Color = clActiveCaption
  end
  object Label1: TLabel
    Left = 136
    Top = 32
    Width = 90
    Height = 33
    Alignment = taCenter
    Caption = 'LOGIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 152
    Top = 96
    Width = 86
    Height = 16
    Caption = 'USERNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 152
    Top = 160
    Width = 88
    Height = 16
    Caption = 'PASSWORD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Euser: TEdit
    Left = 112
    Top = 120
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object Epw: TEdit
    Left = 112
    Top = 184
    Width = 177
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 112
    Top = 240
    Width = 75
    Height = 25
    Caption = 'MASUK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 240
    Width = 75
    Height = 25
    Caption = 'DAFTAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
end
