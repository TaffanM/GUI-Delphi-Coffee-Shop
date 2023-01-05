object Form2: TForm2
  Left = 281
  Top = 484
  Width = 642
  Height = 384
  Caption = 'Main Menu'
  Color = clCream
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Gill Sans MT'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object lbl1: TLabel
    Left = 64
    Top = 8
    Width = 151
    Height = 68
    Caption = 'Welcome to '#13#10'Roasted Club'
    Font.Charset = ANSI_CHARSET
    Font.Color = clOlive
    Font.Height = -24
    Font.Name = 'Gill Sans MT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 456
    Top = 32
    Width = 16
    Height = 16
    Caption = 'lbl2'
  end
  object btn1: TBitBtn
    Left = 64
    Top = 96
    Width = 121
    Height = 41
    Caption = 'Menu'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 64
    Top = 160
    Width = 121
    Height = 41
    Caption = 'Payment'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 64
    Top = 224
    Width = 121
    Height = 41
    Caption = 'About Us'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TBitBtn
    Left = 472
    Top = 280
    Width = 113
    Height = 33
    Caption = 'Logout'
    TabOrder = 3
    OnClick = btn4Click
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 536
    Top = 40
  end
end
