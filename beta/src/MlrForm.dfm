object MailerForm: TMailerForm
  Left = 319
  Top = 166
  Width = 625
  Height = 507
  HelpContext = 1500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnHelp = FormHelp
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainTabControl: TTabControl
    Left = 0
    Top = 0
    Width = 617
    Height = 461
    Align = alClient
    HotTrack = True
    TabOrder = 0
    Tabs.Strings = (
      'Polls')
    TabIndex = 0
    OnChange = MainTabControlChange
    DesignSize = (
      617
      461)
    object lTime0: TLabel
      Left = 436
      Top = 2
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Radius uptime: '
      Layout = tlBottom
    end
    object lTime1: TLabel
      Left = 509
      Top = 2
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '100 days 00:00:00'
      Layout = tlBottom
    end
    object MainPanel: TTransPan
      Left = 4
      Top = 24
      Width = 609
      Height = 433
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      TabOrder = 0
      EraseBackGround = True
      object TopNotebookPanel: TTransPan
        Left = 0
        Top = 0
        Width = 605
        Height = 267
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object PollsListPanel: TTransPan
          Left = 0
          Top = 0
          Width = 605
          Height = 267
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          Visible = False
          EraseBackGround = True
          object PollsListView: TAdvListView
            Left = 0
            Top = 0
            Width = 605
            Height = 267
            Align = alClient
            AllocBy = 128
            BorderStyle = bsNone
            Columns = <
              item
                Caption = 'Node'
                Width = 100
              end
              item
                Caption = 'Numbers'
                Width = 170
              end
              item
                Caption = 'Owner'
                Width = 80
              end
              item
                Caption = 'State'
                Width = 60
              end
              item
                Caption = 'Busy'
                Width = 40
              end
              item
                Caption = 'No c.'
                Width = 40
              end
              item
                Caption = 'Fail'
                Width = 40
              end
              item
                Caption = 'Type'
                Width = 60
              end>
            ColumnClick = False
            ReadOnly = True
            RowSelect = True
            PopupMenu = PollPopupMenu
            TabOrder = 0
            ViewStyle = vsReport
            OnClick = PollsListViewClick
            OnDblClick = PollsListViewDblClick
            OnKeyDown = PollsListViewKeyDown
            OnApiDropFiles = PollsListViewApiDropFiles
          end
        end
        object DaemonPanel: TTransPan
          Left = 0
          Top = 0
          Width = 605
          Height = 267
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 2
          Visible = False
          EraseBackGround = True
          object MainDaemonPanel: TTransPan
            Left = 8
            Top = 0
            Width = 589
            Height = 256
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object Panel7: TTransPan
              Left = 0
              Top = 128
              Width = 589
              Height = 128
              Align = alBottom
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 0
              object Panel9: TTransPan
                Left = 0
                Top = 0
                Width = 91
                Height = 128
                Align = alLeft
                BevelOuter = bvNone
                BorderWidth = 8
                ParentBackground = False
                TabOrder = 0
                object DaemonPI: TTransPan
                  Left = 8
                  Top = 8
                  Width = 75
                  Height = 16
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = ' Input'
                  ParentBackground = False
                  TabOrder = 0
                end
                object Panel16: TTransPan
                  Left = 8
                  Top = 24
                  Width = 75
                  Height = 96
                  Align = alClient
                  BorderWidth = 1
                  ParentBackground = False
                  TabOrder = 1
                  object gInput: TNavyGauge
                    Left = 2
                    Top = 2
                    Width = 71
                    Height = 92
                    Align = alClient
                  end
                end
              end
              object Panel12: TTransPan
                Left = 91
                Top = 0
                Width = 498
                Height = 128
                Align = alClient
                BevelOuter = bvNone
                BorderWidth = 8
                ParentBackground = False
                TabOrder = 1
                object DaemonPIH: TTransPan
                  Left = 8
                  Top = 8
                  Width = 482
                  Height = 16
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = ' Input History'
                  ParentBackground = False
                  TabOrder = 0
                end
                object Panel18: TTransPan
                  Left = 8
                  Top = 24
                  Width = 482
                  Height = 96
                  Align = alClient
                  BorderWidth = 1
                  ParentBackground = False
                  TabOrder = 1
                  object gInputGraph: TNavyGraph
                    Left = 2
                    Top = 2
                    Width = 478
                    Height = 92
                    Align = alClient
                    EraseBackGround = True
                  end
                end
              end
            end
            object Panel6: TTransPan
              Left = 0
              Top = 0
              Width = 589
              Height = 128
              Align = alClient
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 1
              object Panel8: TTransPan
                Left = 0
                Top = 0
                Width = 91
                Height = 128
                Align = alLeft
                BevelOuter = bvNone
                BorderWidth = 8
                ParentBackground = False
                TabOrder = 0
                object DaemonPO: TTransPan
                  Left = 8
                  Top = 8
                  Width = 75
                  Height = 16
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = ' Output'
                  ParentBackground = False
                  TabOrder = 0
                end
                object Panel111: TTransPan
                  Left = 8
                  Top = 24
                  Width = 75
                  Height = 96
                  Align = alClient
                  BorderWidth = 1
                  ParentBackground = False
                  TabOrder = 1
                  object gOutput: TNavyGauge
                    Left = 2
                    Top = 2
                    Width = 71
                    Height = 92
                    Align = alClient
                  end
                end
              end
              object Panel10: TTransPan
                Left = 91
                Top = 0
                Width = 498
                Height = 128
                Align = alClient
                BevelOuter = bvNone
                BorderWidth = 8
                ParentBackground = False
                TabOrder = 1
                object DaemonPOH: TTransPan
                  Left = 8
                  Top = 8
                  Width = 482
                  Height = 16
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = ' Output History'
                  ParentBackground = False
                  TabOrder = 0
                end
                object Panel17: TTransPan
                  Left = 8
                  Top = 24
                  Width = 482
                  Height = 96
                  Align = alClient
                  BorderWidth = 1
                  ParentBackground = False
                  TabOrder = 1
                  object gOutputGraph: TNavyGraph
                    Left = 2
                    Top = 2
                    Width = 478
                    Height = 92
                    Align = alClient
                    EraseBackGround = True
                  end
                end
              end
            end
          end
          object Panel19: TTransPan
            Left = 0
            Top = 256
            Width = 605
            Height = 11
            Align = alBottom
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 1
            EraseBackGround = True
          end
          object Panel20: TTransPan
            Left = 597
            Top = 0
            Width = 8
            Height = 256
            Align = alRight
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 2
            EraseBackGround = True
          end
          object Panel21: TTransPan
            Left = 0
            Top = 0
            Width = 8
            Height = 256
            Align = alLeft
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 3
            Visible = False
            EraseBackGround = True
          end
        end
        object MailerBPanel: TTransPan
          Left = 0
          Top = 0
          Width = 605
          Height = 267
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 3
          Visible = False
          EraseBackGround = True
          object SplitterBPanel: TSplitter
            Left = 305
            Top = 0
            Height = 267
            AutoSnap = False
            ResizeStyle = rsUpdate
            OnMoved = SplitterBPanelMoved
          end
          object Panel3: TTransPan
            Left = 308
            Top = 0
            Width = 297
            Height = 267
            Align = alClient
            BevelOuter = bvNone
            BorderWidth = 12
            ParentBackground = False
            TabOrder = 1
            EraseBackGround = True
            object SessionHist: TTransPan
              Left = 12
              Top = 178
              Width = 273
              Height = 77
              Align = alBottom
              ParentBackground = False
              TabOrder = 1
              EraseBackGround = True
              object MHistO: TNavyGraph
                Left = 1
                Top = 1
                Width = 271
                Height = 37
                Align = alTop
                EraseBackGround = True
              end
              object MHistI: TNavyGraph
                Left = 1
                Top = 39
                Width = 271
                Height = 37
                Align = alBottom
                EraseBackGround = True
              end
            end
            object SessionNfoPnl: TTransPan
              Left = 12
              Top = 12
              Width = 273
              Height = 168
              Align = alTop
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 0
              object gTabCnt: TTabControl
                Left = 0
                Top = 0
                Width = 273
                Height = 168
                Align = alClient
                TabOrder = 0
                Tabs.Strings = (
                  'Info')
                TabIndex = 0
                OnChange = gTabCntChange
                object gTitles: TAdvGrid
                  Left = 4
                  Top = 24
                  Width = 83
                  Height = 140
                  FixedFont.Charset = DEFAULT_CHARSET
                  FixedFont.Color = clWindowText
                  FixedFont.Height = -11
                  FixedFont.Name = 'MS Sans Serif'
                  FixedFont.Style = []
                  Align = alLeft
                  Color = clBtnFace
                  ColCount = 2
                  Ctl3D = False
                  DefaultColWidth = 80
                  DefaultRowHeight = 15
                  Enabled = False
                  RowCount = 8
                  FixedRows = 0
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Options = [goFixedHorzLine]
                  ParentCtl3D = False
                  ParentFont = False
                  ScrollBars = ssNone
                  TabOrder = 0
                  CheckBoxes = False
                end
                object gNfo: TAdvGrid
                  Left = 87
                  Top = 24
                  Width = 182
                  Height = 140
                  FixedFont.Charset = DEFAULT_CHARSET
                  FixedFont.Color = clWindowText
                  FixedFont.Height = -11
                  FixedFont.Name = 'MS Sans Serif'
                  FixedFont.Style = []
                  Align = alClient
                  Color = clBtnFace
                  ColCount = 1
                  DefaultColWidth = 1000
                  DefaultRowHeight = 15
                  FixedCols = 0
                  RowCount = 8
                  FixedRows = 0
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Options = [goHorzLine]
                  ParentFont = False
                  ScrollBars = ssHorizontal
                  TabOrder = 2
                  CheckBoxes = False
                end
                object gLst: TAdvGrid
                  Left = 144
                  Top = 24
                  Width = 168
                  Height = 140
                  FixedFont.Charset = DEFAULT_CHARSET
                  FixedFont.Color = clWindowText
                  FixedFont.Height = -11
                  FixedFont.Name = 'MS Sans Serif'
                  FixedFont.Style = []
                  ColCount = 3
                  DefaultColWidth = 160
                  DefaultRowHeight = 15
                  RowCount = 2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goDigitalRows]
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 1
                  Visible = False
                  CheckBoxes = False
                  ColWidths = (
                    31
                    171
                    60)
                end
              end
            end
          end
          object Panel2: TTransPan
            Left = 0
            Top = 0
            Width = 305
            Height = 267
            Align = alLeft
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            DesignSize = (
              305
              267)
            object SndBox: TGroupBox
              Left = 8
              Top = 8
              Width = 297
              Height = 97
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Sending'
              ParentBackground = False
              TabOrder = 0
              DesignSize = (
                297
                97)
              object llSndCPS: TLabel
                Left = 188
                Top = 20
                Width = 21
                Height = 13
                Anchors = [akTop, akRight]
                Caption = 'CPS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                Visible = False
              end
              object lSndCPS: TLabel
                Left = 149
                Top = 20
                Width = 36
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = '99999'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object llSndSize: TLabel
                Left = 16
                Top = 60
                Width = 23
                Height = 13
                Caption = 'Size:'
                Visible = False
              end
              object lSndSize: TLabel
                Left = 45
                Top = 60
                Width = 5
                Height = 13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object SndTot: TxGauge
                Left = 228
                Top = 16
                Width = 57
                Height = 57
                Kind = gkPie
                BorderStyle = bsNone
                Progress = 0
                Visible = False
              end
              object llFileSndTime: TLabel
                Left = 16
                Top = 78
                Width = 41
                Height = 13
                Caption = 'File time:'
                Visible = False
              end
              object lFileSndTime: TLabel
                Left = 64
                Top = 78
                Width = 51
                Height = 13
                Caption = '00:00:00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object llTotalSndTime: TLabel
                Left = 136
                Top = 78
                Width = 49
                Height = 13
                Caption = 'Total time:'
                Visible = False
              end
              object lTotalSndTime: TLabel
                Left = 190
                Top = 78
                Width = 51
                Height = 13
                Caption = '00:00:00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object SndBar: TProgressBar
                Left = 12
                Top = 36
                Width = 203
                Height = 10
                Anchors = [akLeft, akTop, akRight]
                Smooth = True
                TabOrder = 0
                Visible = False
              end
              object lSndFile: TEdit
                Left = 20
                Top = 19
                Width = 125
                Height = 16
                Anchors = [akLeft, akTop, akRight]
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Fixedsys'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
                Text = 'Radius.exe'
              end
            end
            object RcvBox: TGroupBox
              Left = 8
              Top = 108
              Width = 297
              Height = 97
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Receiving'
              ParentBackground = False
              TabOrder = 1
              DesignSize = (
                297
                97)
              object llRcvCPS: TLabel
                Left = 188
                Top = 20
                Width = 21
                Height = 13
                Anchors = [akTop, akRight]
                Caption = 'CPS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                Visible = False
              end
              object lRcvCPS: TLabel
                Left = 149
                Top = 20
                Width = 36
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = '99999'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object llRcvSize: TLabel
                Left = 16
                Top = 60
                Width = 23
                Height = 13
                Caption = 'Size:'
                Visible = False
              end
              object lRcvSize: TLabel
                Left = 45
                Top = 60
                Width = 5
                Height = 13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object RcvTot: TxGauge
                Left = 228
                Top = 16
                Width = 57
                Height = 57
                Kind = gkPie
                BorderStyle = bsNone
                Progress = 0
                Visible = False
              end
              object llFileRcvTime: TLabel
                Left = 16
                Top = 77
                Width = 41
                Height = 13
                Caption = 'File time:'
                Visible = False
              end
              object lFileRcvTime: TLabel
                Left = 64
                Top = 77
                Width = 51
                Height = 13
                Caption = '00:00:00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object llTotalRcvTime: TLabel
                Left = 136
                Top = 77
                Width = 49
                Height = 13
                Caption = 'Total time:'
                Visible = False
              end
              object lTotalRcvTime: TLabel
                Left = 192
                Top = 77
                Width = 51
                Height = 13
                Caption = '00:00:00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object RcvBar: TProgressBar
                Left = 12
                Top = 36
                Width = 203
                Height = 10
                Anchors = [akLeft, akTop, akRight]
                Smooth = True
                TabOrder = 0
                Visible = False
              end
              object lRcvFile: TEdit
                Left = 20
                Top = 19
                Width = 125
                Height = 16
                Anchors = [akLeft, akTop, akRight]
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Fixedsys'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
                Text = 'Radius.exe'
              end
            end
            object SessionBox: TGroupBox
              Left = 9
              Top = 207
              Width = 296
              Height = 48
              Anchors = [akLeft, akTop, akRight]
              Caption = 'SessionBox'
              ParentBackground = False
              TabOrder = 2
              DesignSize = (
                296
                48)
              object llSessionTime: TLabel
                Left = 17
                Top = 21
                Width = 89
                Height = 13
                Alignment = taRightJustify
                Caption = 'Total elapsed time:'
                Visible = False
              end
              object lSessionTime: TLabel
                Left = 113
                Top = 21
                Width = 51
                Height = 13
                Caption = '00:00:00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object llSessionCost: TLabel
                Left = 211
                Top = 21
                Width = 24
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = 'Cost:'
              end
              object lSessionCost: TLabel
                Left = 240
                Top = 21
                Width = 33
                Height = 13
                Anchors = [akTop, akRight]
                Caption = '00.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
        end
        object MailerAPanel: TTransPan
          Left = 0
          Top = 0
          Width = 605
          Height = 267
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          Visible = False
          EraseBackGround = True
          object SplitterAPanel: TSplitter
            Left = 342
            Top = 0
            Height = 267
            Align = alRight
            AutoSnap = False
            ResizeStyle = rsUpdate
            OnMoved = SplitterAPanelMoved
          end
          object TermsPanel: TTransPan
            Left = 345
            Top = 0
            Width = 260
            Height = 267
            Align = alRight
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object TermTx: TMicroTerm
              Left = 8
              Top = 7
              Width = 248
              Height = 117
            end
            object TermRx: TMicroTerm
              Left = 8
              Top = 127
              Width = 248
              Height = 117
            end
          end
          object DialupInfoPanel: TTransPan
            Left = 0
            Top = 0
            Width = 342
            Height = 267
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 1
            EraseBackGround = True
            object StatusCarrier: TTransPan
              Left = 0
              Top = 0
              Width = 342
              Height = 54
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 3
              ParentBackground = False
              TabOrder = 0
              EraseBackGround = True
              object StatusBox: TGroupBox
                Left = 8
                Top = 3
                Width = 331
                Height = 48
                Align = alClient
                Caption = ' Status '
                Color = clBtnFace
                ParentBackground = False
                ParentColor = False
                TabOrder = 0
                object lStatus: TLabel
                  Left = 11
                  Top = 20
                  Width = 5
                  Height = 13
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = False
                end
                object TimeoutBox: TTransPan
                  Left = 237
                  Top = 15
                  Width = 92
                  Height = 31
                  Align = alRight
                  BevelOuter = bvNone
                  ParentBackground = False
                  TabOrder = 0
                  Visible = False
                  EraseBackGround = True
                  object lTimeout: TLabel
                    Left = 58
                    Top = 4
                    Width = 5
                    Height = 16
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object bStart: TSpeedButton
                    Left = 0
                    Top = 1
                    Width = 25
                    Height = 22
                    Glyph.Data = {
                      36010000424D3601000000000000760000002800000014000000100000000100
                      040000000000C000000000000000000000001000000010000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      333333330000333333333333333333330000338FF33333333333FF3300003380
                      F333333333FF0F3300003380F3333333FF000F3300003380F33333FF00000F33
                      00003380F333FF0000000F3300003380F33F000000000F3300003380F3880000
                      00000F3300003380F333880000000F3300003380F333338800000F3300003380
                      F333333388000F3300003380F333333333880F3300003388F333333333338F33
                      0000333333333333333333330000333333333333333333330000}
                    OnClick = bStartClick
                  end
                  object bAdd: TSpeedButton
                    Left = 24
                    Top = 1
                    Width = 25
                    Height = 22
                    Glyph.Data = {
                      36010000424D3601000000000000760000002800000011000000100000000100
                      040000000000C000000000000000000000001000000010000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      333330000000333333333333333330000000333F333333333333300000003380
                      FF333333333330000000338000FF333333333000000033800000FF3333333000
                      00003380000000FF333330000000338000000000FF3330000000338000000000
                      88F3300000003380000000883333300000003380000088333333300000003380
                      0088333333333000000033808833333333333000000033883333333333333000
                      0000333333333333333330000000333333333333333330000000}
                    OnClick = bAddClick
                  end
                end
              end
              object Panel1: TTransPan
                Left = 3
                Top = 3
                Width = 5
                Height = 48
                Align = alLeft
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
                EraseBackGround = True
              end
            end
            object Panel4: TTransPan
              Left = 0
              Top = 54
              Width = 342
              Height = 208
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 3
              ParentBackground = False
              TabOrder = 1
              EraseBackGround = True
              object Panel5: TTransPan
                Left = 3
                Top = 3
                Width = 5
                Height = 202
                Align = alLeft
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 0
                EraseBackGround = True
              end
              object StatusLine: TTransPan
                Left = 8
                Top = 3
                Width = 331
                Height = 202
                Align = alClient
                BevelOuter = bvNone
                UseDockManager = False
                FullRepaint = False
                ParentColor = True
                TabOrder = 1
                object GroupLine: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 331
                  Height = 202
                  Align = alClient
                  Caption = ' Events '
                  TabOrder = 0
                  object Panel14: TPanel
                    Left = 291
                    Top = 15
                    Width = 38
                    Height = 185
                    Align = alRight
                    BevelInner = bvRaised
                    BevelOuter = bvLowered
                    TabOrder = 0
                    object EdtEvtBtn: TSpeedButton
                      Left = 8
                      Top = 8
                      Width = 23
                      Height = 22
                      Hint = 'Edit Events'
                      Flat = True
                      Glyph.Data = {
                        76010000424D7601000000000000760000002800000020000000100000000100
                        0400000000000001000000000000000000001000000010000000000000000000
                        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
                        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
                        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
                        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
                        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
                        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
                        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
                        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
                        00333377737FFFFF773333303300000003333337337777777333}
                      NumGlyphs = 2
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = evListViewDblClick
                    end
                  end
                  object evListView: TListView
                    Left = 2
                    Top = 15
                    Width = 289
                    Height = 185
                    Align = alClient
                    Columns = <
                      item
                        AutoSize = True
                        Caption = 'Event'
                      end
                      item
                        Alignment = taRightJustify
                        Caption = 'Start'
                        Width = 80
                      end
                      item
                        Alignment = taRightJustify
                        Caption = 'End'
                        Width = 80
                      end>
                    ColumnClick = False
                    GridLines = True
                    ReadOnly = True
                    RowSelect = True
                    SmallImages = ilMainMenu
                    SortType = stData
                    TabOrder = 1
                    ViewStyle = vsReport
                    OnClick = evListViewClick
                    OnCompare = evListViewCompare
                    OnDblClick = evListViewDblClick
                  end
                end
              end
            end
          end
        end
      end
      object LogBox: TLogger
        Left = 0
        Top = 267
        Width = 605
        Height = 129
        Cursor = crHandPoint
        Align = alClient
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'FixedSys'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 4
      end
      object ChatPan: TTransPan
        Left = 0
        Top = 267
        Width = 605
        Height = 129
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
        OnResize = ChatPanResize
        object Panel13: TTransPan
          Left = 0
          Top = 104
          Width = 605
          Height = 25
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            605
            25)
          object eType: TEdit
            Left = 1
            Top = 3
            Width = 603
            Height = 21
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 0
            OnKeyPress = eTypeKeyPress
          end
        end
        object Panel15: TTransPan
          Left = 0
          Top = 19
          Width = 605
          Height = 85
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object ChatMemo1: TMemo
            Left = 0
            Top = 0
            Width = 605
            Height = 155
            TabStop = False
            Align = alTop
            Color = 14415353
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
            OnKeyPress = ChatMemo2KeyPress
          end
          object ChatMemo2: TMemo
            Left = 0
            Top = 155
            Width = 605
            Height = 417
            TabStop = False
            Align = alClient
            Color = 14415353
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
            OnKeyPress = ChatMemo2KeyPress
          end
        end
        object ChatCaptionPan: TTransPan
          Left = 0
          Top = 0
          Width = 605
          Height = 19
          Align = alTop
          TabOrder = 2
          EraseBackGround = True
          DesignSize = (
            605
            19)
          object imgHeader: TImage
            Left = 1
            Top = 1
            Width = 603
            Height = 17
            Align = alClient
            Picture.Data = {
              07544269746D617086050000424D86050000000000001E040000280000006801
              000001000000010008000000000068010000120B0000120B0000FA000000FA00
              00007F7E7F007E7D7E007D7C7D007574750074737400727172006C6B6C006A69
              6A00676667006665660065646500BFBEBF00BEBDBE00BCBBBC00BAB9BA00B8B7
              B800B6B5B600B0AFB000ABAAAB00A6A5A600A4A3A400A1A0A100969596009594
              9500949394009291920091909100908F9000818081007F7E7E00777676007574
              74006F6E6E006C6B6B006B6A6A006A69690066656500C0BFBF00BEBDBD00BCBB
              BB00B1B0B000ACABAB00AAA9A900A2A1A100A09F9F009E9D9D00989797008E8D
              8D008C8B8B008B8A8A0084838300828181007D7D7C007B7B7A007A7A79007979
              78007676750074747300737372006C6C6B006B6B6A006A6A6900696968006666
              6500C0C0BF00B5B5B400B4B4B300B2B2B100B1B1B000B0B0AF00AEAEAD00ADAD
              AC00A5A5A400969695008A8A890086868500858584007A7B7A00797A79007778
              7700727372006D6E6D006768670065666500BFC0BF00BEBFBE00BABBBA00B9BA
              B900B8B9B800B7B8B700B6B7B600B4B5B400AEAFAE00ACADAC00AAABAA00A6A7
              A600999A99009899980096979600949594008F908F008E8F8E008C8D8C008687
              8600808180007B7C7C007576760072737300707171006F7070006D6E6E006465
              6500BFC0C000BDBEBE00B9BABA00B8B9B900B6B7B700B5B6B600B1B2B200ADAE
              AE00ABACAC00AAABAB00A9AAAA009D9E9E0098999900929393008D8E8E008B8C
              8C008889890087888800848585007F8080007D7D7E0078787900717172007070
              71006C6C6D0066666700BCBCBD00BABABB00B6B6B700B4B4B500B2B2B300B0B0
              B100AEAEAF00ADADAE00A9A9AA00A8A8A900A6A6A700A4A4A5009D9D9E009C9C
              9D009B9B9C00949495009393940091919200909091008E8E8F008C8C8D008282
              830081818200C0C0C000BFBFBF00BEBEBE00BDBDBD00BCBCBC00BBBBBB00BABA
              BA00B9B9B900B8B8B800B7B7B700B6B6B600B5B5B500B4B4B400B3B3B300B2B2
              B200B1B1B100AFAFAF00AEAEAE00ADADAD00ACACAC00ABABAB00A9A9A900A8A8
              A800A7A7A700A6A6A600A5A5A500A4A4A400A3A3A300A2A2A200A1A1A100A0A0
              A0009F9F9F009E9E9E009D9D9D009C9C9C009B9B9B009A9A9A00999999009898
              9800979797009696960095959500939393009292920091919100909090008F8F
              8F008E8E8E008D8D8D008C8C8C008B8B8B008A8A8A0089898900888888008787
              87008686860084848400838383008282820081818100808080007F7F7F007E7E
              7E007C7C7C007B7B7B007A7A7A00797979007878780077777700767676007575
              750074747400737373007272720071717100707070006F6F6F006E6E6E006D6D
              6D006C6C6C006B6B6B006A6A6A00696969006868680067676700666666006565
              65006464640000000000F8F8F8F86F0AF7F753090924F63FF68908F5F5F5F5F4
              52F4F4F4F4F4F33EF323073DF2F2F2223CF1F121063BF088EFF0EF6E516EEE20
              EEEEEDED6D6DEC8787EB6CEA0586EA3A506BE90404391FE803E7E76A38E61EE5
              E5E54FE485E437E3E34E36E2354DE1E1E069E0023484DF01DFDF1D00DE83DDDD
              681CDC33A0DBDB9FDA323232D9D9824C4BD8D8D867D7D7D781D6D6D680D5D54A
              4AD431D4D330307F9ED266D12F2F7ED09D65CFCF1B64CECE1A9CCD9B9B19CCCC
              7DCBCB9A189A996317CACA4916C962C8C8C82EC8C761C77CC66060C5C5C4C4C4
              98C3C3C397C2962D7BC1C1C0C0C0C02CBF15BEBEBE2BBDBDBDBCBCBC14BB4895
              BABA13B9B95F94B8B8B7B7B7B793B62A7A925E1279B57829B4B45D47B3779146
              B2905CB1B145118F2844B0B07643AFAF8E8EAEAE42ADAD5B8D41AC7510ABAB8C
              5A74AA59A90FA9A97358A8A872570EA7A78B568BA6A60D270DA58AA5A58AA4A4
              0C71A426A3A3550BA2A2A2A2A254257040A1}
            Stretch = True
          end
          object sbCloseChat: TSpeedButton
            Left = 586
            Top = 3
            Width = 15
            Height = 15
            Hint = 'Close this chat'
            Anchors = [akTop, akRight]
            Caption = 'X'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = sbCloseChatClick
          end
          object lChatCaption: TLabel
            Left = 6
            Top = 3
            Width = 36
            Height = 13
            Caption = 'Caption'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
        end
      end
      object BottomPanel: TTransPan
        Left = 0
        Top = 396
        Width = 605
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 1
        object OutMgrBtnPanel: TTransPan
          Left = 0
          Top = 0
          Width = 605
          Height = 33
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 3
          Visible = False
          object bReread: TSpeedButton
            Left = 7
            Top = 3
            Width = 26
            Height = 26
            Hint = 'Rescan'
            Enabled = False
            Flat = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000010000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
              33333333333F8888883F33330000324334222222443333388F3833333388F333
              000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
              F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
              223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
              3338888300003AAAAAAA33333333333888888833333333330000333333333333
              333333333333333333FFFFFF000033333333333344444433FFFF333333888888
              00003A444333333A22222438888F333338F3333800003A2243333333A2222438
              F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
              22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
              33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
              3333333333338888883333330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bRereadClick
          end
          object llTotalAtInbound: TLabel
            Left = 83
            Top = 2
            Width = 80
            Height = 13
            Alignment = taRightJustify
            Caption = 'Total at inbound:'
          end
          object llAvaibleAtInbound: TLabel
            Left = 72
            Top = 17
            Width = 91
            Height = 13
            Alignment = taRightJustify
            Caption = 'Avaible at inbound:'
          end
          object lTotalAtInbound: TLabel
            Left = 166
            Top = 2
            Width = 29
            Height = 13
            Caption = '0 Mb'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lAvaibleAtInbound: TLabel
            Left = 166
            Top = 17
            Width = 29
            Height = 13
            Caption = '0 Mb'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lOutboundSize: TLabel
            Left = 334
            Top = 2
            Width = 29
            Height = 13
            Caption = '0 Mb'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object llOutboundSize: TLabel
            Left = 260
            Top = 2
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'Outbound size:'
          end
        end
        object DaemonBtnPanel: TTransPan
          Left = 0
          Top = 0
          Width = 605
          Height = 33
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 2
          Visible = False
          object RasBtnPan: TTransPan
            Left = 433
            Top = 0
            Width = 172
            Height = 33
            Align = alRight
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object CancelButton: TButton
              Left = 88
              Top = 7
              Width = 81
              Height = 21
              Cancel = True
              Caption = 'Cancel'
              TabOrder = 0
              OnClick = CancelButtonClick
            end
            object ConnectButton: TButton
              Left = 0
              Top = 7
              Width = 81
              Height = 21
              Caption = 'Connect'
              Default = True
              TabOrder = 1
              OnClick = ConnectButtonClick
            end
          end
          object RasLabelPan: TTransPan
            Left = 0
            Top = 0
            Width = 433
            Height = 33
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 1
            DesignSize = (
              433
              33)
            object lStatus2: TLabel
              Left = 27
              Top = 11
              Width = 142
              Height = 13
              Caption = 'Connected to Corex VPN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lTimeCon: TLabel
              Left = 301
              Top = 11
              Width = 51
              Height = 13
              Anchors = [akTop, akRight]
              Caption = '11:11:11'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object PollBtnPanel: TTransPan
          Left = 0
          Top = 0
          Width = 605
          Height = 33
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          Visible = False
          DesignSize = (
            605
            33)
          object bDeleteAllPolls: TSpeedButton
            Left = 131
            Top = 3
            Width = 25
            Height = 26
            Hint = 'Delete all Polls'
            Enabled = False
            Flat = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333337733333
              333333333333F3333333333300003333911733333973333333377F333333F333
              000033369111733391173333337F37F333F77F33000033919111173911117333
              337F337F3F7337F30000339119111171111173337F7F3337F733337F00003391
              11911111111733337F37F33373333F730000333911191111117333337F337F33
              3333F73300003333911111111733333337F337F3333373330000333339119111
              17333333337F337F333733330000333333191111173333333337F3733337F333
              000033333391117111733333333377333337F333000033333911171911173333
              333373337F337F330000333399117111911173333337F33737F337F300003339
              11913911191113333377FF7F337F337F00003339116333911191933337F37737
              F337FFF700003333913333391113333337FF73337F3377730000333333333333
              919333333377333337FFF3330000333333333333333333333333333333777333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bDeleteAllPollsClick
          end
          object bResetPoll: TSpeedButton
            Left = 69
            Top = 3
            Width = 25
            Height = 26
            Hint = 'Reset Poll'
            Enabled = False
            Flat = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000010000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
              33333333333F8888883F33330000324334222222443333388F3833333388F333
              000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
              F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
              223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
              3338888300003AAAAAAA33333333333888888833333333330000333333333333
              333333333333333333FFFFFF000033333333333344444433FFFF333333888888
              00003A444333333A22222438888F333338F3333800003A2243333333A2222438
              F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
              22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
              33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
              3333333333338888883333330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bResetPollClick
          end
          object bDeletePoll: TSpeedButton
            Left = 38
            Top = 3
            Width = 25
            Height = 26
            Hint = 'Delete Poll'
            Enabled = False
            Flat = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333000033337733333333333333333F333333333333
              0000333D55733333D73333333377F333333F33330000333D5557333D55733333
              37F37F333F77F3330000333D555573D55557333337F337F3F7337F3300003333
              D55557555557333337F3337F733337F3000033333D55555555733333337F3337
              3333F7330000333333D55555573333333337F333333F73330000333333355555
              7333333333337F333337333300003333333D555573333333333337F333733333
              0000333333D555557333333333333733337F3333000033333D55575557333333
              33337333337F333300003333D55573D55573333333373337F337F33300003333
              D557333D55573333337F33737F337F33000033333D533333D5553333337FF733
              37F337F300003333333333333D5D333333377333337FFF730000333333333333
              3333333333333333333777330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bDeletePollClick
          end
          object bNewPoll: TSpeedButton
            Left = 7
            Top = 3
            Width = 25
            Height = 26
            Hint = 'Create Poll'
            Flat = True
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              1800000000000006000000000000000000000000000000000000FF00FFFF00FF
              FF00FF8000008000008000008000008000008000008000008000008000008000
              00800000FF00FFFF00FFFF00FFFF00FFFF00FF99A8AC99A8AC99A8AC99A8AC99
              A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF00FFFF00FF0000FFFF00FF
              FF00FF800000FFFF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00800000FF00FFFF00FF99A8ACFF00FFFF00FF99A8AC99A8AC99A8AC99A8AC99
              A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF00FFFF00FFFF00FFFF0000
              FF0000800000FFFF00C0C0C00000FFC0C0C00000FFC0C0C00000FFC0C0C0FF00
              00800000FF00FF0000FFFF00FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
              A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF00FF99A8ACFF0000FF00FF
              0000FF800000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
              008000000000FF0000FF99A8ACFF00FF99A8AC99A8AC99A8AC99A8AC99A8AC99
              A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF0000FF00FF
              0000FF0000FF800000FFFF00C0C0C00000FFC0C0C00000FFC0C0C0FFFF008000
              000000FF0000FFFF00FF99A8ACFF00FF99A8AC99A8AC99A8AC99A8AC99A8AC99
              A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF00FFFF0000FF00FF
              FF00FF0000FF0000FF800000FFFF00FFFF00FFFF00FFFF00FFFF008000000000
              FF0000FFFF00FFFF00FF99A8ACFF00FFFF00FF99A8AC99A8AC99A8AC99A8AC99
              A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF00FFFF00FFFF00FF800000
              FF0000FF00000000FF8000008000008000008000008000008000008000000000
              FFFF00FFFF00FFFF00FFFF00FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
              A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF00FFFF00FFFF00FFFF00FF800000
              FF0000FF0000FF0000800000FF00FF0000FF0000FFFF00FFFF00FF800000FF00
              FFFF00FFFF00FFFF00FFFF00FF99A8AC99A8AC99A8AC99A8AC99A8ACFF00FF99
              A8AC99A8ACFF00FFFF00FF99A8ACFF00FFFF00FFFF00FFFF00FFFF00FF800000
              FF0000FF0000FF0000800000C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF800000
              FFFF00FFFF00FF0000FF0000FF00000000FF0000FFFF00FF800000FF00008000
              00800000FF00FFFF00FFFF00FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
              A8AC99A8ACFF00FF99A8AC99A8AC99A8AC99A8ACFF00FFFF00FFFF00FFFF00FF
              FF0000FFFF00FFFF00FFFF00FF0000800000800000FF0000800000FF0000FF00
              00FF0000800000FF00FFFF00FFFF00FF99A8AC99A8AC99A8AC99A8AC99A8AC99
              A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF00FFFF00FFFF00FF
              FF00FF800000800000800000FFFF00FFFF00FFFF00FFFF00FF0000FFFF00FFFF
              00FFFF00800000FF00FFFF00FFFF00FFFF00FF99A8AC99A8AC99A8AC99A8AC99
              A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF00FFFF00FFFF00FF
              FF00FF0000FF0000FF808080FF0000800000800000FF0000FFFF00FFFF00FF00
              00FF0000FF00FFFF00FFFF00FFFF00FFFF00FF99A8AC99A8AC99A8AC99A8AC99
              A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF00FFFF00FFFF00FFFF00FF
              0000FF0000FFFF00FFFF00FFFF00FF0000FF0000FF808080800000FF0000FF00
              000000FFFF00FFFF00FFFF00FFFF00FF99A8AC99A8ACFF00FFFF00FFFF00FF99
              A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACFF00FFFF00FFFF00FF0000FF
              0000FFFF00FFFF00FFFF00FFFF00FF0000FF0000FFFF00FFFF00FFFF00FFFF00
              FF0000FF0000FFFF00FFFF00FF99A8AC99A8ACFF00FFFF00FFFF00FFFF00FF99
              A8AC99A8ACFF00FFFF00FFFF00FFFF00FF99A8AC99A8ACFF00FFFF00FF0000FF
              FF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FFFF00FFFF00FFFF00FFFF00
              FFFF00FF0000FFFF00FFFF00FF99A8ACFF00FFFF00FFFF00FFFF00FFFF00FF99
              A8AC99A8ACFF00FFFF00FFFF00FFFF00FFFF00FF99A8ACFF00FF}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bNewPollClick
          end
          object bTracePoll: TSpeedButton
            Left = 100
            Top = 3
            Width = 25
            Height = 26
            Hint = 'Poll Info'
            Enabled = False
            Flat = True
            Glyph.Data = {
              6E020000424D6E0200000000000076000000280000002A000000150000000100
              040000000000F801000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888888888888880000008888888888888888888888888888
              8888888888888800000088888888888888888888888888888888888888888800
              0000888888887444788888888888888888FFF888888888000000888888874444
              478888888888888888777F888888880000008888888444784488888888888888
              878877F888888800000088888884447887888888888888888788F77F88888800
              000088888887444888888888888888888788F888888888000000888888887447
              888888888888888888787F888888880000008888888874447888888888888888
              88787F888888880000008888888887447888888888888888888787F888888800
              000088888888884447888888888888888F88787F888888000000888888878874
              448888888888888887F8787F8888880000008888888448744488888888888888
              877F787F88888800000088888887444447888888888888888877777F88888800
              00008888888874447888888888888888888777F8888888000000888888888888
              8888888888888888888FF8888888880000008888888887447888888888888888
              88877F888888880000008888888884444888888888888888887887F888888800
              00008888888884444888888888888888887887F8888888000000888888888744
              788888888888888888877F88888888000000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bTracePollClick
          end
          object bPause: TSpeedButton
            Left = 161
            Top = 3
            Width = 25
            Height = 26
            Hint = 'Pause Poll'
            Enabled = False
            Flat = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333330000333333444444333333333333FFFFFF333333
              00003333444444444433333333FF777777FF3333000033344444444444433333
              3F7733333377F333000033444444444444443333F733333333333F7300003344
              4444444444443333F733333333333F730000344444EE44EE4444433F7333FF33
              FF3333F70000344444EE44EE4444433F7333FF73FF7333F70000344444EE44EE
              4444433F7333FF73FF7333F70000344444EE44EE4444433F7333FF73FF7333F7
              0000344444EE44EE4444433F7333FF73FF7333F70000344444EE44EE4444433F
              7333FF73FF7333F7000033444444444444443333F333777377733F7300003344
              4444444444443333F333333333333F730000333444444444444333333F333333
              3333F73300003333444444444433333333F3333333FF73330000333333444444
              33333333333FFFFFFF7733330000333333333333333333333333777777333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = mpPauseClick
          end
          object lInfo1: TLabel
            Left = 428
            Top = 0
            Width = 177
            Height = 13
            Alignment = taRightJustify
            Anchors = [akRight, akBottom]
            Caption = 'Last in: -:---/---@-------- --/--/-- 00:00:00'
            Layout = tlCenter
          end
        end
        object MailerBtnPanel: TTransPan
          Left = 0
          Top = 0
          Width = 605
          Height = 33
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          Visible = False
          object bAbort: TSpeedButton
            Left = 7
            Top = 3
            Width = 26
            Height = 26
            Hint = 'Abort & Reset'
            Flat = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333111111
              33333333333F7777773F33330000391331999999113333377F3733333377F333
              000039911999999999133337F7733FFFFF337F3300003999999FFFFF99913337
              F333F77777F337F30000399999F33333F9991337F33F7333337F337F00003999
              993333333F991337F33733333337F37F00003999999333333F991337FFFF7F33
              3337777300003FFFFFFF33333333333777777733333333330000333333333333
              333333333333333333FFFFFF000033333333333311111133FFFF333333777777
              00003F991333333F99999137777F333337F3333700003F9913333333F9999137
              F37F333333733337000033F991333331199991337337FFFFF7733337000033F9
              99111119999991337F3377777333FF370000333F9999999999FF913337FF3333
              33FF77F700003333FF999999FF33F3333377FFFFFF7733730000333333FFFFFF
              3333333333337777773333330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bAbortClick
          end
          object bRefuse: TSpeedButton
            Left = 69
            Top = 3
            Width = 26
            Height = 26
            Hint = 'Reject file (delete on remote)'
            Enabled = False
            Flat = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00311116333331
              11133333FFFF333333FFFF330000339991333333291333337733F33333773F33
              0000333291633333291333333373F33333373F33000033329213333696633333
              33733F333373F33300003333991633629133333333373F333733F33300003333
              6991162916333333333733FF733F333300003333329922916333333333337333
              33F333330000333333699922613333333333373333F7FF330000331111669913
              6913333337FFF7733F373F3300003369921692136913333337733F733F373F33
              000033336921991129133333333733F33FF73F33000033333392992991333333
              333373333333F33300003333333229991333333333333733333F333300003333
              33332291333333333333337333F3333300003333333119133333333333333337
              3F333333000033333336921333333333333333733F3333330000333333369913
              33333333333333733F3333330000333333336663333333333333333777333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bRefuseClick
          end
          object bSkip: TSpeedButton
            Left = 38
            Top = 3
            Width = 26
            Height = 26
            Hint = 'Skip file (receive later)'
            Enabled = False
            Flat = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000010000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
              44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
              00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
              33833F333383F33300003333AA463362A433333333383F333833F33300003333
              6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
              33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
              6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
              000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
              333383333333F3330000333333322AAA4333333333333833333F333300003333
              333322A4333333333333338333F333330000333333344A433333333333333338
              3F333333000033333336A24333333333333333833F333333000033333336AA43
              33333333333333833F3333330000333333336663333333333333333888333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bSkipClick
          end
          object bAnswer: TSpeedButton
            Left = 100
            Top = 3
            Width = 26
            Height = 26
            Hint = 'Answer call'
            Enabled = False
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
              333333333337FF3333333333330003333333333333777F333333333333080333
              3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
              33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
              B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
              BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
              B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
              3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
              333333333337F33333333333333B333333333333333733333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bAnswerClick
          end
          object bChat: TSpeedButton
            Left = 131
            Top = 3
            Width = 26
            Height = 26
            Hint = 'Open Chat'
            Enabled = False
            Flat = True
            Glyph.Data = {
              CE070000424DCE07000000000000360000002800000024000000120000000100
              1800000000009807000000000000000000000000000000000000FFEFE1FFEFE1
              FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1DFE1
              E5FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FF
              EFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1
              FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1BDB1A78179
              7261879928D2FA2FE7FF28EDFF1FECFF33DCFDA8DDF0FFEFE1FFEFE1FFEFE1FF
              EFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1
              FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEF
              E1FFEFE18FC98700B01A05AE6306E4FF1EF5FF66F8FF50F7FF3AF6FF2FF5FF20
              E8FFA8DCF0FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1A3B1B4A3B1B4
              A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4FFEFE1FFEFE1FFEFE1FFEFE1FFEF
              E1FFEFE1FFEFE1CDC0B4827A73857D7540A74C00D32D01D3EC15F4FF7BCBFF5F
              ABFF57BBFF489BFF3FD7FF38F6FF33DAFEFFEFE1FFEFE1FFEFE1FFEFE1FFEFE1
              FFEFE1A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1
              B4FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1A8D5A20AAC3406B834449A4D309A3F00
              D6351CEAFFADFBFF8DBDFFA6FBFF94FAFF74F9FF3AB9FF3BF6FF23ECFFFFEFE1
              FFEFE1FFEFE1A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1
              B4A3B1B4A3B1B4A3B1B4A3B1B4FFEFE1FFEFE1FFEFE1FFEFE1FFEFE113B94400
              E45600E25000C93B1A912900D23800E9FFC9FCFFD8FDFFC1FCFFAFFBFF8CFAFF
              62F8FF4EF7FF21ECFFFFEFE1FFEFE1FFEFE1A3B1B4A3B1B4A3B1B4A3B1B4A3B1
              B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4FFEFE1FFEFE1FF
              EFE1FFEFE1FFEFE113BB4800E85E00E55700E25000BB3300B53434E9FFD2FDFF
              F6FFFF000000C4FCFF00000073F8FF45F6FF00E7FFFFEFE1FFEFE1FFEFE1A3B1
              B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3
              B1B4A3B1B4FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1A8D6A521B14800D85200E558
              00D05A009C9A0FD1F950F7FFFAFFFFF2FEFFD1FDFFADFBFF8AF9FF4FF7FF24CC
              F6FFEFE1FFEFE1FFEFE1A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3
              B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1
              C1CBB1368A4513A03700B135009C8A00EBEA00F5FF28E0FF51F7FFB3FBFFAFFB
              FF5EF7FF4EF7FF14E6FE87AAB7FFEFE1FFEFE1FFEFE1A3B1B4A3B1B4A3B1B4A3
              B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4FFEFE1
              FFEFE1FFEFE1FFEFE1C3DFBA07BE4E00F17300EE6D00EB66009F9800FFFF00FF
              FF00F5FF20D5FB75EBFE94F6FF57EFFF2ED6EC4BB193FFEFE1FFEFE1FFEFE1A3
              B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4
              A3B1B4A3B1B4FFEFE1FFEFE1FFEFE1FFEFE1FFEFE18FD09800EE7900F47B00F1
              7400E66600A57C00C7C700FFFF00FFFF00A6A500A632089820349D42528150CD
              C0B4FFEFE1FFEFE1FFEFE1A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4
              A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4FFEFE1FFEFE1FFEFE1FFEFE1FFEF
              E1FFEFE13BC26A2FD27300AF3D00BF4900E76800A37E00A5A200A19C00C37100
              E14D00D7430BA529699865857D75DCCFC2FFEFE1FFEFE1FFEFE1A3B1B4A3B1B4
              A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1
              B4FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE135B95F00EE7B00F57D00EA6F00
              9C2900EC6900C14300C03E00E45500E14F00DE4806B62F7A9872BDB1A7FFEFE1
              FFEFE1FFEFE1FFEFE1A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1
              B4A3B1B4A3B1B4A3B1B4A3B1B4FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE100
              D86D00FA8A00EF7C20A3480AC85600EF7000ED6912912A00D04B00E45600E14F
              00DF4947874BEEDED1FFEFE1FFEFE1FFEFE1FFEFE1A3B1B4A3B1B4FFEFE1A3B1
              B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4FFEFE1FFEFE1FFEFE1FFEFE1FF
              EFE1FFEFE1FFEFE1FFEFE145C3712FD67C4FC171FFEFE100D25E00F27700F071
              3BAB5C49A35B0AC04500DC5114A936E0E6CAFFEFE1FFEFE1FFEFE1FFEFE1FFEF
              E1FFEFE1FFEFE1FFEFE1A3B1B4A3B1B4A3B1B4A3B1B4A3B1B4FFEFE1A3B1B4FF
              EFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1
              FFEFE100D56400F57E00F3782EA053BDB1A7E0E7CB8FCC90FFEFE1FFEFE1FFEF
              E1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1A3B1B4A3B1B4A3B1B4A3
              B1B4FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1
              FFEFE1FFEFE1FFEFE1FFEFE1FFEFE145C26E00CC5C00C24F8FCF95FFEFE1FFEF
              E1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FF
              EFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1
              FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEF
              E1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FF
              EFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1
              FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1FFEFE1}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bChatClick
          end
          object LampsPanelCarrier: TTransPan
            Left = 471
            Top = 0
            Width = 134
            Height = 33
            Align = alRight
            BevelOuter = bvNone
            BorderWidth = 3
            ParentBackground = False
            TabOrder = 0
            object LampsPanel: TTransPan
              Left = 3
              Top = 3
              Width = 128
              Height = 27
              Align = alClient
              BevelOuter = bvLowered
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Small Fonts'
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
              Visible = False
              object mlRXD: TModemLamp
                Left = 108
                Top = 4
                Kind = mlkBlue
              end
              object lRXD: TLabel
                Left = 103
                Top = 13
                Width = 20
                Height = 11
                Caption = 'RXD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Small Fonts'
                Font.Style = []
                ParentFont = False
              end
              object mlTXD: TModemLamp
                Left = 84
                Top = 4
                Kind = mlkBlue
              end
              object lTXD: TLabel
                Left = 79
                Top = 13
                Width = 19
                Height = 11
                Caption = 'TXD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Small Fonts'
                Font.Style = []
                ParentFont = False
              end
              object mlCTS: TModemLamp
                Left = 60
                Top = 4
              end
              object lCTS: TLabel
                Left = 56
                Top = 13
                Width = 19
                Height = 11
                Caption = 'CTS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Small Fonts'
                Font.Style = []
                ParentFont = False
              end
              object lDSR: TLabel
                Left = 32
                Top = 13
                Width = 20
                Height = 11
                Caption = 'DSR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Small Fonts'
                Font.Style = []
                ParentFont = False
              end
              object mlDSR: TModemLamp
                Left = 36
                Top = 4
              end
              object mlDCD: TModemLamp
                Left = 12
                Top = 4
                Kind = mlkRed
              end
              object lDCD: TLabel
                Left = 7
                Top = 13
                Width = 21
                Height = 11
                Caption = 'DCD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Small Fonts'
                Font.Style = []
                ParentFont = False
              end
            end
          end
        end
        object InfoBtnPanel: TTransPan
          Left = 0
          Top = 0
          Width = 605
          Height = 33
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 4
          Visible = False
          object bKillBWZ: TSpeedButton
            Left = 7
            Top = 3
            Width = 26
            Height = 26
            Hint = 'Delete BWZ line'
            Enabled = False
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333FF8F33333333333003033333333FFFF7787333333300000FF
              0333333FF77777FF733333000FFF444033333F77788877778F33730FFFF4FFFF
              03337F7F888788FF78F3130FFF4FF444F0337F78F87FF77787331180F4714FFF
              033377F787777888733371780717FFF03333777F777788F78F338117011FF44F
              033337777778877878F3871111FF4FFFF033377777F878888733871110F4FFFF
              0333377777F788FF73337111170FF44033337777777FF777FF33117311704FF0
              0333777377777F8778F3333331170FFFF033333337777FFFF733333333117000
              0333333333777777733333333333333333333333333333333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = bbDeleteClick
          end
        end
      end
      object OutMgrPanel: TTransPan
        Left = 0
        Top = 0
        Width = 561
        Height = 25
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 2
        Visible = False
        object OutMgrBevel: TBevel
          Left = 0
          Top = 23
          Width = 561
          Height = 2
          Align = alBottom
          Shape = bsBottomLine
        end
        object OutMgrOutline: TxOutlin
          Left = 0
          Top = 17
          Width = 561
          Height = 6
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'MS Sans Serif'
          FixedFont.Style = []
          OutlineStyle = osText
          Options = []
          Style = otOwnerDraw
          ItemHeight = 13
          OnDrawItem = OutMgrOutlineDrawItem
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          TabOrder = 1
          OnMouseDown = OutMgrOutlineMouseDown
          OnDblClick = OutMgrOutlineDblClick
          OnKeyDown = OutMgrOutlineKeyDown
          BorderStyle = bsNone
          ItemSeparator = '\'
          ParentFont = False
          PopupMenu = OutMgrPopup
          EraseBackGround = True
          OnApiDropFiles = OutMgrOutlineApiDropFiles
          Data = {1F}
        end
        object OutMgrHeader: THeaderControl
          Left = 0
          Top = 0
          Width = 561
          Height = 17
          HotTrack = True
          Sections = <
            item
              ImageIndex = -1
              Text = 'Outbound'
              Width = 180
            end
            item
              ImageIndex = -1
              Text = 'Sysop Name'
              Width = 200
            end
            item
              Alignment = taRightJustify
              ImageIndex = -1
              Text = 'Size'
              Width = 100
            end
            item
              ImageIndex = -1
              Text = 'Type'
              Width = 60
            end
            item
              ImageIndex = -1
              Text = 'On sent'
              Width = 60
            end
            item
              ImageIndex = -1
              Text = 'Age'
              Width = 80
            end>
          OnSectionClick = OutMgrHeaderSectionClick
          OnSectionResize = OutMgrHeaderSectionResize
        end
      end
      object InfoPanel: TTransPan
        Left = 0
        Top = 0
        Width = 625
        Height = 257
        BevelOuter = bvNone
        TabOrder = 5
        object TransPan3: TTransPan
          Left = 0
          Top = 189
          Width = 625
          Height = 68
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 10
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 10
            Top = 10
            Width = 605
            Height = 48
            Align = alClient
            Caption = 'Opened Lines'
            TabOrder = 0
            object stPanel: TTransPan
              Left = 2
              Top = 15
              Width = 601
              Height = 31
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 3
              TabOrder = 0
              object stListView: TListView
                Left = 3
                Top = 3
                Width = 595
                Height = 25
                Align = alClient
                BevelOuter = bvSpace
                Columns = <
                  item
                    Caption = 'Line'
                    Width = 250
                  end
                  item
                    AutoSize = True
                    Caption = 'State'
                  end
                  item
                    Alignment = taCenter
                    Caption = 'Timer'
                    Width = 100
                  end>
                ColumnClick = False
                GridLines = True
                ReadOnly = True
                RowSelect = True
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                ViewStyle = vsReport
                OnDblClick = stListViewDblClick
              end
            end
          end
        end
        object TransPan1: TTransPan
          Left = 0
          Top = 0
          Width = 625
          Height = 189
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 10
          FullRepaint = False
          ParentBackground = False
          TabOrder = 1
          object GroupBox2: TGroupBox
            Left = 10
            Top = 10
            Width = 605
            Height = 169
            Align = alClient
            Caption = ' badwazoo.lst '
            ParentBackground = False
            TabOrder = 0
            object Panel11: TTransPan
              Left = 2
              Top = 15
              Width = 601
              Height = 152
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 4
              FullRepaint = False
              ParentBackground = False
              TabOrder = 0
              object bwListView: TListView
                Left = 4
                Top = 4
                Width = 593
                Height = 144
                Align = alClient
                BevelOuter = bvNone
                Columns = <
                  item
                    AutoSize = True
                    Caption = 'Filename'
                    MinWidth = 70
                  end
                  item
                    Caption = 'Temp Size'
                    MinWidth = 50
                    Width = 86
                  end
                  item
                    Caption = 'Full Size'
                    MinWidth = 50
                    Width = 86
                  end
                  item
                    Caption = 'From Node'
                    MinWidth = 50
                    Width = 86
                  end
                  item
                    Caption = 'FileTime'
                    MinWidth = 50
                    Width = 120
                  end>
                ColumnClick = False
                GridLines = True
                ReadOnly = True
                RowSelect = True
                PopupMenu = pBWZ
                TabOrder = 0
                ViewStyle = vsReport
                OnClick = bwListBoxClick
              end
            end
          end
        end
      end
    end
  end
  object MainMenu: TMainMenu
    Images = ilMainMenu
    Left = 458
    Top = 290
    object mSystem: TMenuItem
      Caption = '&System'
      HelpContext = 1560
      object mwCreateMirror: TMenuItem
        Caption = '&Mirror '
        ImageIndex = 0
        ShortCut = 115
        OnClick = mwCreateMirrorClick
      end
      object mwRemoteMirror: TMenuItem
        Caption = 'Mirror (remote)'
        Enabled = False
        Visible = False
        OnClick = mwRemoteMirrorClick
      end
      object mwClose: TMenuItem
        Caption = '&Close Window'
        ImageIndex = 1
        ShortCut = 32883
        OnClick = mwCloseClick
      end
      object N26: TMenuItem
        Caption = '-'
      end
      object mfRestart: TMenuItem
        Caption = '&Restart'
        ImageIndex = 2
        ShortCut = 32850
        OnClick = mfRestartClick
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object mfExit: TMenuItem
        Caption = 'E&xit'
        ImageIndex = 3
        ShortCut = 32856
        OnClick = mfExitClick
      end
    end
    object mLine: TMenuItem
      Caption = '&Line'
      HelpContext = 1540
      object msOpenDialup: TMenuItem
        Caption = '&Dial-up Line'
      end
      object mfRunIPDaemon: TMenuItem
        Caption = '&TCP/IP Daemon'
        Enabled = False
        ShortCut = 32816
        OnClick = mfRunIPDaemonClick
      end
      object mlChat: TMenuItem
        Caption = '&Chat'
        Enabled = False
        ImageIndex = 11
        ShortCut = 49219
        OnClick = bChatClick
      end
      object mnuTerminal: TMenuItem
        Caption = 'Terminal'
        Enabled = False
        OnClick = mnuTerminalClick
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object mlAbortOperation: TMenuItem
        Caption = '&Reset'
        Enabled = False
        ImageIndex = 4
        ShortCut = 27
        OnClick = bAbortClick
      end
      object mlAnswer: TMenuItem
        Caption = '&Answer Call'
        Enabled = False
        ImageIndex = 5
        ShortCut = 16449
        OnClick = bAnswerClick
      end
      object mlSendMdmCmds: TMenuItem
        Caption = 'Send &Modem Commands'
        Enabled = False
        ImageIndex = 6
        ShortCut = 120
        OnClick = mlSendMdmCmdsClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mlResetTimeOut: TMenuItem
        Caption = 'Flush Timeout'
        Enabled = False
        ImageIndex = 7
        ShortCut = 16418
        OnClick = bStartClick
      end
      object mlIncTimeout: TMenuItem
        Caption = 'Add to Timeout'
        Enabled = False
        ImageIndex = 8
        ShortCut = 16417
        OnClick = bAddClick
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object mlSkip: TMenuItem
        Caption = 'Skip File (receive &later)'
        Enabled = False
        ImageIndex = 9
        ShortCut = 16460
        OnClick = bSkipClick
      end
      object mlRefuse: TMenuItem
        Caption = 'Reject File'
        Enabled = False
        ImageIndex = 10
        ShortCut = 16466
        OnClick = bRefuseClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mlClose: TMenuItem
        Caption = 'Clo&se'
        Enabled = False
        ImageIndex = 12
        ShortCut = 16498
        OnClick = mlCloseClick
      end
    end
    object mPoll: TMenuItem
      Caption = '&Poll'
      HelpContext = 1550
      object mpCreate: TMenuItem
        Caption = '&Create'
        ImageIndex = 13
        ShortCut = 116
        OnClick = bNewPollClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object mpPause: TMenuItem
        Caption = '&Pause'
        Enabled = False
        ImageIndex = 15
        ShortCut = 190
        OnClick = mpPauseClick
      end
      object mnuNow2: TMenuItem
        Caption = 'Call Now'
        Visible = False
      end
      object mpTrace: TMenuItem
        Caption = '&Info'
        Enabled = False
        ImageIndex = 16
        ShortCut = 8308
        OnClick = bTracePollClick
      end
      object mpReset: TMenuItem
        Caption = '&Reset'
        Enabled = False
        ImageIndex = 17
        ShortCut = 32884
        OnClick = bResetPollClick
      end
      object mpDelete: TMenuItem
        Caption = '&Delete'
        Enabled = False
        ImageIndex = 18
        ShortCut = 16500
        OnClick = bDeletePollClick
      end
      object mpDeleteAll: TMenuItem
        Caption = 'Delete &All'
        Enabled = False
        ImageIndex = 19
        ShortCut = 24692
        OnClick = bDeleteAllPollsClick
      end
    end
    object mConfig: TMenuItem
      Caption = '&Config'
      HelpContext = 1520
      object mcMasterPassword: TMenuItem
        Caption = '&Master Password'
        ImageIndex = 20
        object mcMasterPwdCreate: TMenuItem
          Caption = 'Set Up...'
          Enabled = False
          ImageIndex = 21
          OnClick = mcMasterPwdCreateClick
        end
        object mcMasterPwdChange: TMenuItem
          Caption = 'Change...'
          Enabled = False
          ImageIndex = 22
          OnClick = mcMasterPwdChangeClick
        end
        object mcMasterPwdRemove: TMenuItem
          Caption = 'Remove...'
          Enabled = False
          ImageIndex = 23
          OnClick = mcMasterPwdRemoveClick
        end
      end
      object mcStartup: TMenuItem
        Caption = '&Start-up'
        HelpContext = 1040
        ImageIndex = 24
        ShortCut = 16467
        OnClick = mcStartupClick
      end
      object mcPathnames: TMenuItem
        Caption = 'Paths'
        ImageIndex = 25
        ShortCut = 16451
        OnClick = mcPathnamesClick
      end
      object mcNodelist: TMenuItem
        Caption = '&Nodelist'
        ImageIndex = 26
        ShortCut = 16462
        OnClick = mcNodelistClick
      end
      object mcPasswords: TMenuItem
        Caption = 'Passwords'
        ImageIndex = 27
        ShortCut = 16455
        OnClick = NodesPasswords1Click
      end
      object mnuPrefEx: TMenuItem
        Caption = '&Preferences...'
        ImageIndex = 28
        ShortCut = 16464
        OnClick = mnuPrefExClick
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object mcDialup: TMenuItem
        Caption = '&Dial-up'
        ImageIndex = 29
        ShortCut = 16452
        OnClick = mcDialupClick
      end
      object mcDaemon: TMenuItem
        Caption = '&TCP/IP Daemon'
        ImageIndex = 30
        ShortCut = 16468
        OnClick = mcDaemonClick
      end
      object mcWebserver: TMenuItem
        Caption = '&Web server'
        ShortCut = 16471
        OnClick = mcWebserverClick
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object mcFileBoxes: TMenuItem
        Caption = 'File-&boxes'
        ImageIndex = 31
        ShortCut = 16450
        OnClick = mcFileBoxesClick
      end
      object mcPolls: TMenuItem
        Caption = 'P&olls'
        ImageIndex = 32
        ShortCut = 16463
        OnClick = mcPollsClick
      end
      object maFileRequests: TMenuItem
        Caption = '&File Requests'
        ImageIndex = 33
        ShortCut = 16454
        OnClick = maFileRequestsClick
      end
      object maExternals: TMenuItem
        Caption = 'E&xternals'
        ImageIndex = 34
        ShortCut = 16472
        OnClick = mcExternalsClick
      end
      object maEvents: TMenuItem
        Caption = 'E&vents'
        ImageIndex = 35
        ShortCut = 16470
        OnClick = maEventsClick
      end
      object maEncryptedLinks: TMenuItem
        Caption = '&Encrypted Links'
        ImageIndex = 36
        ShortCut = 16453
        OnClick = maEncryptedLinksClick
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object maNodes: TMenuItem
        Caption = 'Node &Inspector'
        ImageIndex = 37
        ShortCut = 16457
        OnClick = maNodesClick
      end
    end
    object mTool: TMenuItem
      Caption = '&Tool'
      HelpContext = 1570
      object mtCompileNodelist: TMenuItem
        Caption = '&Compile Nodelist'
        ImageIndex = 48
        ShortCut = 8309
        OnClick = mtCompileNodelistClick
      end
      object mtCompileNodelistInv: TMenuItem
        Caption = '&Compile Nodelist'
        ShortCut = 32885
        Visible = False
      end
      object mtBrowseNodelist: TMenuItem
        Caption = '&Browse Nodelist'
        ImageIndex = 38
        ShortCut = 117
        OnClick = mtBrowseNodelistClick
      end
      object mtBrowseNodelistAt: TMenuItem
        Caption = 'Browse Nodelist at...'
        ImageIndex = 39
        ShortCut = 16501
        OnClick = mtBrowseNodelistAtClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object tExternal: TMenuItem
        Caption = 'External Tools'
        ImageIndex = 40
        object eaNone: TMenuItem
          Caption = '-none-'
          Enabled = False
        end
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object mtEditFileRequest: TMenuItem
        Caption = 'Edit File &Request...'
        ImageIndex = 41
        ShortCut = 118
        OnClick = mtEditFileRequestClick
      end
      object mtAttachFiles: TMenuItem
        Caption = 'Attach Files...'
        ImageIndex = 42
        ShortCut = 119
        OnClick = mtAttachFilesClick
      end
      object mtCreateFlag: TMenuItem
        Caption = 'Create a Flag...'
        ImageIndex = 43
        ShortCut = 16503
        OnClick = mtCreateFlagClick
      end
      object mtOutSmartMenu: TMenuItem
        Caption = 'Outbound SmartMenu'
        Enabled = False
        ShortCut = 16416
        OnClick = mtOutSmartMenuClick
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object mtViewLogs: TMenuItem
        Caption = 'View Logs'
        object LName: TMenuItem
          AutoHotkeys = maManual
          Caption = 'Access.log'
          OnClick = LNameClick
        end
      end
    end
    object mHelp: TMenuItem
      Caption = '&Help'
      HelpContext = 1530
      object mhContents: TMenuItem
        Caption = 'Help &Topics'
        ImageIndex = 44
        OnClick = mhContentsClick
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object mnuWebSites: TMenuItem
        Caption = 'Web Sites'
        ImageIndex = 45
        object mnuRadiusOnWeb: TMenuItem
          Caption = 'Radius Web Site'
          OnClick = mnuRadiusOnWebClick
        end
        object mhWebSite: TMenuItem
          Caption = 'Argus &Web Site'
          OnClick = mhWebSiteClick
        end
        object mnuTaurusOnWeb: TMenuItem
          Caption = 'Taurus Web Site'
          OnClick = mnuTaurusOnWebClick
        end
        object mnuArgusClone: TMenuItem
          Caption = 'All Argus clones'
          OnClick = mnuArgusCloneClick
        end
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object mhAbout: TMenuItem
        Caption = '&About'
        ImageIndex = 46
        ShortCut = 32880
        OnClick = mhAboutClick
      end
    end
  end
  object PollPopupMenu: TPopupMenu
    Images = ilMainMenu
    OnPopup = PollPopupMenuPopup
    Left = 514
    Top = 290
    object ppCreatePoll: TMenuItem
      Caption = '&Create'
      ImageIndex = 13
      ShortCut = 116
      OnClick = bNewPollClick
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object ppPause: TMenuItem
      Caption = '&Pause'
      Enabled = False
      ImageIndex = 15
      ShortCut = 190
      OnClick = mpPauseClick
    end
    object mnuNow: TMenuItem
      Caption = 'Call now'
      Enabled = False
      Visible = False
    end
    object ppTracePoll: TMenuItem
      Caption = '&Info'
      Enabled = False
      ImageIndex = 16
      ShortCut = 16500
      OnClick = bTracePollClick
    end
    object ppResetPoll: TMenuItem
      Caption = '&Reset'
      Enabled = False
      ImageIndex = 17
      ShortCut = 8308
      OnClick = bResetPollClick
    end
    object ppDeletePoll: TMenuItem
      Caption = '&Delete'
      Enabled = False
      ImageIndex = 18
      ShortCut = 32884
      OnClick = bDeletePollClick
    end
    object ppDeleteAllPolls: TMenuItem
      Caption = 'Delete &All'
      Enabled = False
      ImageIndex = 19
      ShortCut = 24692
      OnClick = bDeleteAllPollsClick
    end
  end
  object OutMgrPopup: TPopupMenu
    HelpContext = 2070
    Images = ilMainMenu
    OnPopup = OutMgrPopupPopup
    Left = 342
    Top = 290
    object ompHelp: TMenuItem
      Caption = 'Help on SmartMenu'
      OnClick = ompHelpClick
    end
    object N25: TMenuItem
      Caption = '-'
    end
    object ompRescan: TMenuItem
      Caption = 'Rescan Outbound'
      ImageIndex = 17
      OnClick = bRereadClick
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object ompPoll: TMenuItem
      Caption = 'Poll 2:469/38'
      ImageIndex = 14
      OnClick = ompPollClick
    end
    object ompAttach: TMenuItem
      Caption = 'Attach to 2:469/38'
      ImageIndex = 42
      OnClick = ompAttachClick
    end
    object ompEditFreq: TMenuItem
      Caption = 'Edit file request for 2:469/38'
      ImageIndex = 41
      OnClick = ompEditFreqClick
    end
    object ompBrowseNL: TMenuItem
      Caption = 'Browse nodelist at 2:469/38'
      ImageIndex = 38
      OnClick = ompBrowseNLClick
    end
    object ompCreateFlag: TMenuItem
      Caption = 'Create Flag for 2:469/38'
      ImageIndex = 43
      object ompCfImmed: TMenuItem
        Caption = 'Immediate'
        OnClick = ompCfImmedClick
      end
      object ompCfCrash: TMenuItem
        Caption = 'Crash'
        OnClick = ompCfCrashClick
      end
      object ompCfDirect: TMenuItem
        Caption = 'Direct'
        OnClick = ompCfDirectClick
      end
      object ompCfNormal: TMenuItem
        Caption = 'Normal'
        OnClick = ompCfNormalClick
      end
      object ompCfHold: TMenuItem
        Caption = 'Hold'
        OnClick = ompCfHoldClick
      end
      object ompCfPause: TMenuItem
        Caption = 'Pause'
        OnClick = ompCfPauseClick
      end
    end
    object N22: TMenuItem
      Caption = '-'
    end
    object ompOpen: TMenuItem
      Caption = 'Open Current File'
      OnClick = ompOpenClick
    end
    object ompCur: TMenuItem
      Tag = 1
      Caption = '000032e3.su2'
      object opmReaddress: TMenuItem
        Caption = 'Readdress'
        OnClick = opmReaddressClick
      end
      object opmFinalize: TMenuItem
        Caption = 'Finalise'
        OnClick = opmFinalizeClick
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object opmImmed: TMenuItem
        Caption = 'Change to Immediate'
        OnClick = opmImmedClick
      end
      object opmCrash: TMenuItem
        Caption = 'Change to Crash'
        OnClick = opmCrashClick
      end
      object opmDirect: TMenuItem
        Caption = 'Change to Direct'
        OnClick = opmDirectClick
      end
      object opmNormal: TMenuItem
        Caption = 'Change to Normal'
        OnClick = opmNormalClick
      end
      object opmHold: TMenuItem
        Caption = 'Change to Hold'
        OnClick = opmHoldClick
      end
      object N19: TMenuItem
        Caption = '-'
      end
      object opmUnlink: TMenuItem
        Caption = 'Unlink'
        OnClick = opmUnlinkClick
      end
      object opmPurge: TMenuItem
        Caption = 'Remove Broken Links'
        OnClick = opmPurgeClick
      end
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object ompName: TMenuItem
      Tag = 2
      Caption = '000032e3.* of 2:469/38'
    end
    object ompExt: TMenuItem
      Tag = 3
      Caption = '*.su?  of 2:469/38'
    end
    object ompStat: TMenuItem
      Tag = 4
      Caption = 'All Hold Files of 2:469/38'
      Enabled = False
    end
    object ompAll: TMenuItem
      Tag = 5
      Caption = 'All Entries of 2:469/38'
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object ompEntire: TMenuItem
      Tag = 6
      Caption = 'Entire Outbound'
    end
  end
  object TrayPopupMenu: TPopupMenu
    Images = ilMainMenu
    OnPopup = TrayPopupMenuPopup
    Left = 486
    Top = 290
    object tpRestore: TMenuItem
      Caption = '&Restore'
      OnClick = tpRestoreClick
    end
    object tpMinimize: TMenuItem
      Caption = '&Minimize'
      OnClick = TrayIconClick
    end
    object N27: TMenuItem
      Caption = '-'
    end
    object mnuLines: TMenuItem
      Caption = 'Lines'
    end
    object mnu_tray_TCP: TMenuItem
      Caption = 'TCP/IP Daemon'
      Enabled = False
      OnClick = mfRunIPDaemonClick
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object tpCreatePoll: TMenuItem
      Caption = 'Create Manual Poll'
      ImageIndex = 13
      OnClick = tpCreatePollClick
    end
    object N24: TMenuItem
      Caption = '-'
    end
    object tpEditFileRequest: TMenuItem
      Caption = 'Edit File Request'
      ImageIndex = 41
      OnClick = tpEditFileRequestClick
    end
    object tpBrowseNodelist: TMenuItem
      Caption = '&Browse Nodelist'
      ImageIndex = 38
      OnClick = tpBrowseNodelistClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object tpExit: TMenuItem
      Caption = 'E&xit'
      ImageIndex = 3
      OnClick = mfExitClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object tpCancel: TMenuItem
      Caption = 'Cancel'
    end
  end
  object pBWZ: TPopupMenu
    Images = ilMainMenu
    MenuAnimation = [maLeftToRight, maTopToBottom]
    OnPopup = pBWZPopup
    Left = 391
    Top = 290
    object mnuDelBWZ: TMenuItem
      Caption = 'Delete %s from BadWazoo'
      Enabled = False
      ImageIndex = 47
      ShortCut = 46
      OnClick = bbDeleteClick
    end
    object mnuTossBwz: TMenuItem
      Caption = 'Toss badwazoo'
      OnClick = mnuTossBwzClick
    end
  end
  object ilMainMenu: TImageList
    Left = 545
    Top = 290
    Bitmap = {
      494C010132003600040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000E000000001001000000000000070
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000029250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000032464A292921
      4A25324600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000032466B29091D0A210A1D
      E91C082131460000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000031466C2DAF316D294D252C25
      0B21E91C08213246000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031464A299552F1398F2D6E296D29
      2B210A1DE8182A25000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002925B54E9646D23590318F31D039
      4A29292509214A29000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7141016753EF339B131B035534A
      19635A6B1863524A000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E714311A19573442D235D1351242
      534A534A3246524A00000000630C630C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002925B54EB74676423442D239D135
      B0316D2D4B29734E000000008410841000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003146291DCF15B7461A5F143EB031
      6E2D2B25524A0000000000008410C61800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000001042291DB6527546F1352A25
      6B29534A00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031462925E71C09213146
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010421042104210421042
      1042104210421042104210421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001860
      00001042000000000000000000000000000000009452FE7FFE7FFE7FFE7FFE7F
      9073907390739073907390731042000000000000000000000000002180529073
      9073907390739071805000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010501860
      0000FF7F1863FF7F0000000000000000000000009452FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7F9073907390731042000000000000000000008052907390739073
      9073907390739071907180520000000000000000000000000000000000000000
      000000000000FF7FFF7F00000000000000000000000000000000105018501860
      00001042FF7F1863FF7F186300000000000000009452FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7F90739073104200000000000000008052E07F004290739073
      90739073907390730042E07F80520000000000000000000000000000FF7FFF7F
      FF7F100010001000000000000000000000000000000000001850185018501860
      18630000000010421863FF7F1863FF7F000000009452FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7F907310420000000000000021E07F0021000000428873
      887388738873887080500021E07F00210000104200000000FF7FFF7FFF7FFF7F
      1000FF7FFF7FFF7FFF7F00000000000000000000000010501860186018601863
      103010301030000000001042FF7F1042FF7F00009452FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7F9073104200000000000080520042000000000000E07F
      E07FE07FE07F887080500000004280520000004000000000FF7FFF7FFF7F1000
      FF7FFF7F100010001000FF7F0000000000000000104010501860186018631040
      10301030103088731030000000001042FF7F00009452FE7FFE7F1F001F001F00
      1F00FE7FFE7FFE7FFE7F90731042000000000000907300000000000000008052
      8052805280528870805000000000907300000040004018630000FF7F10001042
      00401000FF7FFF7FFF7F00000000000000000000105018501860186310401040
      10301030103010301030103010300000000000009452FE7F1F00FE7FFE7FFE7F
      FE7F1F00FE7FFE7FFE7F90731042000000000000907300000000000080208052
      0000000088708070807080500000907300001042004010421863000010420040
      1042FF7FFF7FFF7F000000000000000000000000185018501863104010401040
      103088731030103010301030103000000000000094521F00FE7FFE7F1F00FE7F
      1F00FE7FFE7FFE7FFE7F90731042000000000000907390739073907388738052
      0000000088708070807080509073907300001863004000401042000000400040
      FF7FFF7F10001000FF7F00000000000000000000186018631850105088731040
      103088731030103010301030000000000000000094521F00FE7F1F00FE7F1F00
      FE7F1F00FE7FFE7FFE7FFE7F1042000000000000907390739073907390739073
      805280528870807080708050907390730000186310420040004000400040FF7F
      FF7F1000FF7FFF7FFF7FFF7F0000000000000000186318601850105088731040
      104088731040104010400000000000000000000094521F00FE7F1F00FE7F1F00
      FE7FFE7F1F00FE7FFE7FFE7F1042000000000000805290739073907390730063
      000090718070807080708070805080520000186310420040004000400000FF7F
      1000FF7FFF7FFF7FFF7F00000000000000000000000000001850185018508873
      887310501040104000000000000000000000000094521F00FE7FFE7F1F001F00
      FE7FFE7F1F00FE7FFE7FFE7F1042000000000000002190739073907390730021
      0000907180708070807080708050002100001042004000400040004010420000
      FF7FFF7F10001000000000000000000000000000000000000000000018501850
      18501850105000000000000000000000000000009452FE7F1F00FE7FFE7FFE7F
      FE7F1F00FE7F1042104210421042000000000000000080529073907300630000
      0000907180708070807080708050000000000040004010420000004000401042
      00001000FF7FFF7F000000000000000000000000000000000000000000000000
      18601860000000000000000000000000000000009452FE7FFE7F1F001F001F00
      1F00FE7FFE7F9452186318630000000000000000000000008052907380520000
      0000907180708070807080708050000000000000000000000000000000400040
      10420000FF7FFF7FFF7FFF7F0000000000000000000000000000000000000000
      00000000000000000000000000000000000000009452FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7F945218630000000000000000000000000000000000218052E07F
      E07FE07F90718070807080500000000000000000000000000000000000000040
      0040104200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000945294529452945294529452
      9452945294529452000000000000000000000000000000000000000000000000
      0000000000009071907100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090319031903190319031
      9031903190310000000000000000000000000000000018639031903190319031
      9031903190319031903190319031000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FE7F1863FF7FFF7FFF7FFF7F
      FF7F18631863903100000000000000000000000000001863FE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7F9031000000000000000000000000000000000000
      0000000000000000000000000000000000000000786378637863786378637863
      7863786378637863786378637863786300000000FE7F18639031903190319031
      903118631863903190310000000000000000000000001863FE7F945294529452
      94529452945294529452FE7F9031000000000000000010421042903190310000
      0000000000000000000000000000000000000000786378637863786378637863
      7863786378637863786378637863786300000000FE7F18631863186318631863
      905380011863903190310000000000000000000000001863FE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7F9031000000000000000000001042903100000000
      0000000000000000000000000000000000000000786378637863786378637863
      78637863786378637863786378637863000000000000FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7F945290310000000000000000000000001863FE7F945294529452
      94529452945294529452FE7F9031000000000000000000001042903100000000
      0000000000000000000000000000000000000000786378637863786378637863
      786378637863786378637863786378630000000000000000FE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7F94520000000000000000000000001863FE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7F9031000000000000000000001042903100000000
      0000000000000000000000000000000000000000786378637863786378637863
      7863786378637863786378637863786300000000000000000000980088009000
      9000186318639031903190319031903190310000000018639031903194529452
      94529452945294529452FE7F9031000000000000000000001042903100000000
      0000000000000000000000000000000000000000786378637863786378637863
      786378637863786378637863786378630000000000000000000098211F009800
      18631863FE7FFE7FFE7FFE7FFE7FFE7F9031000000001F001F00FE7F9031FE7F
      FE7FFE7FFE7FFE7FFE7FFE7F9031000000000000000000009031806000000000
      0000000000008060007C007C0000000000000000786378637863786378637863
      7863786378637863786378637863786300000000000000000000183298211F00
      88001863FE7F9031903190319031FE7F903100001F001863FE7F1F0090319452
      94529452FE7FFE7FFE7FFE7F90310000000000000000000090318060007C007C
      007C007C8060007C007C007C0000000000000000786378637863786378637863
      7863786378637863786378637863786300000000000000000000183200001842
      1F001863FE7FFE7FFE7FFE7FFE7FFE7F903100001F001863FE7F1F009031FE7F
      FE7FFE7FFE7F94529452945294520000000000000000000090318060007C007C
      007C007C8060007C007C007C0000000000000000786378637863786378637863
      7863786378637863786378637863786300000000000000000000000000000000
      18329000FE7F9031903190319031FE7F903100001F009031FE7F1F0090319452
      94529452FE7F18631063106394520000000000000000000090318060007C007C
      007C007C8060007C007C007C0000000000000000786378637863786378637863
      7863786378637863786378637863786300000000000000000000000000000000
      00000000FE7FFE7FFE7FFE7FFE7FFE7F903100001F009031FE7F1F009031FE7F
      FE7FFE7FFE7F18631063945200000000000000000000000090318060007C007C
      007C007C8060007C007C007C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FE7F9031FE7F945294529452945200001F009031FE7F1F00FE7FFE7F
      FE7FFE7FFE7F18639452000000000000000000000000000090318060007C007C
      007C007C8060007C007C007C0000000000000000983298329832983298329832
      9832983298329832983298329832983200000000000000000000000000000000
      00000000FE7FFE7FFE7F186310631063945200001F0090311863186318631863
      18631863186318630000000000000000000000000000000090318060007C007C
      007C007C8060007C007C007C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FE7FFE7FFE7F186310639452000000001F009031903190311F000000
      000000000000000000000000000000000000000000000000806000008060007C
      007C007C80600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FE7FFE7FFE7F1863945200000000000000001F001F001F0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008001
      8001000000001031103100000000000000000000000000000000000000000000
      0000000000000000000000009452903194520000000000000000000000000000
      0000000000000000000000009031903100000000000090319031903190319031
      9031903190319031903190319031000000000000000000000000000000239053
      002380019861FE7F986110310000000000000000000000000000000000000000
      0000000000000000000094529031945218630000000000000000000000000000
      00000000000000000000903194529452903100001863FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7F9031000000000000000000000000000000239053
      002380019861FE7F986110310000000000000000000000000000000000000000
      0000000000000000000090319452186394520000000000009031945294529452
      90319031903190319031945294521863903100001863FE7FFE7F0000FE7FFE7F
      0000FE7FFE7F0000FE7FFE7F9031000000000000000000000000000000239053
      002380019861FE7F986110310000000000000000000000000000000000000000
      00000000000000009031945218639452000000000000FF7FFF7F903194529452
      FF7FFF7FFF7F90319452945218639452903100001863FE7FFE7F0000FE7FFE7F
      0000FE7F0000FE7F0000FE7F9031000000000000000000000000000000239053
      002380019861FE7F986110310000000000000000000000000000000000000000
      00000000000090311863186300000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F9031186318639452FF7F903100001863FE7F00000000FE7F0000
      0000FE7F0000FE7F0000FE7F9031000000001863186380318031803100239053
      002380019861FE7F986110310000000000000000000000000000903190319031
      00000000903118639452000000000000000000000000FF7FFF7F903190319031
      FF7FFF7F9031186394529452FE7F1863903100001863FE7FFE7F0000FE7FFE7F
      0000FE7FFE7F0000FE7FFE7F9031000000001863903100638052805290539053
      905300239861FE7F986110311042000000000000000090319031185318531853
      9031903118639452000000000000000000000000000090319031185318531853
      9031903118639452FF7FFF7FFF7FFF7F903100001863FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7F9031000000001863FF7FFF7F00630063FF7F9452
      9031FF7F9861FE7F98611031104200000000000094523E5390223E5308221853
      082218539031000000000000000000000000000094523E5390223E5308221853
      082218539031FE7F1863945290319031903100001863FE7FFE7F0000FE7FFE7F
      0000FE7FFE7FFE7FFE7FFE7F9031000000001863FF7FFF7FFF7FFF7FFF7F9452
      9031FF7FFE7FFE7FFE7F9861104200000000000094523E53902290223E539022
      082218539031000000000000000000000000000094523E53902290223E539022
      082218539031FF7FFF7FFF7FFF7FFF7F903100001863FE7FFE7F0000FE7F0000
      FE7F0000FE7FFE7FFE7FFE7F9031000000001863FF7F8022FF7FFF7FFF7F9452
      94529031FF7F94529031FF7F10420000000094523E533E5310233E5310433E53
      10231853185390310000000000000000000094523E533E5310233E5310433E53
      1023185318539031FE7F186394529031903100001863FE7F00000000FE7F0000
      FE7F0000FE7F9452945294529452000000001863FF7F802280228022FF7F1863
      18639031FF7F94529031FF7F10420000000094523E533E533E53104310431043
      3E533E533E5390310000000000000000000094523E533E533E53104310431043
      3E533E533E539031FF7FFF7FFF7FFF7F903100001863FE7FFE7F0000FE7FFE7F
      0000FE7FFE7F1863106310639452000000001863FF7F0023FE7FFE7FFF7FFF7F
      FF7F9031945218639452903110420000903194523E533E533E53104310431043
      3E533E53103290310000000000000000000094523E533E533E53104310431043
      3E533E5310329031FE7F1863FF7FFF7F903100001863FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7F1863106394520000000000001863FF7FFF7F80528052FF7F9031
      FF7F94529452186318639452903194529031000094523E533E53984290219842
      3E533E539452000000000000000000000000000094523E533E53984290219842
      3E533E539452FE7F18639452FF7FFF7F945200001863FE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7F1863945200000000000000001863FE7FFF7F90319031FF7F1863
      945218631863186318631863186318639452000094523E533E533E533E533E53
      3E533E539452000000000000000000000000000094523E533E533E533E533E53
      3E533E539452FF7FFF7FFF7FFF7F945200000000186318631863186318631863
      18631863186318630000000000000000000018631863FE7FFF7FFF7FFF7F1863
      FF7F1863186318631863186318639452000000000000945294523E533E533E53
      94529452000000000000000000000000000000000000945294523E533E533E53
      9452945200000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018631863186318631863FF7FFF7F
      1863FF7FFF7FFF7FFF7F18639452000000000000000000000000945294529452
      0000000000000000000000000000000000000000000000000000945294529452
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8001800100000000103110310000000000000000000000000000000000008001
      8002906390630023002380028002800108210000000000000000000000000000
      0000083000000000000000000000000000000000000000000000903190319031
      9031903190319031903190319031903100000000000000000000000000000023
      9053002380019861FE7F98611031000000000000000000000000000000000000
      0821082108210821082108210821082100000000000000000000000000000830
      0830085288310830000000000000000000000000000000001863FE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7FFE7F903100000000786378637863786378630023
      9053002380019861FE7F9861103178630000000000000000000000000000FE7F
      1042FF7F08211863082118631042082100000000000000000000083008310852
      0873087390731073883108300000000000000000000000001863FE7F18631863
      186394529452945294529452FE7F903100000000786378637863786378630023
      9053002380019861FE7F986110317863000000000000000000000000FE7FFE7F
      1042FF7FFF7F0821186318631042082100000000000000000831085208730873
      0873087390739073907310731031000000000000000000008001800180018022
      FE7FFE7FFE7FFE7FFE7FFE7FFE7F903100000000786378637863786378630023
      9053002380019861FE7F98611031786300000000000000000000FE7FFE7FFE7F
      10421863FF7F1863186318631042082100000000000008300852087308730873
      0873907388629073907390738862083000000000000000238022800180228001
      800118639452945294529452FE7F903100000000786378637863786378630023
      9053002380019861FE7F9861103178630000000000000000FE7FFE7FFE7F9031
      1863104218631042186310420821903100000000083008528862085208730873
      90738862886288628862907388620831083000000000002300238001FE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7FFE7F903100000000786378637863786378639053
      9053905300239861FE7F986110317863000000000000FE7FFE7FFE7FFE7FFE7F
      903118631042FF7F104208210000000000000000083190739073085208529073
      8862107388621073107310730852FE7F10310000000000230023800118639452
      945294529452945294529452FE7F903100000000786378637863786378637863
      9452903178639861FE7F98611031786300000000FE7FFE7FFE7F90311863FE7F
      FE7F90311042FF7F104208210000000000000000083190739073886288629073
      107388628862107308730852FE7FFE7F103100000000002300238001FE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7FFE7F903100000000786378637863786378637863
      945290317863FE7FFE7FFE7F986178630000FE7FFE7FFE7FFE7FFE7F90311863
      FE7F104218630821186310420821000000000000083088629073087388318862
      9073907310739073884118421842FE7F10310023002300130023800180018001
      186394529452FE7FFE7FFE7FFE7F903100000000786378637863786378631863
      945294529031786394529031786378630000FE7FFE7F90311863FE7FFE7F9031
      1042186310421863082118631042082100000000000008308862907308528841
      0852886288628831184218421842FE7F1031000090638843002380238023FE7F
      FE7FFE7FFE7FFE7F945294529452945200000000786378637863786378631863
      186318639031786394529031786378630000FE7FFE7FFE7F90311863FE7FFE7F
      1042FF7FFF7F1863186318631042082100000000000000000830883188621073
      8862085288628841103118421842FE7F10310000000090638843802318639452
      945294529452FE7F186310631063945200000000786378637863786378631863
      1863186318639452186394529031786300000000FE7FFE7FFE7F90311863FE7F
      1042FF7FFF7F1863186318631042082100000000000000000000000008301031
      8841884188628862184218421842FE7F08310000000000009063FE7FFE7FFE7F
      FE7FFE7FFE7FFE7F186310639452000000000000000000000000000000000000
      00000000945294521863186394529031903100000000FE7FFE7FFE7F90310000
      0821082108210821082108210821082100000000000000000000000000000830
      8841884118421842184218421842FE7F10310000000000001863FE7FFE7FFE7F
      FE7FFE7FFE7FFE7F186394520000000000000000983298329832983298329832
      186318631863186318631863186318631863000000000000FE7FFE7FFE7F8001
      8002906390630023002380028002800108210000000000000000000000000830
      08311031FE7FFE7FFE7FFE7FFE7FFE7F10310000000000001863186318631863
      1863186318631863186300000000000000000000000000000000000000000000
      1863186318631863186318631863186318630000000000000000FE7FFE7F8001
      8001800180018001800180018001800108210000000000000000000000000000
      0000083010311031103110311031103108300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      18631863186318631863186318631863945200000000000000000000FE7F0000
      0000000000000000000000000000000000000000000080018001000000000000
      0000000010311031000000000000000000000000000000008831082108210821
      0821082108210821082188101042000000000000800180010000000000001031
      1031000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000002390530023800100000000
      00009861FE7F9861103100000000000000000000000010421863786310420821
      883108210821883108211863903118630000002390530023800100009861FE7F
      9861103110219010900090009010102100000000000000000000000000000000
      0000000000000000000000000000000000000000002390530023800100000000
      00009861FE7F986110310000000000000000000000001042FF7F945290319452
      18631863186318631863FE7F903194520000002390530023800100009861FE7F
      9861103118323E533E533E533E53982100000000104210421042104210421042
      1042104210421042104210420000000000000000002390530023800100000000
      00009861FE7F9861103100000000000000000000000010429452082188100821
      1042FE7FFE7FFE7FFE7FFE7F903118630000002390530023800100009861FE7F
      9861103100000000000000000000000000000000104290739073907390738873
      8873087300730063006310421042000000000000002390530023800100000000
      00009861FE7F9861103100000000000000000000000010428831945294529452
      08211863FE7FFE7FFE7F0000903118630000002390530023800100009861FE7F
      98611031903190211021102110211021000000001042FE7F0000000000000000
      8873087308730063006310429073104200000000002390530023800100000000
      00009861FE7F9861103100000000000000000000000010421042786378637863
      883118631042104210429452883118630000905390539053002318119861FE7F
      9861103198211F009800982198429800103200001042FE7F0000907390730000
      9073887308730873006310429073087310420000905390539053002300000000
      00009861FE7F9861103100000000000000000000000010421042FE7FFE7FFE7F
      903110420821883188318831903118630000000094529031000090009861FE7F
      98611031000018329800000000009821102100001042FE7F0000000000000000
      9073887388730873007310429073087310420000000094529031000000000000
      00009861FE7F9861103100000000000000000000000010421042786318637863
      883194528831903190318831883118630000000094529031000090009861FE7F
      98611031000098219000000000001832901000001042FE7FFE7F907390739073
      9073907388730873087310429073087310420000000094529031000000000000
      0000FE7FFE7FFE7F986100000000000000000000000010421042186394527863
      88319452903190319031903188311863000000009452903100009000FE7FFE7F
      FE7F9861000098219000000000001832900000001042FE7FFE7FFE7F90739073
      9073907388738873087310429073087310420000FF7F94529452903100000000
      000000009452903100000000000000000000000000001042104278631863FE7F
      8831945288319031903190319031186300000000945294529031900000009452
      90310000000098219000000000001832900000001042FE7FFE7FFE7FFE7F9073
      9073907390738873887310429073087310420000FF7F18631863903100000000
      00000000945290310000000000000000000000000000104210427863FE7FFE7F
      8831104208210821883108218831186300000000186318639031181198219452
      9031000000001F00900000000000982118110000104210421042104210421042
      1042104210421042104210429073087310420000FF7FFF7FFF7FFF7F00000000
      0000945218639452903100000000000090310000000010421042FE7FFE7FFE7F
      8831945218639452186318639031186300000000E07FFE7F0000000094521863
      94529031903190000000000000001F00903100000000104290730000FF7FFF7F
      0000FF7FFF7FFF7F000090731042087310420000000000000000945290310000
      9452945218631863945290319031945290310000000010421042FE7FFE7FFE7F
      08211863FE7FFE7FFE7FFE7F9031186300000000945290310000945294521863
      18639452903190319452903198211F00000000000000000010420000FF7F0000
      0000FF7FFF7FFF7F000008730873104210420000000000000000FF7F18639452
      1863186318631863186318631863186394520000000010421042945294529452
      10427863786378637863FE7F9031186300000000FF7F18639452186318631863
      1863186318631863186394521F000000000000000000000000000000FF7FFF7F
      0000FF7FFF7FFF7F000010421042104210420000000000000000FF7F1863FF7F
      186318631863186318631863186394520000000000001042FE7F945294529452
      FE7FFE7FFE7FFE7FFE7FFF7F9031945200000000FF7F1863FF7F186318631863
      18631863186318639452903100000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7F0000000000000000000000000000000000000000FF7FFF7F1863
      FF7FFF7FFF7FFF7FFF7FFF7F9452000000000000000018639452186318631863
      9452945294529452945294521042000000000000FF7FFF7F1863FF7FFF7F8052
      8052805280529452000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080318031803180318031
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000805200630063006300638052
      8031000000000000000000000000000000001842182118211821182118211821
      9810182118211821182118211821981018420000000080118011801100000000
      0000000000000000000000000000000000000000186318638031803180318031
      186318638031803180318031186318630000805200630063FF7F0063FF7F0063
      8052803100008031000000000000000000001800180018001800180018001800
      1800180018001800180018001800180018210000801180028002800280110000
      0000000000000000000080118002000000000000186390310063805280528031
      9031903100638052805280319031903100008052E07F00638031FF7F0063FF7F
      006380528031FF7F803100008031000000001800981098101800182198211821
      1800981018219810182118211800981018210000801180020000800280020000
      80110000000000000000801180020000000000001863FF7FFF7F00630063FF7F
      FF7FFF7FFF7F00630063FF7FFF7F903100008052E07F8031FF7F8031FF7F0063
      006300630063006380528031006380310000981018211800FF7FFF7FFE7FFF7F
      98101832FF7F1842FF7F3E531800182118210000801180020000000000000000
      80020000000000008011800200000000000000001863FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F903100008052E07F00638031FF7F0063FF7F
      006380528052006300630063006300638031981098219810FF7F3E531821FF7F
      98211821FF7F3E53FE7F98101821182198210000801180020000000000000000
      00000000000000008011800200000000000000001863FF7F8022FF7FFF7F8022
      FF7FFF7F903190319031FF7FFF7F903100008052E07F00630063006300630063
      006380528052805280528052805280520063981098219810FF7F3E531821FF7F
      98311821FF7FFF7F3E5318219821182198210000801180020000000000000000
      80020000000080118002000000000000000000001863FF7F8022802280228022
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F9031000080528052E07FE07FE07FE07FE07F
      805280310000803100000000000000000000981018321821FF7F3E531821FF7F
      98211821FF7F1832FF7F18321821983198210000801180020000800280020000
      80110000000080118002000000000000000000001863FF7F0023FE7FFE7F0023
      FF7FFF7F903190319031FF7FFF7F903100008052E07F80528052805280528052
      006380528031FF7F80310000803100000000182118321821FF7FFF7F3E53FF7F
      18211832FF7F9821182118211832183298210000801180028002800280110000
      00000000801180020000000000000000000000001863FF7FFF7F80528052FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F903100008052E07F8031FF7F8031FF7F0063
      0063006300630063805280310063803100001821984218329821FF7FFF7F1842
      182118323E531821183298421832183298310000000080118011801100000000
      00000000801180020000000000000000000000001863FE7FFF7F90319031FF7F
      FF7F903190319031FF7FFF7FFF7F945200008052E07F00638031FF7F0063FF7F
      0063805280520063006300630063006380311821183298421832982118211832
      1832183298311832984298429842183298310000000000000000000000000000
      000000000000000000000000000000000000000018631863FE7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F9452186300008052E07F00630063006300630063
      0063805280528052805280528052805200639852983198311832183218321832
      983198311832183298319831983198213E530000000000000000000000000000
      0000000000000000000000000000000000000000186318631863186318631863
      18631863186318631863186318631863000000008052E07FE07FE07FE07FE07F
      8052000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080528052805280528052
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080318031803180318031
      0000000000000000000090009000900000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000805200630063006300638052
      8031000000009000900018511851185190000000000080318031803180318031
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008052006300631863006318630063
      8052803190008031185118511851185118510000805200630063006300638052
      8031000000000000000000000000000000000000000000400000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008052E07F00638031186300631863
      006380528031186380311863803118511851805200630063FF7F0063FF7F0063
      8052803100008031000000000000000000000000007C00400040000000000000
      0000000000000000000000000000000000000000000080318031803180318031
      0000000000000000000000000000000000008052E07F80318031803180310063
      0063006300630063805280310063803100008052E07F00638031FF7F0063FF7F
      006380528031FF7F803118518031185100000000907108710040004080318031
      0000000000000000000000400000000000000000805200630063006300638052
      8031000000000000000000000000000000008052E07F00638031006300638052
      0063805280520063006300630063006380318052E07F8031FF7F8031FF7F0063
      0063006300630063805280310063803100000000805290710871004000638052
      803100000000000080600000000000000000805200630063FF7F0063FF7F0063
      8052803100008031000000000000000000008052E07F00630063006300630063
      0063805280528052805280528052805200638052E07F00638031FF7F0063FF7F
      0063805280520063006300630063006380318052006300639071007C00400063
      805280310000007C806000000000000000008052E07F00638031FF7F0063FF7F
      006380528031FF7F8031000080310000000000008052E07FE07FE07FE07FE07F
      8052185118511851185118510000000000008052E07F00630063006300630063
      0063805280528052805280528052805200638052E07F006380319071007C0040
      00638052007C007C803100008031000000008052E07F8031FF7F8031FF7F0063
      0063006300630063805280310063803100000000000080528052805280528052
      18511851185118511851000000000000000018518052E07FE07FE07FE07FE07F
      8052FF7FFF7FFF7FFF7FFF7FFE7F185100008052E07F8031FF7F80319071007C
      00408060007C0063805280310063803100008052E07F00638031FF7F0063FF7F
      0063805280520063006300630063006380310000000000009000185118511851
      1851803118511851000000000000000000001851FE7F80528052805280528052
      9000FF7FFF7F9000FF7FFF7FFE7F185100008052E07F00638031FF7F0063007C
      007C806080520063006300630063006380318052E07F00630063006300630063
      0063805280528052805280528052805200630000000018518031185118511851
      0063185100000000000000000000000000001851FE7FFF7F1863082218639000
      FF7F18639000FF7F9000FF7FFE7F185100008052E07F0063006300638060007C
      08710871004080528052805280528052006300008052E07FE07FE07FE07FE07F
      8052000000000000000000000000000000000000000010421851803118510063
      1851000000000000000000000000000000001851FE7FFF7F082210420822FF7F
      9000FF7FFF7F1863FF7FFF7FFE7F1851000000008052E07FE07F8060007C007C
      8052000008710040000000000000000000000000000080528052805280528052
      0000000000000000000000000000000000000000000018631863185100631851
      0000000000000000000000000000000000001851FE7FFF7F186308221863FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFE7F185100000000000000408060007C007C8052
      0000000000000871004000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042186318631863104218510000
      0000000000000000000000000000000000001851FE7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFE7F185100000000007C007C007C007C00000000
      0000000000000000087180600000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104218630000000000000000
      0000000000000000000000000000000000001851FE7FFE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7FFE7F185100000000907190710871000000000000
      000000000000000000000000007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010420000000000000000
      0000000000000000000000000000000000001851185118511851185118511851
      1851185118511851185118511851185100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010421000
      1000100010420000000000000000000000000000000000000000000010001000
      1000100010000000000000000000000000000000000010421042000000000000
      00000000000000000000000000000000000000000000007C0040004010420000
      0000000000000000007C10420000000000000000000000000000104210001000
      1000100010001042000000000000000000000002100000000000100000020002
      0002000200021000100000000000000000000000000010401040104200000000
      00000000000000001042000000000000000000001002007C0040004000401042
      000000000000007C004000401042000000000000000000000000100010001000
      1042000010001000000000000000000000000002000210001000000200020002
      0002000200020002000210000000000000000000000010401040104010420000
      000000000000104010401042000000000000007C0040007C0040004000400040
      10420000007C0040004000400040104200000000000000000000100010001000
      104200000000104200000000000000000000000200020002000200020002E003
      E003E003E0030002000200021000000000000000000010401040104010401042
      000000001040104010401040104200000000007C00400040007C004000400040
      0040104200400040004000400040104200000000000000000000104210001000
      10001042000000000000000000000000000000020002000200020002E0030000
      000000000000E003000200020002100000000000000000001040104010401040
      104210401040104010401040104200000000007C004000400040007C00400040
      0040004000400040004000401042000000000000000000000000000010421000
      1000100010420000000000000000000000000002000200020002000200000000
      0000000000000000E00300020002100000000000000000000000104010401040
      1040104010401040104010420000000000000000007C004000400040007C0040
      0040004000400040004010420000000000000000000000000000000000001042
      1000100010420000000000000000000000000002000200020002000200020000
      0000000000000000E00310001000100000000000000000000000000010401040
      10401040104010401042000000000000000000000000007C0040004000400040
      0040004000400040104200000000000000000000000000000000104200000000
      100010001000104200000000000000000000E003E003E003E003E003E003E003
      0000000000000000000000000000000000000000000000000000000010401040
      104010401040104200000000000000000000000000000000007C00400040007C
      0040004000400040104200000000000000000000000000000000100010000000
      1042100010001042000000000000000000000000000000000000000000000000
      0000000000001000100010001000100010000000000000000000000000001040
      10401040104010420000000000000000000000000000000000000040007C0040
      0040004000400040104200000000000000000000000000000000104210001000
      100010001000104200000000000000000000E003100010001000000000000000
      00000000E0030002000200020002000210000000000000000000000010401040
      1040104010401042000000000000000000000000000000000000007C00400040
      0040104200400040004010420000000000000000000000000000000010421000
      100010001042000000000000000000000000E003000200021000000000000000
      000000000000E003000200020002000210000000000000000000104010401040
      104210401040104010420000000000000000000000000000007C004000400040
      10420040007C0040004000401042000000000000000000000000000000000000
      0000000000000000000000000000000000000000E00300020002100000000000
      0000000010001000000200020002000210000000000000001040104010401042
      00000000104010401040104200000000000000000000007C007C004000401042
      004000400040007C004000400040104200000000000000000000000000001042
      1000100010420000000000000000000000000000E00300020002000210001000
      1000100000020002000200020002000210000000000000001040104010420000
      0000000000001040104010401042000000000000007C00400040007C00400000
      007C004000400040007C00400040004000000000000000000000000000001000
      10001000100000000000000000000000000000000000E0030002000200020002
      00020002000200020002E003E003000210000000000000000000104000000000
      0000000000000000104010401040000000000000007C00400040100200000000
      0000007C004000400040007C0040007C00000000000000000000000000001000
      100010001000000000000000000000000000000000000000E003E00300020002
      000200020002E003E00300000000E00300000000000000000000000000000000
      00000000000000000000104000000000000000000000007C0040000000000000
      00000000007C0040004000400000000000000000000000000000000000001042
      10001000104200000000000000000000000000000000000000000000E003E003
      E003E003E0030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007C0040007C0000000000000000000000000000000000001042
      1042104210420000000000000000000000000000000000001000100010001000
      1000100010001000100010001000000000000000E07F00001000100010001000
      1000100010001000100010001000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000104200400040
      004000401042104210420000000000000000007C000000001000FF031F001F00
      1F001F001F001F001F001F001000000000000000E07FE07F1000FF031F001F00
      1F001F001F001F001F001F001000E07FE07F0000000000000000000010101010
      1010101010101010000000000000000000000000000000000040007C007C007C
      007C007C007C007C1042104210420000000000001F001F001000FF031863007C
      1863007C1863007C18631F0010000000007C00001F001F001000FF0318630000
      186300001863000018631F001000E07F00000000000000001020102010201010
      10101010101010101010101000000000000000000000007C007C007C007C007C
      007C007C007C007C007C00401042000000001F000000007C1000FF03FF03FF03
      FF03FF03FF03FF03FF031F001000007C007C1F00000000001000FF03FF03FF03
      FF03FF03FF03FF03FF031F001000000000000000000018201020102010201020
      10201020102010101010101010100000000000000040007C007C007C007C007C
      007C007C007C007C007C007C1042104200001F000000007C007C1000FF031863
      007C1863007C1863FF031000007C007C00001F000000000000001000FF031863
      0000186300001863FF0310000000000000000000000018201820182018201020
      1020102010201020102010101010000000000040007C007C007CFF7F007C007C
      007C007CFF7FFF7F007C007C007C104200001F0000000000007C007C1000FF03
      FF03FF03FF03FF031000007C007C000000001F0000000000000000001000FF03
      FF03FF03FF03FF0310000000000000000000000098209820182018201803FF03
      182018201803FF03102010101010101000000040007C007C007CFF7FFF7F007C
      007CFF7FFF7FFF7F007C007C007C10421042000010001F001F00007C10001000
      10001000100010001000007C000000000000E07F10001F001F00E07F10001000
      10001000100010001000E07FE07FE07FE07F0000982098209820982018031803
      182018201803180310201020101010100000007C007C007C007C007CFF7FFF7F
      FF7FFF7FFF7F007C007C007C007C00401042000010001F001F001F0010000000
      007C007C0000000010000000000000000000E07F10001F001F001F001000E07F
      E07FE07FE07FE07F1000E07FE07FE07FE07F0000982098209820982018031803
      182018201803180310201020101010100000007C007C007C007C007C007CFF7F
      FF7FFF7F007C007C007C007C007C00401042000010001F001F001F0010001863
      000000000000000000000000000000000000000010001F001F001F0010001863
      E07FE07F00000000000000000000000000000000982098209820982018031803
      182018201803180310201020101010100000007C007C007C007C007CFF7FFF7F
      FF7FFF7F007C007C007C007C007C0040104200001000FF03FF031F001F001F00
      007C007C000010001F00100010000000000000001000FF03FF031F001F001F00
      E07FE07F000010001F0010001000000000000000983098209820982018031803
      182018201803180310201020101010100000007C007C007C007CFF7FFF7FFF7F
      007CFF7FFF7F007C007C007C007C00400000000000001F00FF03FF03FF031F00
      100010001F0010001F001F001F0010000000000000001F00FF03FF03FF031F00
      100010001F0010001F001F001F001000000000009830983098309820FF031803
      98209820FF031803182010201020101000000040007C007CFF7FFF7FFF7F007C
      007C007CFF7FFF7F007C007C007C10420000000000000000100010001000FF03
      FF03FF03FF031F00FF03FF03FF0310000000000000000000100010001000FF03
      FF03FF03FF031F00FF03FF03FF03100000000000000098309830983098209820
      9820982098201820182010201020000000000000007C007C007CFF7F007C007C
      007C007C007C007C007C007C004000000000000000000000007C007C10421F00
      100010001F00FF03FF031F001F0000000000000000000000E07FE07F10421F00
      100010001F00FF03FF031F001F00000000000000000018319830983098309820
      98209820982018201820102010200000000000000040007C007C007C007C007C
      007C007C007C007C007C007C00000000000000000000007C007C000000000000
      007C007C104210001F001F00007C0000000000000000E07FE07F000000000000
      E07FE07F104210001F001F00E07F000000000000000000001831983098309820
      982098209820982018201820000000000000000000000040007C007C007C007C
      007C007C007C007C004000000000000000000000007C007C0000000000000000
      007C007C0000000000000000007C007C00000000E07FE07F0000000000000000
      E07FE07F0000000000000000E07FE07F00000000000000000000000098309830
      98209820982098200000000000000000000000000000000000000040007C007C
      007C007C00400040000000000000000000000000007C00000000000000000000
      007C007C00000000000000000000007C00000000E07F00000000000000000000
      E07FE07F00000000000000000000E07F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000100010020000
      0000000000000000100010001000100000000000004000400040004010020000
      000000000000000000400040004000400000000000000000000000000000D752
      F0390C4E457F857FA57FA37F667F757B00000000000000000000000010101010
      10101010101010100000000000000000000000000000E003E003E00310000000
      000000000000000000000002E0031000000000000000007C007C007C00400000
      000000000000000000000002007C00400000000000000000000000003143C00E
      A032807FC37FEC7FCA7FC77FC57FA47F757B0000000000001020102010201010
      1010101010101010101010100000000000000000000000000002E00310001002
      000000000000000000000002E003100000000000000000000002007C00401002
      000000000000000000000002007C0040000000000000195BF039F03988264017
      4077C27F2F7FAB7EEA7E697E477FC77F667F0000000018201020102010201020
      1020102010201020101010101010000000000000000000000002E00300021000
      00000000000000001002E0031002100200000000000000000002007C00020040
      00000000000000001002007C10021002000000005553A11AE01A6826661E401B
      A37FF57FF17EF47FF27FEE7FE77EC77FA47F0000000018201820182018201820
      1803FF03102010201020101010100000000000000000000000001002E003E003
      1000100010020002E00310001002000000000000000000000000007C007C0040
      10020000000010020002007C0040000000000000E222802B802B201F4316401F
      A07FF97FFB7FF87FF57FF17FEC7FC97FA47F0000982098201820182018201820
      180318031820102010201020101010100000000000000000000000000002E003
      E00300020002000210001002000000000000000000000000000000000002007C
      007C00020002007C004010020000000000000000E226A02F802B802BE01AC01A
      A67FFA7FFE7F0000F87F0000EE7FC87F807F0000982098209820982018201820
      1803180318201020102010201010101000000000000000000000000000001002
      E003E003E0030002000210021000100200000000000000000000000000001002
      007C007C007C00020002100200400000000000005553C426602B802F402F604E
      417FCA7FFF7FFE7FFA7FF57FF17FC97F247B0000982098209820FF0318031803
      1803180318031803180310201010101000000000000010001000100010001002
      1002E003E003100000001002E003100000000000000000400040004000401002
      1002007C007C004000001002007C004000000000385B2622821AC01A6046A077
      C07F857FCA7FF67FF57FCB7FC97F827FB05A0000982098209820180318031803
      1803180318031803FF031020101010100000000000001002E003E00300021000
      1002E0030002100000001002E00310000000000000001002007C007C00020040
      1002007C0002004000001002007C00400000785FE026C03BA037A033604EE07F
      E07FC07F447FAE7FD27FAA7F4577C94A00000000983098209820982018201820
      18031803182018201020102010101010000000000000000000001002E0030002
      1000E003E003100010000002E0031000000000000000000000001002007C0002
      0040007C007C004000400002007C00400000514FA03FC03FC03B8033803E0063
      E07FE07F8052801A611266220A2A195B00000000983098309830982018201820
      1803180318201820182010201020101000000000000000000000000000000000
      00020002E003E003E00310000000000000000000000000000000000000000000
      00020002007C007C007C004000000000000000000737453BA01EE0268037803E
      8052804E003B8027402381166D32F0393B630000000098309830983098209820
      FF03180398201820182010201020000000000000000000000000000000000000
      000000020002E003100000000000000000000000000000000000000000000000
      000000020002007C0040000000000000000000000000E62EA03FC03FA0376016
      A0370023001F802B80276027C0166F3AD7520000000018319830983098309820
      9820982098201820182010201020000000000000000000000000000000000000
      10001000E0031000000000000000000000000000000000000000000000000000
      00400040007C004000000000000000000000000000006037E047A03F8426212B
      A03BA03742164027802B8027602708267D6B0000000000001831983098309820
      9820982098209820182018200000000000000000000000000000000000000000
      1002E00300021000000000000000000000000000000000000000000000000000
      1002007C000200400000000000000000000000000000083B453F093B0000402F
      C03BC03BA72E892E0123602BA21A9C6700000000000000000000000098309830
      9820982098209820000000000000000000000000000000000000000000000000
      1002E003E0031000000000000000000000000000000000000000000000000000
      1002007C007C0040000000000000000000000000000000000000000000004033
      C03FC03F852AD7529C67314B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000100210021002000000000000000000000000000000000000000000000000
      0000100210021002000000000000000000000000000000000000000000000837
      202F0027314B0000000000000000000000000000000000000000000000008060
      8060806080608060000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806080608870
      8870887088708870806080600000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010101010
      1010101010101010000000000000000000000000000000000000000010101010
      1010101010101010000000000000000000008060000000008060087108710871
      0871087108710871087108718060000000000000000000000000000000000000
      1863000000000000000000000000000000000000000000001020102010201010
      1010101010101010101010100000000000000000000000001020102010201010
      1010101010101010101010100000000000008060806080600871087108711072
      10721072107210720871087108718060000000000000E07F00000000E07F0000
      00000000E07F00000000E07F0000000000000000000018201020102010201020
      1020102010201010101010101010000000000000000018201020102010201020
      1020102010201010101010101010000000008060087108710871087110720000
      000000000000000010720871087108718060000000000000E07FE07FE07F0000
      E07F0000E07FE07FE07F00000000000000000000000018201803FF0318201803
      FF03102010201803FF03101010100000000000000000182018201820FF031020
      1020102010201020102010101010000000008060887188718871107200000000
      000000000000000000001072887188718060000000000000E07FE07FE07F0000
      FF7F0000E07FE07FE07F00000000000000000000982098201803180318201803
      1803182018201803180310201010101000000000982098201820FF0318031820
      1820102010201020102010101010101000008060907190711072000000000000
      00000000000000000000107210721072107200000000E07FE07FE07F0000FF7F
      1042FF7F0000E07FE07FE07F0000000000000000982098201803180398201803
      180318201820180318031020102010100000000098209820FF03180318031820
      1820182010201020102010201010101000001072107210721072107200000000
      00000000000000000000000000000000000000000000E07FE07F0000FF7FE07F
      1042E07FFF7F0000E07FE07F0000000000000000982098201803180318031803
      18031820182018031803102010201010000000009820FF03180318031803FF03
      1803180318031803180318031010101000000000000000000000000000000000
      000000000000000080608060806080608060E07FE07FE07FE07F0000E07FFF7F
      1042FF7FE07F0000E07FE07FE07FE07F00000000982098201803FF0398201803
      1803182018201803180310201020101000000000982018031803180318031803
      18031803180318031803FF031010101000008060806080608060000000000000
      00000000000000000000806088708870806000000000E07FE07F0000FF7FE07F
      FF7FE07FFF7F0000E07FE07F0000000000000000983098201803180398201803
      180398209820FF03180398209820101000000000983098201803180318031820
      1820182018201820102010201010101000008060087108718060000000000000
      00000000000000008060087108710871806000000000E07FE07FE07F0000FF7F
      E07FFF7F0000E07FE07FE07F0000000000000000983098209830180318031803
      1803FF0318031803180318031803101000000000983098309830180318031820
      1820182018201820182010201020101000001072087108710871806000000000
      000000000000806008710871087108718060000000000000E07FE07FE07F0000
      00000000E07FE07FE07F000000000000000000000000983098309830FF031803
      180318031803180318031803FF03000000000000000098309830983018039820
      9820982098201820182010201020000000000000107208710871087180608060
      806080608060087108710871107210728060000000000000E07FE07FE07FE07F
      E07FE07FE07FE07FE07F00000000000000000000000018319830983098309820
      9820982098201820182010201020000000000000000018319830983098309820
      9820982098201820182010201020000000000000000010728871887188718871
      88718871887188718871107200000000107200000000E07F00000000E07FE07F
      E07FE07FE07F00000000E07F0000000000000000000000001831983098309820
      9820982098209820182018200000000000000000000000001831983098309820
      9820982098209820182018200000000000000000000000001072107290719071
      9071907190711072107200000000000000000000000000000000000000000000
      E07F000000000000000000000000000000000000000000000000000098309830
      9820982098209820000000000000000000000000000000000000000098309830
      9820982098209820000000000000000000000000000000000000000010721072
      1072107210720000000000000000000000000000000000000000000000000000
      E07F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000018639452
      1042104210421042104294529452000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000104210429452000000000000000000000000000000000000186394521042
      1042104210421042104210421042945200000000000088318873E07FE07FE07F
      E07FE07FE07FE07F907388738831000000000000000000008052E07FE07FE07F
      E07FE07FE07FE07FE07F80520000000000000000000000000000000000000000
      8841082108211863000000000000000000000000000000000870087008700870
      087008700870087010421042104210429452000000008873E07F80739073E07F
      E07FE07FE07FE07F8073E07F887300000000000000008052E07F0042E07FE07F
      E07FE07FE07FE07F0042E07F8052000000000000000000000000000000000000
      0000987200000000000000000000000000000000000008700870087008700870
      08700870087008700870104210421042945200000000E07F805288318073E07F
      E07FE07FE07F807388318052E07F0000000000000000E07F002100000042E07F
      E07FE07FE07F004200000021E07F000000000000000000000000000000001863
      9872987288200000000000000000000000000000087008700870087008700870
      087008700870087008700870104210421042000000008073883188318831E07F
      E07FE07F9073883188318831807300000000000000000042000000000000E07F
      E07FE07FE07F0000000000000042000000000000000000000000000000008820
      9872104210421042104200000000000000000870087008700870087008700870
      0870087008700870087008700870104210420000000088318831883188318073
      E07FE07F80738831883188318831000000000000000000000000000000000871
      8060805280520000000000000000806080600000000000000000000010428841
      98720000000000001042945200000000000008700870FE7FFE7F0870FE7F0870
      FE7F0870FE7F0870FE7F08700870087010420000000088318831883188318073
      8831883180738831883188318831000000000000000000000000000080200871
      8070806080528020000000008060807080600000000000000000104200000821
      88208841987298720000000000000000000008700870FE7F08700870FE7F9071
      FE7F0870FE7F0870FE7F0870087008701042000000009073E07FE07FE07FE07F
      88318831E07FE07FE07FE07F90730000000000000000E07FE07FE07FE07F8052
      0871807080608060806080608070806000000000000000008820906208219872
      98729872987298728820104200000000000008700870FE7FFE7F08709071FE7F
      08700870FE7F0870FE7F087008700870104200000000E07FE07FE07FE07FE07F
      80738073E07FE07FE07FE07F90730000000000000000E07FE07FE07FE07FE07F
      8052087180708070807080708060000000000000000000009062882010420821
      08210821082188418820104200000000000008700870FE7F08700870FE7FFE7F
      FE7F0870FE7F0870FE7F087008700870945200000000E07FE07FE07FE07F8873
      8831883188739073E07FE07FE07F0000000000000000E07FE07FE07FE07F0063
      000000008060807080708060E07F000000000000000000009872082190629872
      98729872987298728841945200000000000008700870FE7FFE7F0870FE7F0870
      FE7F0870FE7FFE7FFE7FFE7F08700870945200000000E07FE07FE07FE07F8052
      883188318052E07FE07FE07FE07F0000000000000000E07FE07FE07FE07F0021
      8060806080700871087180708060806000000000000000009872882098729062
      0821000000000000000010420000000000000870087008700870087008700870
      087008700870087008700870087008701863000000008073E07FE07FE07F8831
      883188318831E07FE07FE07F8073000000000000000000000000000000000871
      8070087108710000000008710871807080600000000000008820104288319872
      9872987298729872082100000000000000000870087008700870087008700870
      0870087008700870087008700870186300000000000088318073907380738831
      8831883188318073907380738831000000000000000098329832983298320871
      0871983298329832983298329832087108710000000000000000082198729872
      8841000088208841882000000000000000000000087008700870087008700870
      0870087008700870087008701863000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010428820
      9062987298720000000000000000000000000000000008700870087008700870
      0870087008700870087000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000870087008700870
      087008700870087000000000000000000000424D3E000000000000003E000000
      2800000040000000E00000000100010000000000000700000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E8A2FFFF00000000EAAAFFFF00000000
      E8A2FFFF00000000FFFFFFFF00000000F07FFFFF00000000C03FFFFF00000000
      801FFFFF00000000001DFFFF000000000019FFFF000000000010FFFF00000000
      0019FFFF000000000019FFFF000000000031FFFF000000008063FFFF00000000
      C1FFFFFF00000000FFFFFFFF00000000FC7FC003F00FFFFFF81F8003E007FFCB
      F0078003C003F807E00180038001C00FC0008003000040078000800300004003
      0000800300000007000080030000000F00018003000000070003800300000003
      0007800300000007800F80030000000FE01F800380011007F83F8007C003F803
      FE7F800FE007FC07FFFF801FF00FFFFFFFFFC03FC003FFFF0000801FC003FFFF
      0000800FC003C3FF0000800FC003E7FF0000C00FC003E7FF0000E00FC003E7FF
      0000F000C003E7FF0000F000C003E7C70000F0008003E0070000F4008003E007
      0000FE008003E0070000FF808007E0070000FF80800FE0070000FF80801FE007
      0000FF8183FFE83FFFFFFF83C7FFFFFFFFFFFCCFFFF8FFF9C003F807FFF0FFF0
      8003F807FFF0E0008003F807FFE1C0008003F807FFC7C00080030007F18FC000
      80030003C01FC00080030003803F800080030003803F800080030003001F0000
      80030003001F000080030002001F000080070000803F8000800F0000803F8001
      801F0001C07FC07FFFFF0003F1FFF1FFFFFFFFFFFE67FC00FF7FF0010000FE01
      FC1FE0010000FC01F007E0010000F801E003E0010000F001C001C0010000E001
      8000C0010000C0078000C001000080078000C001000000038000000100000001
      C000800100000001E000C00100008001F800E0030000C001FC00E0070000E000
      FC00E00F0000F000FF00FFFFFE00FBFFCF9FE0039CFFFFFF870FC0010801FFFF
      870FC00108018007870FC001087F8003870FC00908018001870FC00100008000
      870FC001904C8000CF0FC001904C8000CF0FC001904C8000879FC00104CC8000
      879FC00100CC8000870EC001081CC000F200C0019001E000F000C0018003F000
      F001C0018007F00FF003C003801FF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FF
      FFFFFFFFFFFF80FF0000C7FF8001005F000083F38001000B000092F380010001
      00009EE78001000000009FE78001000000009ECF8001005F000092CF8001000B
      0000839F800100010000C79F800100000000FFFF800100000000FFFF800180FF
      FFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFC1F1FFFFFFFFFFFF80C0C1FFFFFF
      FFFF000080FFDFFFFFFF000000008FFFC1FF0001000081F780FF0000000080EF
      005F00000000004F000B80070000000B0001C00F000000010000E01F00000000
      0000C07F0000000080FFC0FF0000809FC1FF81FF0000C1CFFFFF03FF000087E7
      FFFF8FFF00008FFBFFFFDFFF0001FFFFF83FF83FCFFFC3E7F01F300FC7EF81C3
      F09F0007C3C70081F0DF0003C1830001F07F03C1E0030003F83F07E1F0078007
      FC3F03E1F80FC00FF61F01FFF81FE00FF21FFFC0FC1FF00FF01F0F80F81FF007
      F83F0FC0F00FE003FFFF8780E187C001FC3F8000E3C38201FC3FC000F7E38701
      FC3FE00DFFF7CF87FC3FF83FFFFFFFC7FC3FE003A003F81FF00F60038000E007
      E00380028001C003C003400060038001800140017007800100016003780F0000
      00008007000000000000826F00000000000081FF807F00000000804380430000
      0001C001C00100000001E001E00180018003E003E00380018007CE03CE03C003
      C00F9E799E79E007F01FBE7DBE7DF81FF81F83E183E1FC01E007C3F1C3F1F800
      C003E1F1E1F1C0008001E1E1E1E180008001F003F0C380000000F807F8078000
      0000FC01FC0380000000C011C01180000000C011C01100010000F001F0010001
      0000FE07FE0780008001FF0FFF0FC0008001FE1FFE1FC000C003FE1FFE1FC401
      E007FE1FFE1FFC07F81FFF1FFF1FFC3FFC1FFEFFF81FF81FF007FC7FE007E007
      6003FC7FC003C0030001D8378001800103E0E00F8001800107F0E00F00000000
      0FF0C0070000000007FFC00700000000FFE00001000000000FF0C00700000000
      0FE0C0070000000007C0E00F800180018000E00F80018001C006D837C003C003
      E00FFEFFE007E007F83FFEFFF81FF81FFFFFFFFFFFFFF80380018001FF1FF001
      80018001FE1FE00080018001FE3FC00080018001FC3F800080018001FC0F0000
      80018000F807000080018000F00F000080018001E007000080018001E0070000
      80018001E007000080018001E007000080018000E00F000180018000F00F8003
      80018001F81FC00FFFFFFFFFFFFFE01F00000000000000000000000000000000
      000000000000}
  end
  object ilTray: TImageList
    Height = 7
    Masked = False
    Width = 5
    Left = 573
    Top = 290
    Bitmap = {
      494C010103000400040005000700FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000140000000700000001001000000000001801
      0000000000000000000000000000000000000000007C007C007C007C0000E003
      E003E003E00300001863186318631863000000000000000000000000007C007C
      007C007C0000E003E003E003E003000018631863186318630000000000000000
      00000000007C007C007C007C0000E003E003E003E00300001863186318631863
      000000000000000000000000007C007C007C007C0000E003E003E003E0030000
      1863186318631863000000000000000000000000007C007C007C007C0000E003
      E003E003E00300001863186318631863000000000000000000000000007C007C
      007C007C0000E003E003E003E003000018631863186318630000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000424D3E000000000000003E0000002800000014000000
      0700000001000100000000001C00000000000000000000000000000000000000
      00000000FFFFFF00840000008400000084000000840000008400000084000000
      FFC0000000000000000000000000000000000000000000000000}
  end
end
