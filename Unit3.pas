unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    img2: TImage;
    lbl2: TLabel;
    img3: TImage;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    img4: TImage;
    lbl7: TLabel;
    lbl8: TLabel;
    btn4: TButton;
    img5: TImage;
    lbl9: TLabel;
    lbl10: TLabel;
    btn5: TButton;
    img6: TImage;
    lbl11: TLabel;
    lbl12: TLabel;
    btn6: TButton;
    btn7: TButton;
    combo1: TComboBox;
    combo2: TComboBox;
    combo3: TComboBox;
    combo4: TComboBox;
    combo5: TComboBox;
    combo6: TComboBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    rb4: TRadioButton;
    rb5: TRadioButton;
    rb6: TRadioButton;
    rb7: TRadioButton;
    rb8: TRadioButton;
    rb9: TRadioButton;
    rb10: TRadioButton;
    rb11: TRadioButton;
    rb12: TRadioButton;
    combo7: TComboBox;
    combo8: TComboBox;
    combo9: TComboBox;
    combo10: TComboBox;
    combo11: TComboBox;
    combo12: TComboBox;
    procedure btn7Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    rcoffee, americano, vlatte, cappucino, latte, mocha : Double;
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit5;

{$R *.dfm}


procedure TForm3.btn7Click(Sender: TObject);
begin
  form3.hide;
  form2.show;
end;



procedure TForm3.btn1Click(Sender: TObject);
var
  tx : TextFile;
begin
  rcoffee := 20000;
  if combo7.text = 'One Shot' then
  begin
    rcoffee := rcoffee + 2000;
  end;
  if combo7.text = 'Two Shot' then
  begin
    rcoffee := rcoffee + 4000;
  end;
  if combo7.text = 'Three Shot' then
  begin
    rcoffee := rcoffee + 6000;
  end;
  AssignFile(tx,'Struk_Pembayaran.txt');
  Rewrite(tx);
  writeln(tx,'------------------------------------------------------------------------');
  writeln(tx,'                 Struk Pembayaran');
  writeln(tx,'                   Books Store');
  writeln(tx,'              Jln. Cihampelas no. 21');
  writeln(tx,'------------------------------------------------------------------------');
  writeln(tx,rcoffee:3:2);
  writeln(tx,'------------------------------------------------------------------------');
  writeln(tx,'           Thank you for ordering');
  writeln(tx,'------------------------------------------------------------------------');
  CloseFile(tx);

  showMessage('Minuman berhasil dimasukkan ke keranjang');


end;

end.
