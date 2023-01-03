object Form5: TForm5
  Left = 192
  Top = 125
  Width = 403
  Height = 540
  Caption = 'Payment'
  Color = clCream
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Gill Sans MT'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object memoOne: TMemo
    Left = 16
    Top = 24
    Width = 241
    Height = 337
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Gill Sans MT'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btn1: TButton
    Left = 264
    Top = 424
    Width = 89
    Height = 33
    Caption = 'Bayar'
    TabOrder = 1
  end
  object btn2: TButton
    Left = 26
    Top = 428
    Width = 73
    Height = 25
    Caption = 'Kembali'
    TabOrder = 2
    OnClick = btn2Click
  end
end
