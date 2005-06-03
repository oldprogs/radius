object Preferences: TPreferences
  Left = 206
  Top = 128
  HelpContext = 2400
  BorderStyle = bsDialog
  BorderWidth = 6
  Caption = 'Preferences'
  ClientHeight = 162
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lLanguage: TLabel
    Left = 236
    Top = 16
    Width = 51
    Height = 13
    Caption = 'Language:'
  end
  object lScan: TLabel
    Left = 290
    Top = 293
    Width = 92
    Height = 13
    Alignment = taRightJustify
    Caption = 'Time for scan flags:'
    Enabled = False
    Visible = False
  end
  object bCancel: TButton
    Left = 280
    Top = 138
    Width = 74
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object bHelp: TButton
    Left = 360
    Top = 138
    Width = 75
    Height = 23
    Caption = 'Help'
    TabOrder = 2
    OnClick = bHelpClick
  end
  object cbLanguage: TComboBox
    Left = 298
    Top = 13
    Width = 137
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'English ('#1040#1085#1075#1083#1080#1081#1089#1082#1080#1081')'
      'Russian ('#1056#1091#1089#1089#1082#1080#1081')')
  end
  object seTime: TxSpinEdit
    Left = 390
    Top = 289
    Width = 49
    Height = 22
    AutoSize = False
    Enabled = False
    MaxValue = 60
    MinValue = 1
    TabOrder = 4
    Value = 1
    Visible = False
  end
  object gbColors: TGroupBox
    Left = 8
    Top = 8
    Width = 209
    Height = 121
    Caption = ' Colors '
    TabOrder = 5
    object Shape1: TShape
      Left = 11
      Top = 24
      Width = 73
      Height = 9
      OnMouseUp = Shape1MouseUp
    end
    object lBackColor: TLabel
      Left = 99
      Top = 21
      Width = 52
      Height = 13
      Caption = 'Back Color'
    end
    object Shape2: TShape
      Left = 11
      Top = 40
      Width = 73
      Height = 9
      OnMouseUp = Shape2MouseUp
    end
    object lForeColor: TLabel
      Left = 99
      Top = 38
      Width = 48
      Height = 13
      Caption = 'Fore Color'
    end
    object DefaultColors: TButton
      Left = 104
      Top = 65
      Width = 97
      Height = 21
      Caption = 'Default Colors'
      TabOrder = 0
      OnClick = DefaultColorsClick
    end
    object sbSystemColors: TButton
      Left = 104
      Top = 89
      Width = 97
      Height = 21
      Caption = 'System Colors'
      TabOrder = 1
      OnClick = sbSystemColorsClick
    end
    object cbColor: TComboBox
      Left = 8
      Top = 89
      Width = 89
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = tbMainChange
      Items.Strings = (
        'Gauge'
        'Logger'
        'BadWazoo'
        'OldMail7'
        'OldMail14'
        'OldMail21'
        'OldMail28')
    end
  end
  object cbStandartFlags: TCheckBox
    Left = 225
    Top = 264
    Width = 216
    Height = 17
    Caption = 'Use Standart Flags'
    TabOrder = 6
    Visible = False
  end
  object bOK: TButton
    Left = 200
    Top = 138
    Width = 75
    Height = 23
    Caption = 'O&K'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object gbBOptions: TGroupBox
    Left = 232
    Top = 36
    Width = 201
    Height = 93
    Caption = 'Boolean Options'
    TabOrder = 7
    object clOptions: TCheckListBox
      Left = 3
      Top = 18
      Width = 192
      Height = 66
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = True
      ItemHeight = 13
      Items.Strings = (
        'Always In Tray'
        'Use `Space'#39' to Flush Timeout'
        'Show Balloon Tooltips'
        'Show Balloon Minimized'
        'Create SESSION.OK Flag'
        'Create SESSION.FAIL Flag'
        'Disable HtmlHelp')
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object cdColorSelect: TColorDialog
    Left = 172
    Top = 24
  end
end
