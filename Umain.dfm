object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 601
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 32
    Top = 88
    Width = 265
    Height = 65
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object WUni232c1: TWUni232c
    Port = 5
    BaudRate = 9600
    ParityBits = ParityNone
    ByteSize = Bit8
    StopBits = Stopbit1
    FlowControls = CtrlNone
    Left = 24
    Top = 24
  end
end
