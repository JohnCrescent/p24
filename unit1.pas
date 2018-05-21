unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var slovo,nove:string;
  i:integer;
begin
  randomize;
  slovo:=edit1.text;
  nove:='';
  for i:=1 to length(slovo) do
      begin
       nove:=nove+slovo[i];
       nove:=nove+chr(random(26)+97);
      end;
  label1.caption:=nove;

end;

end.

