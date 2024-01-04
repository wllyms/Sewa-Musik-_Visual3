unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFutama = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Futama: TFutama;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit7, Unit6;

{$R *.dfm}

procedure TFutama.Button1Click(Sender: TObject);
begin
Fidentitas.show;
end;

procedure TFutama.Button2Click(Sender: TObject);
begin
Fmusik.show;
end;

procedure TFutama.Button3Click(Sender: TObject);
begin
Fstudio.show;
end;

procedure TFutama.Button4Click(Sender: TObject);
begin
Fpenyewaan.show;
end;

procedure TFutama.Button5Click(Sender: TObject);
begin
Flaporan.Show;
end;

procedure TFutama.Button6Click(Sender: TObject);
begin
Fstudio.Show;
end;

end.
