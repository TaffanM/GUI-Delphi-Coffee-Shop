object Form4: TForm4
  Left = 192
  Top = 125
  Width = 506
  Height = 465
  Caption = 'About Us'
  Color = clCream
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Gill Sans MT'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object lbl1: TLabel
    Left = 48
    Top = 40
    Width = 114
    Height = 80
    Caption = 'Tentang'#13#10'Kami'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Gill Sans MT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 393
    Top = 353
    Width = 73
    Height = 25
    Caption = 'Kembali'
    TabOrder = 0
    OnClick = btn1Click
  end
end
