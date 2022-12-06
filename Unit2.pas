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
    tmr1: TTimer;
    lbl2: TLabel;
    btn4: TBitBtn;
    procedure tmr1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

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

end.
