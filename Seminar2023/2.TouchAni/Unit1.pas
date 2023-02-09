unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, System.ImageList, FMX.ImgList,
  FMX.ListBox, FMX.Layouts, FMX.Ani;

type
  TSForm = class(TForm)
    Circle1: TCircle;
    BaseRectangle: TRectangle;
    Circle2: TCircle;
    Text1: TText;
    Text2: TText;
    ListBox1: TListBox;
    DiagonalRectangle: TRectangle;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ImageList1: TImageList;
    RBIconImage: TImage;
    LTIconImage: TImage;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    FloatAnimation1: TFloatAnimation;
    procedure FormResize(Sender: TObject);
    procedure LTIconImageClick(Sender: TObject);
    procedure RBIconImageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SForm: TSForm;

implementation

{$R *.fmx}

procedure TSForm.FormCreate(Sender: TObject);
begin
  RBIconImage.Visible := FALSE;
end;

procedure TSForm.FormResize(Sender: TObject);
begin
  RBIconImage.Position.X := Self.ClientWidth - RBIconImage.Width;
  RBIconImage.Position.Y := Self.ClientHeight - RBIconImage.Height;

  ListBox1.Height := Self.ClientHeight - RBIconImage.Height;
  ListBox1.Width  := Self.ClientWidth;
  ListBox1.Position.X := 0;
  ListBox1.Position.Y := - ( ListBox1.Height + DiagonalRectangle.Height ) ;
  ListBox1.ItemHeight := ( ListBox1.Height - 20 ) / ListBox1.Items.Count;  // 20 은 ListBox 하단여백

  DiagonalRectangle.Width := ListBox1.Width;
  DiagonalRectangle.Height := DiagonalRectangle.Width;
  DiagonalRectangle.Position.X := ListBox1.Position.X;
  DiagonalRectangle.Position.Y := ListBox1.Height-2;         // ListBox 바로하단에 위치
end;

procedure TSForm.LTIconImageClick(Sender: TObject);
begin
  LTIconImage.Visible := FALSE;

  FloatAnimation1.StartValue := ListBox1.Position.Y;
  FloatAnimation1.StopValue  := 0;
  FloatAnimation1.Start;
  FloatAnimation1.Tag := 1;
end;

procedure TSForm.RBIconImageClick(Sender: TObject);
begin
  RBIconImage.Visible := FALSE;

  FloatAnimation1.StartValue := ListBox1.Position.Y;
  FloatAnimation1.StopValue  := - ( ListBox1.Height + DiagonalRectangle.Height );
  FloatAnimation1.Start;
  FloatAnimation1.Tag := 2;
end;

procedure TSForm.FloatAnimation1Finish(Sender: TObject);
begin
  case FloatAnimation1.Tag of
    1 : RBIconImage.Visible := TRUE;
    2 : LTIconImage.Visible := TRUE;
  end;
end;


end.
