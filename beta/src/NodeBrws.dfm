object NodelistBrowser: TNodelistBrowser
  Left = 225
  Top = 151
  Width = 587
  Height = 452
  HelpContext = 1970
  BorderIcons = [biSystemMenu, biMaximize]
  BorderWidth = 6
  Caption = 'Browse The Nodelist'
  Color = clBtnFace
  Constraints.MinHeight = 380
  Constraints.MinWidth = 534
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Tree: TTreeView
    Left = 0
    Top = 0
    Width = 567
    Height = 221
    Align = alClient
    ChangeDelay = 50
    HideSelection = False
    Indent = 19
    ReadOnly = True
    RightClickSelect = True
    TabOrder = 1
    OnChange = TreeChange
    OnClick = TreeClick
    OnCollapsed = TreeCollapsed
    OnExpanding = TreeExpanding
    OnExpanded = TreeExpanded
  end
  object pnInfo: TTransPan
    Left = 0
    Top = 231
    Width = 567
    Height = 182
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bvlInfo: TBevel
      Left = 450
      Top = 0
      Width = 3
      Height = 182
      Align = alRight
      Shape = bsRightLine
    end
    object pnAddrInfo: TTransPan
      Left = 0
      Top = 0
      Width = 450
      Height = 182
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      EraseBackGround = True
      DesignSize = (
        450
        182)
      object llWrkTimeLocal: TLabel
        Left = 19
        Top = 163
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Time (LOC):'
        FocusControl = lWrkTimeLocal
      end
      object llWrkTimeUTC: TLabel
        Left = 18
        Top = 145
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Time (UTC):'
        FocusControl = lWrkTimeUTC
      end
      object llFlags: TLabel
        Left = 12
        Top = 109
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Flags (PSTN)'
        FocusControl = lFlags
      end
      object llSpd: TLabel
        Left = 44
        Top = 91
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Speed'
        FocusControl = lSpeed
      end
      object llPhn: TLabel
        Left = 44
        Top = 73
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Phone'
        FocusControl = lPhone
      end
      object llSite: TLabel
        Left = 34
        Top = 55
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Location'
        FocusControl = lLocation
      end
      object llSysop: TLabel
        Left = 44
        Top = 37
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'SysOp'
        FocusControl = lSysop
      end
      object llStat: TLabel
        Left = 42
        Top = 19
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Station'
        FocusControl = lStation
      end
      object llAddr: TLabel
        Left = 37
        Top = 2
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Address'
        FocusControl = lAddress
      end
      object llFlagsIp: TLabel
        Left = 31
        Top = 127
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Flags (IP)'
        FocusControl = lFlagsIp
      end
      object lAddress: TTransEdit
        Left = 80
        Top = 2
        Width = 139
        Height = 18
        TabStop = False
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        EraseBackGround = True
      end
      object lStation: TTransEdit
        Left = 80
        Top = 20
        Width = 192
        Height = 18
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        EraseBackGround = True
      end
      object lSysop: TTransEdit
        Left = 80
        Top = 38
        Width = 192
        Height = 18
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        EraseBackGround = True
      end
      object lLocation: TTransEdit
        Left = 80
        Top = 56
        Width = 337
        Height = 18
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        EraseBackGround = True
      end
      object lPhone: TTransEdit
        Left = 80
        Top = 74
        Width = 258
        Height = 18
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        EraseBackGround = True
      end
      object lSpeed: TTransEdit
        Left = 80
        Top = 92
        Width = 258
        Height = 18
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        EraseBackGround = True
      end
      object lFlags: TTransEdit
        Left = 80
        Top = 110
        Width = 371
        Height = 18
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        EraseBackGround = True
      end
      object lWrkTimeUTC: TTransEdit
        Left = 80
        Top = 146
        Width = 258
        Height = 18
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        EraseBackGround = True
      end
      object lWrkTimeLocal: TTransEdit
        Left = 80
        Top = 164
        Width = 258
        Height = 18
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        EraseBackGround = True
      end
      object lStatus: TTransEdit
        Left = 361
        Top = 2
        Width = 79
        Height = 13
        TabStop = False
        Anchors = [akTop, akRight]
        AutoSize = False
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
        EraseBackGround = True
      end
      object lFlagsIp: TTransEdit
        Left = 80
        Top = 128
        Width = 361
        Height = 18
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        EraseBackGround = True
      end
    end
    object pnAddrSearch: TTransPan
      Left = 453
      Top = 0
      Width = 114
      Height = 182
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        114
        182)
      object llAddrSearch: TLabel
        Left = 10
        Top = 6
        Width = 73
        Height = 13
        Anchors = []
        Caption = '&Address search'
        FocusControl = eAddress
      end
      object bHelp: TButton
        Left = 8
        Top = 158
        Width = 106
        Height = 22
        Anchors = []
        Caption = 'Help'
        TabOrder = 3
        OnClick = bHelpClick
      end
      object bCancel: TButton
        Left = 8
        Top = 130
        Width = 106
        Height = 22
        Anchors = []
        Cancel = True
        Caption = 'Cancel'
        ModalResult = 2
        TabOrder = 2
      end
      object bOK: TButton
        Left = 8
        Top = 103
        Width = 106
        Height = 22
        Anchors = []
        Caption = 'OK'
        Default = True
        ModalResult = 1
        TabOrder = 1
      end
      object eAddress: TEdit
        Left = 9
        Top = 27
        Width = 103
        Height = 21
        Anchors = []
        DragCursor = crHandPoint
        TabOrder = 0
        OnChange = eAddressChange
        OnKeyPress = eAddressKeyPress
      end
    end
  end
  object pnDivider: TPanel
    Left = 0
    Top = 221
    Width = 567
    Height = 10
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
  end
end
