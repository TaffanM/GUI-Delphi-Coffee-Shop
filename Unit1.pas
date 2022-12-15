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
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

var
  UserName,password : string;

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
  else
    ShowMessage('Username dan password anda salah');
end;

end.
 