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
    Top = 32
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
  object lbl2: TLabel
    Left = 48
    Top = 120
    Width = 349
    Height = 304
    Caption = 
      'Halo, Selamat Datang di'#13#10'Roasted Club Coffee Shop'#13#10#13#10'Coffee Shop' +
      ' kami sudah berdiri sejak 2003 yang didirikan oleh salah satu'#13#10'm' +
      'ahasiswa dari kampus ITENAS Bandung yaitu Taffan Muhammad Rizqi ' +
      #13#10'yang memiliki jiwa bisnis yang tinggi.'#13#10#13#10'Kami menyediakan min' +
      'uman kopi dari biji-biji kopi pilihan yang berkualitas'#13#10'dan memi' +
      'liki cita rasa yang nikmat bagi para penikmat kopi.'#13#10#13#10'Kami berh' +
      'arap dengan adanya Roasted Club Coffee Shop ini, para penikmat'#13#10 +
      'kopi dapat menikmati kopi dengan kualitas baik dengan harga yang' +
      ' terjangkau'#13#10#13#10'Terima kasih atas kebersamaan anda bersama kami'#13#10 +
      #13#10#13#10#13#10#13#10' '
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
