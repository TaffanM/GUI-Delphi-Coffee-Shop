unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg;

type
  TForm1 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    btn1: TBitBtn;
    lbl3: TLabel;
    lbl4: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure lbl3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit6;

var
  UserName,password,usn,pass : string;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  Username := 'user';
  password := '123';

  if((edt1.text = UserName) and (edt2.Text = password)) then
  begin
    Form1.Hide;
    Form2.show;

    ShowMessage('Selamat datang ' + UserName);
  end
  else if(usn=edt1.Text)and(pass=edt2.Text)then
  begin
   form1.Hide;
   form2.Show;
   ShowMessage('Selamat Datang '+usn);
  end
  else
    ShowMessage('Username dan password anda salah');
end;


procedure TForm1.lbl3Click(Sender: TObject);
begin
  form1.Hide;
  edt1.Text := '';
  edt2.Text := '';
  form6.show;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  if ((form6.edt1.Text='Masukan Username')or
  (form6.edt2.Text='Masukan Password')or
  (form6.edt3.Text='Masukan Ulang Password')or
  (form6.edt1.Text='')or
  (form6.edt2.Text='')or
  (form6.edt3.Text=''))then
  begin
    username := 'user';
    password := '123';
  end
  else
  begin
     usn := form6.edt1.Text;
     pass := form6.edt2.Text;
  end
end;

end.
 