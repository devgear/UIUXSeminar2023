program HRomaxUI;

uses
  System.StartUpCopy,
  FMX.Forms,
  MUnit in 'MUnit.pas' {MForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMForm, MForm);
  Application.Run;
end.
