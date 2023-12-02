unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls;

type
  TFpenyewaan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Esewa: TEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Enama: TEdit;
    Etotal: TEdit;
    Label12: TLabel;
    Label3: TLabel;
    DTTtanggal: TDateTimePicker;
    Label4: TLabel;
    Ebarang: TEdit;
    Label6: TLabel;
    Ekode: TEdit;
    Label8: TLabel;
    Elama: TEdit;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    ZQuery2: TZQuery;
    DataSource2: TDataSource;
    ZQuery3: TZQuery;
    ZConnection3: TZConnection;
    DataSource3: TDataSource;
    ZQuery4: TZQuery;
    DataSource4: TDataSource;
    Button5: TButton;
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpenyewaan: TFpenyewaan;
  id: string;

implementation

{$R *.dfm}

procedure TFpenyewaan.DBGrid3CellClick(Column: TColumn);
begin
 id:=ZQuery3.Fields[0].AsString;
  Ekode.Text:=ZQuery3.Fields[1].AsString;
  Ebarang.Text:=ZQuery3.Fields[2].AsString;
  Esewa.Text:=ZQuery3.Fields[3].AsString;

end;

procedure TFpenyewaan.DBGrid2CellClick(Column: TColumn);
begin
id:=ZQuery2.Fields[0].AsString;
  Ekode.Text:=ZQuery2.Fields[1].AsString;
  Ebarang.Text:=ZQuery2.Fields[2].AsString;
  Esewa.Text:=ZQuery2.Fields[3].AsString;
end;

procedure TFpenyewaan.Button5Click(Sender: TObject);
var
a,b:integer;

begin
a:=strtoint(Esewa.Text);
b:=strtoint(Elama.Text);
Etotal.text:= inttostr(a*b);
end;

procedure TFpenyewaan.Button1Click(Sender: TObject);
begin
ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('insert into sewa values(null,"'+Enama.Text+'","'+Ebarang.Text+'","'+Ekode.Text+'","'+FormatDateTime('yyyy-mm-dd',DTTtanggal.Date)+'","'+Esewa.Text+'","'+Elama.Text+'","'+Etotal.Text+'")');
  ZQuery4.ExecSQL ;

  ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('select * from sewa');
  ZQuery4.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TFpenyewaan.Button2Click(Sender: TObject);
begin
ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('delete from sewa where id_sewa="'+id+'"');
  ZQuery4.ExecSQL;
  ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('select * from sewa');
  ZQuery4.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TFpenyewaan.Button3Click(Sender: TObject);
begin
ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('update sewa set nama_pelanggan="'+Enama.Text+'",nama_barang="'+Ebarang.Text+'",kode_barang="'+Ekode.Text+'",tanggal="'+FormatDateTime('yyyy-mm-dd',DTTtanggal.Date)+'",harga_sewa="'+Esewa.Text+'",lama_sewa="'+Elama.Text+'",total="'+Etotal.Text+'" where id_sewa="'+id+'"');
  ZQuery4.ExecSQL;

  ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('select * from sewa');
  ZQuery4.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TFpenyewaan.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery4.Fields[0].AsString;
  Enama.Text:=ZQuery4.Fields[1].AsString;
  Ebarang.Text:=ZQuery4.Fields[2].AsString;
  Ekode.Text:=ZQuery4.Fields[3].AsString;
  DTTtanggal.date:=ZQuery4.Fields[4].AsDateTime;
  Esewa.Text:=ZQuery4.Fields[5].AsString;
  Elama.Text:=ZQuery4.Fields[6].AsString;
  Etotal.Text:=ZQuery4.Fields[7].AsString;
  
end;

end.
