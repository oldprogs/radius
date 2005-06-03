object AttachStatusForm: TAttachStatusForm
  Left = 212
  Top = 243
  HelpContext = 1170
  BorderStyle = bsDialog
  BorderWidth = 6
  Caption = 'Attach Status'
  ClientHeight = 214
  ClientWidth = 233
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bOK: TButton
    Left = 156
    Top = 8
    Width = 75
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object bCancel: TButton
    Left = 156
    Top = 36
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object bHelp: TButton
    Left = 156
    Top = 64
    Width = 75
    Height = 23
    Caption = 'Help'
    TabOrder = 3
    OnClick = bHelpClick
  end
  object bOnSent: TRadioGroup
    Left = 0
    Top = 137
    Width = 145
    Height = 73
    Caption = 'On sent'
    ItemIndex = 0
    Items.Strings = (
      'Nothing'
      'Kill'
      'Truncate')
    TabOrder = 0
  end
  object bAttach: TRadioGroup
    Left = 0
    Top = 0
    Width = 145
    Height = 129
    Caption = 'Attach status'
    ItemIndex = 1
    Items.Strings = (
      '&Hold'
      '&Normal'
      '&Direct'
      '&Crash'
      'Crash && &Poll'
      'Call&back')
    TabOrder = 4
  end
end
