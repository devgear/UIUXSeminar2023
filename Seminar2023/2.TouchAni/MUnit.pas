unit MUnit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani, FMX.Objects, FMX.Effects, FMX.Layouts, FMX.ListBox, FMX.Colors,
  FMX.Filter.Effects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TMForm = class(TForm)
    Image1: TImage;
    BitmapAnimation1: TBitmapAnimation;
    RoundRect1: TRoundRect;
    FloatAnimation1: TFloatAnimation;
    ShadowEffect1: TShadowEffect;
    Image2: TImage;
    FillRGBEffect1: TFillRGBEffect;
    ColorListBox1: TColorListBox;
    Image3: TImage;
    FillRGBEffect2: TFillRGBEffect;
    RoundRect2: TRoundRect;
    FloatAnimation2: TFloatAnimation;
    ShadowEffect2: TShadowEffect;
    Label1: TLabel;
    Layout1: TLayout;
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure RoundRect1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure ColorListBox1Change(Sender: TObject);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure RoundRect2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure FloatAnimation2Finish(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MForm: TMForm;

implementation

Uses
  Unit1;

{$R *.fmx}



procedure TMForm.Image1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  BitmapAnimation1.Start;
end;


procedure TMForm.RoundRect1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  FloatAnimation1.Start;
end;

procedure TMForm.ColorListBox1Change(Sender: TObject);
begin
  FillRGBEffect1.Color := ColorListBox1.Color;
end;


procedure TMForm.Image3MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  FillRGBEffect2.Color :=  $FFFB9585;
end;

procedure TMForm.Image3MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  FillRGBEffect2.Color :=  $FFA9A9A9;
end;


//****************************************************************************************************************
procedure TMForm.RoundRect2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
    FloatAnimation2.Start;
end;

procedure TMForm.FloatAnimation2Finish(Sender: TObject);
begin
  SForm.Show;
end;


end.
