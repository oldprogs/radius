object Terminal: TTerminal
  Left = 183
  Top = 8
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'RadX Terminal'
  ClientHeight = 510
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 491
    Width = 662
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
    SizeGrip = False
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 662
    Height = 491
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      662
      491)
    object lPacket: TLabel
      Left = 119
      Top = 412
      Width = 37
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Packet:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 168
      Top = 412
      Width = 6
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = '0'
    end
    object lCount: TLabel
      Left = 217
      Top = 412
      Width = 31
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Count:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 254
      Top = 412
      Width = 6
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = '0'
    end
    object lFilesize: TLabel
      Left = 8
      Top = 412
      Width = 37
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Filesize:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lFilename: TLabel
      Left = 7
      Top = 452
      Width = 45
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Filename:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 56
      Top = 412
      Width = 3
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 56
      Top = 452
      Width = 3
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 5
      Top = 455
      Width = 413
      Height = 14
      Anchors = [akLeft, akBottom]
      Shape = bsBottomLine
    end
    object Bevel2: TBevel
      Left = 5
      Top = 427
      Width = 306
      Height = 2
      Anchors = [akLeft, akBottom]
      Shape = bsBottomLine
    end
    object lEmulation: TLabel
      Left = 317
      Top = 412
      Width = 49
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Emulation:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lStatus: TLabel
      Left = 432
      Top = 407
      Width = 33
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Status:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CheckBoxEmulation: TCheckBox
      Left = 376
      Top = 411
      Width = 50
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'ANSI'
      TabOrder = 0
    end
    object VaTerminal1: TVaTerminal
      Left = 2
      Top = 2
      Width = 657
      Height = 403
      CaptureAppend = False
      BlinkTime = 200
      Capture = False
      Color = clBlack
      Comm = VaComm
      CursorType = crsBlock
      Emulation = VaTTYEmulation
      LocalEcho = False
      LocalEchoColor = clWhite
      ScrollBack = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Terminal'
      Font.Pitch = fpFixed
      Font.Style = []
      WantAllKeys = False
    end
    object Memo1: TMemo
      Left = 432
      Top = 426
      Width = 228
      Height = 57
      Anchors = [akLeft, akRight, akBottom]
      Lines.Strings = (
        '')
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
  object VaTTYEmulation: TVaTTYEmulation
    Left = 216
    Top = 256
  end
  object VaComm: TVaComm
    Baudrate = br38400
    FlowControl.OutCtsFlow = True
    FlowControl.OutDsrFlow = True
    FlowControl.ControlDtr = dtrEnabled
    FlowControl.ControlRts = rtsEnabled
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    FlowControl.DsrSensitivity = True
    FlowControl.TxContinueOnXoff = False
    Options = [coNullStrip, coParityCheck]
    PortNum = 2
    DeviceName = 'COM%d'
    MonitorEvents = [ceBreak, ceCts, ceDsr, ceError, ceRing, ceRlsd, ceRxChar, ceTxEmpty, ceRxFlag, cePErr, ceRx80Full, ceEvent1, ceEvent2]
    Buffers.ReadSize = 8192
    Buffers.WriteSize = 4096
    DirectWrite = True
    OnCts = CommCts
    OnDsr = CommDsr
    OnError = CommError
    Left = 296
    Top = 256
  end
  object VaModem1: TVaModem
    Comm = VaComm
    Active = True
    Config.Strings = (
      'RESETCMD=ATZ^M'
      'DIALCMD=ATDT'
      'DIALTERM=^M'
      'HANGUPCMD=+++~~~ATH0^M'
      'INITCMD=ATZE1M1^M'
      'ANSWERCMD=ATA^M'
      'ROK=OK'
      'RCONNECT=CONNECT'
      'RBUSY=BUSY'
      'RVOICE=VOICE'
      'RNOCARRIER=NO CARRIER'
      'RNODIALTONE=NO DIALTONE'
      'RERROR=ERROR'
      'RRING=RING'
      'RTERM=^M')
    RingDetect = rdMsg
    OnRingDetect = VaModem21RingDetect
    OnRingWaitTimeout = VaModem21RingWaitTimeout
    OnOK = VaModem21OK
    OnVoice = VaModem21Voice
    OnNoCarrier = VaModem21NoCarrier
    OnError = VaModem21Error
    OnConnect = VaModem21Connect
    OnAnswerTimeout = VaModem21AnswerTimeout
    OnCommandTimeout = VaModem21CommandTimeout
    Left = 256
    Top = 256
  end
  object VaXModem1: TVaXModem
    Comm = VaComm
    Mode = tmUpload
    OnTransferStart = VaXModem1TransferStart
    OnTransferEnd = VaXModem1TransferEnd
    OnError = VaXModem1Error
    OnFileInfo = VaXModem1FileInit
    OnPacketEvent = VaXModem1PacketEvent
    Protocol = XModem
    Left = 136
    Top = 256
  end
  object od: TOpenDialog
    Left = 376
    Top = 256
  end
  object odir: TJvBrowseFolderDialog
    Left = 336
    Top = 256
  end
  object VaANSIEmulation: TVaANSIEmulation
    Left = 176
    Top = 256
  end
  object MainMenu1: TMainMenu
    Left = 416
    Top = 256
    object Commands1: TMenuItem
      Caption = '&Commands'
      object PortSetup1: TMenuItem
        Caption = 'Port Setup'
        ShortCut = 16467
        OnClick = PortSetup1Click
      end
      object Dial1: TMenuItem
        Caption = 'Dial'
        ShortCut = 16464
        OnClick = bDialClick
      end
      object Answer1: TMenuItem
        Caption = 'Answer'
        ShortCut = 16449
        OnClick = bAnswerClick
      end
      object HangUp1: TMenuItem
        Caption = 'HangUp'
        ShortCut = 16456
        OnClick = bHangUpClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Send1: TMenuItem
        Caption = 'Send'
        ShortCut = 16452
        OnClick = bSentClick
      end
      object Receive1: TMenuItem
        Caption = 'Receive'
        ShortCut = 16466
        OnClick = bReceiveClick
      end
      object Abort1: TMenuItem
        Caption = 'Abort'
        ShortCut = 16450
        OnClick = bAbortClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Clear1: TMenuItem
        Caption = 'Clear'
        ShortCut = 16472
        OnClick = bClearClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mCancel: TMenuItem
        Caption = 'Exit Terminal'
        ShortCut = 32856
        OnClick = mCancelClick
      end
    end
  end
end
