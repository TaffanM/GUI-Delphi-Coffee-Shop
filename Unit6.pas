unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    lbl4: TLabel;
    lbl5: TLabel;
    procedure lbl5Click(Sender: TObject);
    procedure edt1Enter(Sender: TObject);
    procedure edt1Exit(Sender: TObject);
    procedure edt2Enter(Sender: TObject);
    procedure edt2Exit(Sender: TObject);
    procedure edt3Enter(Sender: TObject);
    procedure edt3Exit(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations } 

  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.lbl5Click(Sender: TObject);
begin
  form6.Hide;
  edt1.Text := '';
  edt2.Text := '';
  edt3.text := '';
  form1.show;
end;

procedure TForm6.edt1Enter(Sender: TObject);
begin
  if (edt1.Text = 'Masukkan Username anda')then
  edt1.Text := ''
  else
end;

procedure TForm6.edt1Exit(Sender: TObject);
begin
  if(edt1.Text = '')then
  edt1.Text := 'Masukkan Username anda'
  else
end;

procedure TForm6.edt2Enter(Sender: TObject);
begin
  if(edt2.Text = 'Masukkan Password anda')then
  begin
     edt2.PasswordChar:=#0;
     edt2.Text := '';
  end
  else
end;

procedure TForm6.edt2Exit(Sender: TObject);
begin
  if(edt2.Text = '')then
  begin
    edt2.PasswordChar:=#0;
    edt2.Text := 'Masukkan Password anda';
  end
  else
    edt2.PasswordChar:='*'
end;

procedure TForm6.edt3Enter(Sender: TObject);
begin
  if(edt3.Text = 'Masukkan Password konfirmasi')then
  begin
     edt3.PasswordChar:=#0;
     edt3.Text := '';
  end
  else
end;

procedure TForm6.edt3Exit(Sender: TObject);
begin
  if(edt3.Text = '')then
  begin
    edt3.PasswordChar:=#0;
    edt3.Text := 'Masukkan Password konfirmasi';
  end
  else
  edt3.PasswordChar:='*'
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
   if (edt2.Text=edt3.Text)then
 begin
   form6.Hide;
   ShowMessage('Akun berhasil didaftarkan! Silahkan login untuk melanjutkan');
   form1.Show;
 end
 else
   ShowMessage('Password tidak sama')
end;

end.