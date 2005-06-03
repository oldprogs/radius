object DeviceConfig: TDeviceConfig
  Left = 354
  Top = 213
  HelpContext = 1080
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Port Configuration'
  ClientHeight = 138
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDblClick = gbComDirectDblClick
  PixelsPerInch = 96
  TextHeight = 13
  object bOK: TButton
    Left = 216
    Top = 108
    Width = 75
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object bCancel: TButton
    Left = 296
    Top = 108
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object bHelp: TButton
    Left = 376
    Top = 108
    Width = 75
    Height = 23
    Caption = 'Help'
    TabOrder = 2
    OnClick = bHelpClick
  end
  object gbComDirect: TGroupBox
    Left = 20
    Top = 11
    Width = 429
    Height = 86
    Caption = ' Com Port '
    TabOrder = 3
    OnDblClick = gbComDirectDblClick
    object lComPort: TLabel
      Left = 43
      Top = 23
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'COM &Port'
      FocusControl = cbCom
    end
    object lRate: TLabel
      Left = 47
      Top = 55
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = '&BPS rate'
      FocusControl = cbSpeed
    end
    object lTapiDevice: TLabel
      Left = 28
      Top = 56
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'TAPI Device'
      Visible = False
    end
    object cbCom: TComboBox
      Left = 95
      Top = 19
      Width = 74
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbComChange
    end
    object cbSpeed: TComboBox
      Left = 95
      Top = 51
      Width = 81
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnKeyPress = cbSpeedKeyPress
      Items.Strings = (
        '9600'
        '14400'
        '19200'
        '38400'
        '56000'
        '57600'
        '115200'
        '128000'
        '256000')
    end
    object gFlow: TGroupBox
      Left = 187
      Top = 13
      Width = 105
      Height = 60
      Caption = ' &Flow control '
      TabOrder = 2
      object cbCTS_RTS: TCheckBox
        Left = 8
        Top = 17
        Width = 73
        Height = 17
        Caption = 'CTS/&RTS'
        TabOrder = 0
      end
      object cbXon_Xoff: TCheckBox
        Left = 8
        Top = 37
        Width = 73
        Height = 17
        Caption = 'XOn/&XOff'
        TabOrder = 1
      end
    end
    object gBits: TGroupBox
      Left = 298
      Top = 13
      Width = 119
      Height = 60
      Caption = ' Bits '
      TabOrder = 3
      object lBits: TLabel
        Left = 8
        Top = 25
        Width = 24
        Height = 13
        Caption = '8N1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bBits: TButton
        Left = 40
        Top = 20
        Width = 69
        Height = 22
        Caption = '&Change...'
        TabOrder = 0
        OnClick = bBitsClick
      end
    end
    object cxTAPI: TComboBox
      Left = 96
      Top = 51
      Width = 322
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      Visible = False
    end
    object cbDirect: TCheckBox
      Left = 186
      Top = 20
      Width = 91
      Height = 17
      Caption = 'Direct access'
      TabOrder = 5
      Visible = False
      OnClick = cbDirectClick
    end
    object cbAccept: TCheckBox
      Left = 293
      Top = 20
      Width = 122
      Height = 17
      Caption = 'Intercept shared calls'
      TabOrder = 6
      Visible = False
    end
  end
end
