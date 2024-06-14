object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Polimorfismo'
  ClientHeight = 105
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object ButtonCirculo: TButton
    Left = 24
    Top = 32
    Width = 105
    Height = 49
    Caption = 'C'#237'rculo'
    TabOrder = 0
    OnClick = ButtonCirculoClick
  end
  object ButtonRetangulo: TButton
    Left = 135
    Top = 32
    Width = 114
    Height = 49
    Caption = 'Ret'#226'ngulo'
    TabOrder = 1
    OnClick = ButtonRetanguloClick
  end
end
