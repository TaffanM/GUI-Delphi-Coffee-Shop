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
    lbl1: TLabel;
    edt1: TEdit;
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
var
  grandTotal : Real;
begin
  memoOne.Lines.LoadFromFile('Struk_Pembayaran.txt');
  edt1.Text := 'Rp ' + FloatToStr(Form3.total1+form3.total2+form3.total3+form3.total4+form3.total5+form3.total6);
end;

procedure TForm5.btn3Click(Sender: TObject);
var
  tx : TextFile;
begin
  memoOne.lines.Clear;
  AssignFile(tx,'Struk_Pembayaran.txt');
  Rewrite(tx);
  writeln(tx,'');
  CloseFile(tx);
  Form3.total1 := 0;
  form3.total2 := 0;
  form3.total3 := 0;
  form3.total4 := 0;
  form3.total5 := 0;
  form3.total6 := 0;
  edt1.Text := '';
  ShowMessage('Keranjang berhasil dihapus');
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
