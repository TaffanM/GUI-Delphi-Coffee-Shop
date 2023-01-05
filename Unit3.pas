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
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    procedure btn7Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    rcoffee, americano, vlatte, cappucino, latte, mocha : Double;
    qty : Integer;
    total1, total2, total3, total4, total5, total6 : Double;
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
  s : string;
  rcoffeice : string;
  Trcoffee : string;
begin
  rcoffee := 22000;
  if combo1.text = 'Normal Sugar' then
  begin
    s := 'Normal Sugar';
  end;
  if combo1.text = 'Less Sugar' then
  begin
    s := 'Less Sugar';
  end;
  if combo1.text = 'Extra Sugar' then
  begin
    s := 'Extra Sugar';
  end;

  if rb1.Checked then
  begin
     rcoffeice := 'Ice';
  end
  else if rb2.Checked then
  begin
    rcoffeice := 'Hot';
  end;

  if combo7.text = 'One Shot' then
  begin
    rcoffee := rcoffee;
  end;
  if combo7.text = 'Two Shot' then
  begin
    rcoffee := rcoffee + 6000;
  end;
  if combo7.text = 'Three Shot' then
  begin
    rcoffee := rcoffee + 12000;
  end;
  qty := StrToInt(edt1.text);
  total1 := rcoffee * qty;
  Trcoffee := FloatToStr(rcoffee) + s + FloatToStr(total1);

  AssignFile(tx,'Struk_Pembayaran.txt');
  Append(tx);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx, 'Roasted Club Coffee');
  writeln(tx, 'Qty       : ', qty);
  writeln(tx, 'I / H      : ', rcoffeice);
  writeln(tx, 'Espresso : ', combo7.text);
  writeln(tx, 'Sugar     : ', s);
  writeln(tx, 'Total     : ', total1:3:2);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx,'           Thank you for ordering');
  writeln(tx,'-----------------------------------------------------');
  CloseFile(tx);

  showMessage('Minuman berhasil dimasukkan ke keranjang');
  combo1.ClearSelection;
  combo1.Text := 'Pick your sugar level';

  combo7.ClearSelection;
  combo7.Text := 'Espresso shot';

  edt1.Text := '';

end;

procedure TForm3.btn2Click(Sender: TObject);
var
  tx : TextFile;
  s : string;
  americanoice : string;
begin
  americano := 15000;
  if combo2.text = 'Normal Sugar' then
  begin
    s := 'Normal Sugar';
  end;

  if combo2.text = 'Less Sugar' then
  begin
    s := 'Less Sugar';
  end;

  if rb3.Checked then
  begin
     americanoice := 'Ice';
  end
  else if rb4.Checked then
  begin
    americanoice := 'Hot';
  end;

  if combo2.text = 'Extra Sugar' then
  begin
    s := 'Extra Sugar';
  end;

  if combo8.text = 'One Shot' then
  begin
    americano := americano;
  end;

  if combo8.text = 'Two Shot' then
  begin
    americano := americano + 6000;
  end;

  if combo8.text = 'Three Shot' then
  begin
    americano := americano + 12000;
  end;
  qty := StrToInt(edt2.text);
  total2 := americano * qty;

  AssignFile(tx,'Struk_Pembayaran.txt');
  Append(tx);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx, 'Americano');
  writeln(tx, 'Qty       : ', qty);
  writeln(tx, 'I / H      : ', americanoice);
  writeln(tx, 'Espresso : ', combo8.text);
  writeln(tx, 'Sugar     : ', s);
  writeln(tx, 'Total     : ', total2:3:2);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx,'           Thank you for ordering');
  writeln(tx,'-----------------------------------------------------');
  CloseFile(tx);


  showMessage('Minuman berhasil dimasukkan ke keranjang');

  combo2.ClearSelection;
  combo2.Text := 'Pick your sugar level';

  combo8.ClearSelection;
  combo8.Text := 'Espresso shot';

  edt2.Text := '';
end;




