unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, ExtCtrls, ZAbstractConnection,
  ZConnection, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFidentitas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Enama: TEdit;
    Ehp: TEdit;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    Button2: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fidentitas: TFidentitas;
  id: string;

implementation

uses Unit1;

{$R *.dfm}

procedure TFidentitas.Button1Click(Sender: TObject);
begin

ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into pelanggan values(null,"'+Enama.Text+'","'+Ehp.Text+'")');
  ZQuery1.ExecSQL ;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from pelanggan');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  Futama.show;

end;


procedure TFidentitas.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
  Enama.Text:=ZQuery1.Fields[1].AsString;
  Ehp.Text:=ZQuery1.Fields[2].AsString;

end;

end.
