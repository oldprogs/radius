object ImportForm: TImportForm
  Left = 193
  Top = 159
  BorderStyle = bsDialog
  ClientHeight = 236
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object rbBinkD: TRadioButton
    Left = 20
    Top = 20
    Width = 385
    Height = 21
    Caption = 'BinkD © Dima Maloff'
    Checked = True
    TabOrder = 0
    TabStop = True
  end
  object rbBinkPlus: TRadioButton
    Left = 20
    Top = 44
    Width = 385
    Height = 21
    Caption = 'Bink/+ © serge terekhov'
    TabOrder = 1
  end
  object rbTMail: TRadioButton
    Left = 20
    Top = 69
    Width = 385
    Height = 21
    Caption = 'T-Mail © Andy Elkin'
    TabOrder = 2
  end
  object rbXenia: TRadioButton
    Left = 20
    Top = 94
    Width = 385
    Height = 20
    Caption = 'Xenia © Arjen G. Lentz'
    TabOrder = 3
  end
  object bOK: TButton
    Left = 108
    Top = 187
    Width = 93
    Height = 28
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 6
  end
  object bCancel: TButton
    Left = 207
    Top = 187
    Width = 92
    Height = 28
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 7
  end
  object bHelp: TButton
    Left = 305
    Top = 187
    Width = 93
    Height = 28
    Caption = 'Help'
    TabOrder = 8
    OnClick = bHelpClick
  end
  object rbFrontDoor: TRadioButton
    Left = 20
    Top = 118
    Width = 385
    Height = 21
    Caption = 'FrontDoor 2.12 © Joaquim Homrighausen (passwords only)'
    TabOrder = 4
  end
  object rbMainDoor: TRadioButton
    Left = 20
    Top = 143
    Width = 385
    Height = 21
    Caption = 'MainDoor 1.10 © Francisco Sedano Crippa (passwords only)'
    TabOrder = 5
  end
end