procedure TForm3.FormActivate(Sender: TObject);
begin
  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edt6.Text := '';

  combo1.ClearSelection;
  combo1.Text := 'Pick your sugar level';

  combo2.ClearSelection;
  combo2.Text := 'Pick your sugar level';

  combo3.ClearSelection;
  combo3.Text := 'Pick your sugar level';

  combo4.ClearSelection;
  combo4.Text := 'Pick your sugar level';

  combo5.ClearSelection;
  combo5.Text := 'Pick your sugar level';

  combo6.ClearSelection;
  combo6.Text := 'Pick your sugar level';

  combo7.ClearSelection;
  combo7.Text := 'Espresso shot';

  combo8.ClearSelection;
  combo8.Text := 'Espresso shot';

  combo9.ClearSelection;
  combo9.Text := 'Espresso shot';

  combo10.ClearSelection;
  combo10.Text := 'Espresso shot';

  combo11.ClearSelection;
  combo11.Text := 'Espresso shot';

  combo12.ClearSelection;
  combo12.Text := 'Espresso shot';
end;


procedure TForm3.btn3Click(Sender: TObject);
var
  tx : TextFile;
  s : string;
  vlatteice : string;
begin
  vlatte := 27000;
  if combo3.text = 'Normal Sugar' then
  begin
    s := 'Normal Sugar';
  end;

  if combo3.text = 'Less Sugar' then
  begin
    s := 'Less Sugar';
  end;

  if combo3.text = 'Extra Sugar' then
  begin
    s := 'Extra Sugar';
  end;

  if rb5.Checked then
  begin
     vlatteice := 'Ice';
  end
  else if rb6.Checked then
  begin
    vlatteice := 'Hot';
  end;



  if combo9.text = 'One Shot' then
  begin
    vlatte := vlatte;
  end;

  if combo9.text = 'Two Shot' then
  begin
    vlatte:= vlatte + 6000;
  end;

  if combo9.text = 'Three Shot' then
  begin
    vlatte := vlatte + 12000;
  end;
  qty := StrToInt(edt3.text);
  total3 := vlatte * qty;

  AssignFile(tx,'Struk_Pembayaran.txt');
  Append(tx);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx, 'Vanilla Latte');
  writeln(tx, 'Qty       : ', qty);
  writeln(tx, 'I / H      : ', vlatteice);
  writeln(tx, 'Espresso : ', combo9.text);
  writeln(tx, 'Sugar     : ', s);
  writeln(tx, 'Total     : ', total3:3:2);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx,'           Thank you for ordering');
  writeln(tx,'-----------------------------------------------------');
  CloseFile(tx);


  showMessage('Minuman berhasil dimasukkan ke keranjang');

  combo3.ClearSelection;
  combo3.Text := 'Pick your sugar level';

  combo9.ClearSelection;
  combo9.Text := 'Espresso shot';

  edt3.Text := '';
end;

procedure TForm3.btn4Click(Sender: TObject);
var
  tx : TextFile;
  s : string;
  capice : string;
begin
  cappucino := 25000;
  if combo4.text = 'Normal Sugar' then
  begin
    s := 'Normal Sugar';
  end;

  if combo4.text = 'Less Sugar' then
  begin
    s := 'Less Sugar';
  end;

  if combo4.text = 'Extra Sugar' then
  begin
    s := 'Extra Sugar';
  end;

  if rb7.Checked then
  begin
     capice := 'Ice';
  end
  else if rb8.Checked then
  begin
    capice := 'Hot';
  end;

  if combo10.text = 'One Shot' then
  begin
    cappucino := cappucino;
  end;

  if combo10.text = 'Two Shot' then
  begin
    cappucino:= cappucino + 6000;
  end;

  if combo10.text = 'Three Shot' then
  begin
    cappucino := cappucino + 12000;
  end;
  qty := StrToInt(edt4.text);
  total4 := cappucino * qty;

  AssignFile(tx,'Struk_Pembayaran.txt');
  Append(tx);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx, 'Cappucino');
  writeln(tx, 'Qty       : ', qty);
  writeln(tx, 'I / H      : ', capice);
  writeln(tx, 'Espresso : ', combo10.text);
  writeln(tx, 'Sugar     : ', s);
  writeln(tx, 'Total     : ', total4:3:2);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx,'           Thank you for ordering');
  writeln(tx,'-----------------------------------------------------');
  CloseFile(tx);


  showMessage('Minuman berhasil dimasukkan ke keranjang');

  combo4.ClearSelection;
  combo4.Text := 'Pick your sugar level';

  combo10.ClearSelection;
  combo10.Text := 'Espresso shot';

  edt4.Text := '';

