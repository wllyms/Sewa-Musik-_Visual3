unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFstudio = class(TForm)
    Label6: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Ekode: TEdit;
    Esewa: TEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Estudio: TEdit;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    Label3: TLabel;
    EdtCari: TEdit;
    procedure EdtCariChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fstudio: TFstudio;
  id: string;

implementation

uses Unit1;

{$R *.dfm}

procedure TFstudio.EdtCariChange(Sender: TObject);
begin
with ZQuery1 do
begin
     Close;
     SQL.Clear;
     SQL.Text:='select * from studio where nama_studio like'+QuotedStr('%'+EdtCari.Text+'%');
     Open;
end;
end;

procedure TFstudio.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into studio values(null,"'+Ekode.Text+'","'+Estudio.Text+'","'+Esewa.Text+'")');
  ZQuery1.ExecSQL ;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from studio');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TFstudio.Button2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from musik where id_studio="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from studio');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TFstudio.Button3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update studio set kode_studio="'+Ekode.Text+'", nama_studio="'+Estudio.Text+'", harga_studio="'+Esewa.Text+'" where id_musik="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from studio');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TFstudio.Button4Click(Sender: TObject);
begin
Futama.show;
end;

procedure TFstudio.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
  Ekode.Text:=ZQuery1.Fields[1].AsString;
  Estudio.Text:=ZQuery1.Fields[2].AsString;
  Esewa.Text:=ZQuery1.Fields[3].AsString;
end;

end.
 