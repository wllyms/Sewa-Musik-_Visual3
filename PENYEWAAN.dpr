program PENYEWAAN;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Futama},
  Unit2 in 'Unit2.pas' {Fidentitas},
  Unit3 in 'Unit3.pas' {Fmusik},
  Unit4 in 'Unit4.pas' {Fsound},
  Unit5 in 'Unit5.pas' {Fpenyewaan},
  Unit6 in 'Unit6.pas' {Fstudio},
  Unit7 in 'Unit7.pas' {Flaporan},
  Unit8 in 'Unit8.pas' {Flogin},
  Unit9 in 'Unit9.pas' {DataModule1: TDataModule},
  Unit10 in 'Unit10.pas' {Fdaftar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFlogin, Flogin);
  Application.CreateForm(TFutama, Futama);
  Application.CreateForm(TFidentitas, Fidentitas);
  Application.CreateForm(TFmusik, Fmusik);
  Application.CreateForm(TFsound, Fsound);
  Application.CreateForm(TFpenyewaan, Fpenyewaan);
  Application.CreateForm(TFstudio, Fstudio);
  Application.CreateForm(TFlaporan, Flaporan);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFdaftar, Fdaftar);
  Application.Run;
end.
