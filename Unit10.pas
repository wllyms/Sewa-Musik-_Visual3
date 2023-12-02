unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFdaftar = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Euser: TEdit;
    Epw: TEdit;
    Button2: TButton;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdaftar: TFdaftar;

implementation

{$R *.dfm}

procedure TFdaftar.Button2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into user values(null,"'+Euser.Text+'","'+Epw.Text+'")');
  ZQuery1.ExecSQL ;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from user');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  close;
end;

end.
