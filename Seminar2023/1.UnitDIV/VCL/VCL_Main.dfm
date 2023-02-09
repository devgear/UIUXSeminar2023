object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 661
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ListView1: TListView
    Left = 64
    Top = 96
    Width = 337
    Height = 377
    Columns = <
      item
        Caption = #51452#49548
        Width = 200
      end
      item
        Caption = #51060#47492
        Width = 100
      end>
    TabOrder = 0
    ViewStyle = vsReport
  end
  object Button1: TButton
    Left = 64
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 64
    Top = 504
    Width = 337
    Height = 89
    TabOrder = 2
  end
end
