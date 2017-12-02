unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, WUni232c;

type
  TForm1 = class(TForm)
    WUni232c1: TWUni232c;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;


var
  Form1: TForm1;

implementation

{$R *.dfm}

const

 GsQr : array [0..8] of byte = ( $1D,$78,$4C,$05,BYTE('D'),BYTE('E'),BYTE('L'),BYTE('P'),BYTE('I') );

procedure TForm1.Button1Click(Sender: TObject);
var
Str: UTF8String;
begin
  WUni232c1.BaudRate := 9600;

  if( not WUni232c1.Connect ) then
                                      WUni232c1.Open;

  Str := sLineBreak+sLineBreak+sLineBreak+sLineBreak;
  WUni232c1.Write(Length(Str),@str[1]);
  Str := 'HELLO DELPHI'+sLineBreak;
  WUni232c1.Write(Length(Str),@str[1]);
  WUni232c1.Write(sizeof(GsQr),@GsQr);
  Str := sLineBreak+sLineBreak+sLineBreak+sLineBreak;
  WUni232c1.Write(Length(Str),@str[1]);

end;


procedure TForm1.FormDestroy(Sender: TObject);
begin
  if( WUni232c1.Connect ) then
                                      WUni232c1.Close;
end;

end.
