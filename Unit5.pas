unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    memoOne: TMemo;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit3, Unit2;

{$R *.dfm}

procedure TForm5.btn2Click(Sender: TObject);
begin
  form5.hide;
  form2.show;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
  memoOne.Lines.LoadFromFile('Struk_Pembayaran.txt');
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
  memoOne.Lines.Clear;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
  if memoOne.text = '' then
  begin
    ShowMessage('Anda belum memesan minuman kami');
  end
  else
  ShowMessage('Terima kasih atas pembayaran anda');
end;

end.
