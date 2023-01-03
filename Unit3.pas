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
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.btn7Click(Sender: TObject);
begin
  form3.hide;
  form2.show;
end;

end.
