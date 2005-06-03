object TermDial: TTermDial
  Left = 399
  Top = 199
  BorderStyle = bsDialog
  Caption = 'TermDial'
  ClientHeight = 67
  ClientWidth = 238
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object tEditNamber: TEdit
    Left = 8
    Top = 6
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object bDial: TButton
    Left = 32
    Top = 37
    Width = 75
    Height = 23
    Caption = 'Dial'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object bCancel: TButton
    Left = 128
    Top = 37
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
