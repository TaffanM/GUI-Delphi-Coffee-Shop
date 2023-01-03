unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm2 = class(TForm)
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    lbl1: TLabel;
    lbl2: TLabel;
    btn4: TBitBtn;
    tmr1: TTimer;
    procedure tmr1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm2.tmr1Timer(Sender: TObject);
begin
  lbl2.caption := TimeToStr(Time);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  lbl2.Font.Size := 14;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
  Form2.Hide;
  form1.show;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  Form2.Hide;
  Form3.Show;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  Form2.Hide;
  form4.show;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  form5.show;
  form2.hide;
end;

end.
