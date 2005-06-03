object TerminalSet: TTerminalSet
  Left = 775
  Top = 227
  BorderStyle = bsDialog
  Caption = 'TerminalSet'
  ClientHeight = 205
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -5
    Top = 0
    Width = 289
    Height = 205
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      289
      205)
    object lComm: TLabel
      Left = 8
      Top = 6
      Width = 51
      Height = 13
      Caption = 'CommPort:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 8
      Top = 33
      Width = 278
      Height = 128
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object lProtocol: TLabel
        Left = 33
        Top = 76
        Width = 42
        Height = 13
        Caption = 'Protocol:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 33
        Top = 103
        Width = 44
        Height = 13
        Caption = 'DialPrefix'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CheckBoxDTR: TCheckBox
        Left = 212
        Top = 35
        Width = 41
        Height = 17
        Caption = 'DTR'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CheckBoxRTS: TCheckBox
        Left = 212
        Top = 15
        Width = 41
        Height = 17
        Caption = 'RTS'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CheckBoxXON: TCheckBox
        Left = 212
        Top = 54
        Width = 41
        Height = 17
        Caption = 'XON'
        TabOrder = 2
      end
      object ComboParity: TComboBox
        Left = 120
        Top = 40
        Width = 81
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
        Items.Strings = (
          'paNone'
          'paOdd'
          'paEven'
          'paMark'
          'paSpace')
      end
      object ComboStopbits: TComboBox
        Left = 120
        Top = 8
        Width = 81
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 4
        Items.Strings = (
          'sb1'
          'sb15'
          'sb2')
      end
      object ComboBaudrate: TComboBox
        Left = 8
        Top = 8
        Width = 97
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 5
        Items.Strings = (
          'br110'
          'br300'
          'br600'
          'br1200'
          'br2400'
          'br4800'
          'br9600'
          'br14400'
          'br19200'
          'br38400'
          'br56000'
          'br57600'
          'br115200'
          'br128000'
          'br256000')
      end
      object ComboDatabits: TComboBox
        Left = 8
        Top = 40
        Width = 97
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 6
        Items.Strings = (
          'db4'
          'db5'
          'db6'
          'db7'
          'db8')
      end
      object ComboBoxProtocol: TComboBox
        Left = 80
        Top = 72
        Width = 121
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemHeight = 13
        TabOrder = 7
        Items.Strings = (
          'XMODEM'
          'XMODEM-1K'
          'XMODEM-G')
      end
      object eDialPrefix: TEdit
        Left = 80
        Top = 99
        Width = 121
        Height = 21
        TabOrder = 8
      end
    end
    object ComboPortNum: TComboBox
      Left = 64
      Top = 3
      Width = 111
      Height = 21
      Style = csDropDownList
      DropDownCount = 4
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboPortNumChange
      Items.Strings = (
        'Port selected'
        'Com 1'
        'Com 2'
        'Com 3'
        'Com 4'
        'Com 5'
        'Com 6'
        'Com 7'
        'Com 8'
        'Com 9'
        'Com 10'
        'Com 11'
        'Com 12')
    end
    object bReset: TButton
      Left = 179
      Top = 2
      Width = 38
      Height = 23
      Caption = 'Reset'
      TabOrder = 2
    end
    object Close: TButton
      Left = 224
      Top = 2
      Width = 38
      Height = 23
      Caption = 'Close'
      TabOrder = 3
      OnClick = CloseClick
    end
    object Button1: TButton
      Left = 110
      Top = 172
      Width = 75
      Height = 24
      Anchors = [akLeft, akBottom]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 4
    end
  end
end
