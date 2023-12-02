unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFmusik = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Ebarang: TEdit;
    Eharga: TEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    Label6: TLabel;
    Ekode: TEdit;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmusik: TFmusik;
  id: string;

implementation

uses Unit1;

{$R *.dfm}

procedure TFmusik.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into musik values(null,"'+Ekode.Text+'","'+Ebarang.Text+'","'+Eharga.Text+'")');
  ZQuery1.ExecSQL ;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from musik');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TFmusik.Button2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from musik where id_musik="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from musik');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TFmusik.Button3Click(Sender: TObject);
begin

ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update musik set kode_musik="'+Ekode.Text+'", nama_musik="'+Ebarang.Text+'", harga_musik="'+Eharga.Text+'" where id_musik="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from musik');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TFmusik.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
  Ekode.Text:=ZQuery1.Fields[1].AsString;
  Ebarang.Text:=ZQuery1.Fields[2].AsString;
  Eharga.Text:=ZQuery1.Fields[3].AsString;
end;

procedure TFmusik.Button4Click(Sender: TObject);
begin
Futama.show;
end;

end.