end;



procedure TForm3.btn5Click(Sender: TObject);
var
  tx : TextFile;
  s : string;
  latteice : string;
begin
  latte := 26000;
  if combo5.text = 'Normal Sugar' then
  begin
    s := 'Normal Sugar';
  end;

  if combo5.text = 'Less Sugar' then
  begin
    s := 'Less Sugar';
  end;

  if combo5.text = 'Extra Sugar' then
  begin
    s := 'Extra Sugar';
  end;

  if rb9.Checked then
  begin
     latteice := 'Ice';
  end
  else if rb10.Checked then
  begin
    latteice := 'Hot';
  end;

  if combo11.text = 'One Shot' then
  begin
    latte := latte;
  end;

  if combo11.text = 'Two Shot' then
  begin
    latte:= latte+ 6000;
  end;

  if combo11.text = 'Three Shot' then
  begin
    latte := latte + 12000;
  end;
  qty := StrToInt(edt5.text);
  total5 := latte * qty;

  AssignFile(tx,'Struk_Pembayaran.txt');
  Append(tx);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx, 'Latte');
  writeln(tx, 'Qty       : ', qty);
  writeln(tx, 'I / H      : ', Latteice);
  writeln(tx, 'Espresso : ', combo11.text);
  writeln(tx, 'Sugar     : ', s);
  writeln(tx, 'Total     : ', total5:3:2);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx,'           Thank you for ordering');
  writeln(tx,'-----------------------------------------------------');
  CloseFile(tx);


  showMessage('Minuman berhasil dimasukkan ke keranjang');

  combo5.ClearSelection;
  combo5.Text := 'Pick your sugar level';

  combo11.ClearSelection;
  combo11.Text := 'Espresso shot';

  edt5.Text := '';
end;

procedure TForm3.btn6Click(Sender: TObject);
var
  tx : TextFile;
  s : string;
  mochaice : string;
begin
  mocha := 28000;
  if combo6.text = 'Normal Sugar' then
  begin
    s := 'Normal Sugar';
  end;

  if combo6.text = 'Less Sugar' then
  begin
    s := 'Less Sugar';
  end;

  if combo6.text = 'Extra Sugar' then
  begin
    s := 'Extra Sugar';
  end;

  if rb11.Checked then
  begin
     mochaice := 'Ice';
  end
  else if rb12.Checked then
  begin
    mochaice := 'Hot';
  end;

  if combo12.text = 'One Shot' then
  begin
    mocha := mocha;
  end;

  if combo12.text = 'Two Shot' then
  begin
    mocha := mocha + 6000;
  end;

  if combo12.text = 'Three Shot' then
  begin
    mocha := mocha + 12000;
  end;
  qty := StrToInt(edt6.text);
  total6 := mocha * qty;

  AssignFile(tx,'Struk_Pembayaran.txt');
  Append(tx);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx, 'Mocha');
  writeln(tx, 'Qty       : ', qty);
  writeln(tx, 'I / H      : ', mochaice);
  writeln(tx, 'Espresso : ', combo12.text);
  writeln(tx, 'Sugar     : ', s);
  writeln(tx, 'Total     : ', total6:3:2);
  writeln(tx,'-----------------------------------------------------');
  writeln(tx,'           Thank you for ordering');
  writeln(tx,'-----------------------------------------------------');
  CloseFile(tx);


  showMessage('Minuman berhasil dimasukkan ke keranjang');

  combo6.ClearSelection;
  combo6.Text := 'Pick your sugar level';

  combo12.ClearSelection;
  combo12.Text := 'Espresso shot';

  edt6.Text := '';
end;

end.
