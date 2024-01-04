unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFsound = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Eharga: TEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    Ekode: TEdit;
    Ebarang: TEdit;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    EdtCari: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure EdtCariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsound: TFsound;
  id: string;

implementation

uses Unit1;

{$R *.dfm}

procedure TFsound.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into sound values(null,"'+Ekode.Text+'","'+Ebarang.Text+'","'+Eharga.Text+'")');
  ZQuery1.ExecSQL ;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from sound');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');

end;

procedure TFsound.Button2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from sound where id_sound="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from sound');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TFsound.Button3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update sound set kode_sound="'+Ekode.Text+'", nama_sound="'+Ebarang.Text+'", harga_sound="'+Eharga.Text+'" where id_sound="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from sound');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TFsound.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
  Ekode.Text:=ZQuery1.Fields[1].AsString;
  Ebarang.Text:=ZQuery1.Fields[2].AsString;
  Eharga.Text:=ZQuery1.Fields[3].AsString;
end;

procedure TFsound.Button4Click(Sender: TObject);
begin
Futama.show;
end;

procedure TFsound.EdtCariChange(Sender: TObject);
begin
with ZQuery1 do
begin
     Close;
     SQL.Clear;
     SQL.Text:='select * from sound where nama_sound like'+QuotedStr('%'+EdtCari.Text+'%');
     Open;
end;
end;

end.
