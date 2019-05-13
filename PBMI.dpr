program PBMI;

uses
  Vcl.Forms,
  UBMI in 'UBMI.pas' {BMI};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBMI, BMI);
  Application.Run;
end.
