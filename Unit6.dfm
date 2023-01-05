object Form6: TForm6
  Left = 827
  Top = 120
  Width = 414
  Height = 588
  Caption = 'Form Registrasi'
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
    Left = 120
    Top = 80
    Width = 154
    Height = 30
    Caption = 'Registrasi Akun'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Gill Sans MT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 24
    Top = 168
    Width = 66
    Height = 23
    Caption = 'Username'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Gill Sans MT'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 24
    Top = 216
    Width = 62
    Height = 23
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Gill Sans MT'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 120
    Top = 397
    Width = 95
    Height = 16
    Caption = 'Sudah punya akun?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Gill Sans MT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 224
    Top = 397
    Width = 29
    Height = 16
    Caption = 'Login'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Gill Sans MT'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = lbl5Click
  end
  object edt1: TEdit
    Left = 104
    Top = 168
    Width = 201
    Height = 24
    TabOrder = 0
    Text = 'Masukkan Username anda'
    OnEnter = edt1Enter
    OnExit = edt1Exit
  end
  object edt2: TEdit
    Left = 104
    Top = 216
    Width = 201
    Height = 24
    TabOrder = 1
    Text = 'Masukkan Password anda'
    OnEnter = edt2Enter
    OnExit = edt2Exit
  end
  object edt3: TEdit
    Left = 104
    Top = 256
    Width = 201
    Height = 24
    TabOrder = 2
    Text = 'Masukkan Password konfirmasi'
    OnEnter = edt3Enter
    OnExit = edt3Exit
  end
  object btn1: TButton
    Left = 136
    Top = 344
    Width = 121
    Height = 33
    Caption = 'Daftar Sekarang!'
    TabOrder = 3
    OnClick = btn1Click
  end
end
