unit MUnit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, RDuToggleButtons, FMX.Layouts, RDuButtonSet, FMX.TabControl, FMX.Objects,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.EditBox, FMX.NumberBox, FMX.ListBox;

type
  TMForm = class(TForm)
    RDToggleButtons1: TRDToggleButtons;
    MTabControl: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    Text1: TText;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    NumberBox1: TNumberBox;
    Label1: TLabel;
    Label2: TLabel;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Label3: TLabel;
    NumberBox2: TNumberBox;
    Label4: TLabel;
    Rectangle7: TRectangle;
    Label6: TLabel;
    Label7: TLabel;
    NumberBox4: TNumberBox;
    NumberBox5: TNumberBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Rectangle11: TRectangle;
    Rectangle12: TRectangle;
    ListBoxItem3: TListBoxItem;
    Rectangle13: TRectangle;
    Rectangle14: TRectangle;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Rectangle17: TRectangle;
    NumberBox3: TNumberBox;
    NumberBox6: TNumberBox;
    NumberBox7: TNumberBox;
    Label5: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ListBoxItem2: TListBoxItem;
    Rectangle18: TRectangle;
    Label18: TLabel;
    Rectangle19: TRectangle;
    Label19: TLabel;
    Rectangle20: TRectangle;
    NumberBox8: TNumberBox;
    Rectangle21: TRectangle;
    NumberBox9: TNumberBox;
    Rectangle22: TRectangle;
    NumberBox10: TNumberBox;
    ListBoxItem4: TListBoxItem;
    Rectangle23: TRectangle;
    Label20: TLabel;
    Rectangle24: TRectangle;
    Label21: TLabel;
    Rectangle25: TRectangle;
    NumberBox11: TNumberBox;
    Rectangle26: TRectangle;
    NumberBox12: TNumberBox;
    Rectangle27: TRectangle;
    NumberBox13: TNumberBox;
    ListBoxItem5: TListBoxItem;
    Rectangle28: TRectangle;
    Label22: TLabel;
    Rectangle29: TRectangle;
    Label23: TLabel;
    Rectangle30: TRectangle;
    NumberBox14: TNumberBox;
    Rectangle31: TRectangle;
    NumberBox15: TNumberBox;
    Rectangle32: TRectangle;
    NumberBox16: TNumberBox;
    ListBoxItem6: TListBoxItem;
    Rectangle33: TRectangle;
    Label24: TLabel;
    Rectangle34: TRectangle;
    Label25: TLabel;
    Rectangle35: TRectangle;
    NumberBox17: TNumberBox;
    Rectangle36: TRectangle;
    NumberBox18: TNumberBox;
    Rectangle37: TRectangle;
    NumberBox19: TNumberBox;
    Line1: TLine;
    procedure RDToggleButtons1ButtonSetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MForm: TMForm;

implementation

{$R *.fmx}

procedure TMForm.FormCreate(Sender: TObject);
begin
  MTabControl.TabPosition := TTabPosition.None;
end;

procedure TMForm.RDToggleButtons1ButtonSetClick(Sender: TObject);
begin
   MTabControl.TabIndex := RDToggleButtons1.ClickIndex;
end;

end.
