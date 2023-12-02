unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFlogin = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Euser: TEdit;
    Epw: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flogin: TFlogin;

implementation

uses Unit9, Unit10, Unit1;

{$R *.dfm}

procedure TFlogin.Button1Click(Sender: TObject);
begin
  if Euser.Text='' then
  begin
    MessageDlg('Nama Username dan Password Harus Di isi!',mtInformation,[mbOK],0);
  end
  else
  if Epw.text='' then
  begin
    MessageDlg('Nama Username dan Password Harus Di isi!',mtInformation,[mbOK],0);
  end

  else
    begin
      with DataModule1.ZQuery1 do
      begin
          Close;
          SQL.Clear;
          SQL.Text:='select * from user where username='+QuotedStr(Euser.Text);
          Open;
      end;

      if DataModule1.ZQuery1.RecordCount = 0 then
      begin
        MessageDlg('Username dan Password anda Belum terdaftar, Silahkan daftar terlebih dahulu !',mtInformation,[mbOK],0);
        Euser.Text:='';
        Epw.Text:='';
        Euser.SetFocus;
      end
      else
      if DataModule1.ZQuery1.FieldByName('password').AsString <> Epw.Text then
      begin
        MessageDlg('Username dan Password anda Belum terdaftar, Silahkan daftar terlebih dahulu !',mtWarning,[mbOK],0);
        Euser.Text:='';
        Epw.Text:='';
        Euser.SetFocus;
        Futama.ShowModal;
      end
      else
      begin
      MessageDlg('Berhasil Login',mtInformation,[mbOK],0) ;
      Futama.Show;
      end
    end;
end;

procedure TFlogin.Button2Click(Sender: TObject);
begin
Fdaftar.ShowModal;
end;

end.
