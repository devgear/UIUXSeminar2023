program Edu_Touch;

uses
  System.StartUpCopy,
  FMX.Forms,
  MUnit in 'MUnit.pas' {MForm},
  Unit1 in 'Unit1.pas' {SForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMForm, MForm);
  Application.CreateForm(TSForm, SForm);
  Application.Run;
end.
