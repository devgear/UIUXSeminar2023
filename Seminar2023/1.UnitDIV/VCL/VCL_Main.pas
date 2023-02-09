unit VCL_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    ListView1: TListView;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

Uses
  DB_VModule;       // Database ��� ���� ��� ����


{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  sdata : SAnsType;  // DBModule ���ֿ� ����� ���������� ���� ���ڵ�
  i: Integer;
begin
  sdata :=  DataModule1.Select_All(); // ������ ��ȸ �Ͽ� ���� ����

  ListView1.Items.Clear;
  for i := 0 to sdata.qCount - 1 do
   begin
     with ListView1.Items.Add do begin
       Caption :=  sdata.sFd1[ i ] + #32 + sdata.sFd2[ i ] + #32 + sdata.sFd3[ i ];
       SubItems.Add( sdata.sFd4[ i ] );
   end;
  end;

  Memo1.Lines.Add( sdata.qCount.ToString );
end;



end.
