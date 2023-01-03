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
    procedure btn2Click(Sender: TObject);
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

end.
