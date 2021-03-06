object IPcfgForm: TIPcfgForm
  Left = 80
  Top = 471
  HelpContext = 1240
  BorderStyle = bsDialog
  BorderWidth = 6
  Caption = 'TCP/IP Daemon  Configuration'
  ClientHeight = 314
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  DesignSize = (
    537
    314)
  PixelsPerInch = 96
  TextHeight = 13
  object bOK: TButton
    Left = 457
    Top = 22
    Width = 75
    Height = 23
    Anchors = [akTop, akRight]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object bCancel: TButton
    Left = 457
    Top = 50
    Width = 75
    Height = 23
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object bHelp: TButton
    Left = 457
    Top = 78
    Width = 75
    Height = 23
    Anchors = [akTop, akRight]
    Caption = 'Help'
    TabOrder = 2
    OnClick = bHelpClick
  end
  object bImport: TButton
    Left = 457
    Top = 142
    Width = 75
    Height = 23
    Anchors = [akTop, akRight]
    Caption = '&Import...'
    TabOrder = 4
    Visible = False
    OnClick = bImportClick
  end
  object bSort: TButton
    Left = 457
    Top = 170
    Width = 75
    Height = 23
    Anchors = [akTop, akRight]
    Caption = '&Sort'
    TabOrder = 5
    Visible = False
    OnClick = bSortClick
  end
  object bEditNode: TButton
    Left = 457
    Top = 114
    Width = 75
    Height = 23
    Anchors = [akRight, akBottom]
    Caption = 'Edit'
    TabOrder = 3
    Visible = False
    OnClick = bEditNodeClick
  end
  object bExplain: TButton
    Left = 457
    Top = 114
    Width = 75
    Height = 23
    Anchors = [akTop, akRight]
    Caption = 'Explain...'
    TabOrder = 6
    Visible = False
    OnClick = bExplainClick
  end
  object tb: TPageControl
    Left = 0
    Top = 0
    Width = 448
    Height = 314
    ActivePage = lGeneral
    Align = alLeft
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 7
    OnChange = tbChange
    object lGeneral: TTabSheet
      BorderWidth = 6
      Caption = 'General'
      DesignSize = (
        428
        256)
      object bvlSOCKS: TBevel
        Left = 0
        Top = 168
        Width = 428
        Height = 88
        Align = alBottom
        Anchors = [akLeft, akTop, akRight]
        Shape = bsFrame
      end
      object llInPorts: TLabel
        Left = 0
        Top = 4
        Width = 69
        Height = 13
        Caption = 'Incoming ports'
      end
      object llPassword: TLabel
        Left = 243
        Top = 226
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Pass&word'
        FocusControl = lPassword
      end
      object llUserName: TLabel
        Left = 121
        Top = 226
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = '&Name'
        FocusControl = lUserName
      end
      object llSocksAddr: TLabel
        Left = 16
        Top = 198
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = '&Address'
        FocusControl = lSocksAddr
      end
      object llSocksPort: TLabel
        Left = 342
        Top = 198
        Width = 19
        Height = 13
        Alignment = taRightJustify
        Anchors = [akLeft, akTop, akRight]
        Caption = '&Port'
        FocusControl = lSocksPort
      end
      object gIn: TAdvGrid
        Left = -1
        Top = 22
        Width = 266
        Height = 80
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        ColCount = 2
        DefaultColWidth = 80
        DefaultRowHeight = 18
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goFixedNumCols]
        ParentFont = False
        TabOrder = 0
        CheckBoxes = False
        ColWidths = (
          80
          262)
      end
      object llLimit: TGroupBox
        Left = 275
        Top = 11
        Width = 154
        Height = 74
        Anchors = [akTop, akRight, akBottom]
        Caption = 'Connections'
        TabOrder = 1
        object llCin: TLabel
          Left = 29
          Top = 18
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Max &in'
          FocusControl = spIn
        end
        object llCout: TLabel
          Left = 22
          Top = 43
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Max &out'
          FocusControl = spOut
        end
        object llAssumeSpeed: TLabel
          Left = 30
          Top = 68
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Speed'
          FocusControl = spSP
        end
        object spIn: TxSpinEdit
          Left = 78
          Top = 15
          Width = 66
          Height = 22
          Increment = 4
          MaxValue = 4096
          MinValue = 0
          TabOrder = 0
          Value = 16
        end
        object spOut: TxSpinEdit
          Left = 78
          Top = 39
          Width = 66
          Height = 22
          MaxValue = 1024
          MinValue = 0
          TabOrder = 1
          Value = 4
        end
        object spSP: TxSpinEdit
          Left = 78
          Top = 63
          Width = 66
          Height = 22
          Increment = 300
          MaxLength = 9
          MaxValue = 99999999
          MinValue = 30
          TabOrder = 2
          Value = 115200
        end
      end
      object rgProxyType: TRadioGroup
        Left = 0
        Top = 108
        Width = 268
        Height = 50
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Proxy type'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'None'
          'Socks v4'
          'Socks v5'
          'HTTP <PUT>'
          'HTTP <CONNECT>')
        TabOrder = 2
        OnClick = cbSOCKSClick
      end
      object GroupBox1: TGroupBox
        Left = 277
        Top = 104
        Width = 151
        Height = 55
        Anchors = [akTop, akRight, akBottom]
        Caption = 'Traffic shaper'
        TabOrder = 3
        object llAssumeSpeedin: TLabel
          Left = 58
          Top = 17
          Width = 9
          Height = 13
          Alignment = taRightJustify
          Caption = 'In'
          FocusControl = spSPin
        end
        object llAssumeSpeedOut: TLabel
          Left = 51
          Top = 44
          Width = 17
          Height = 13
          Alignment = taRightJustify
          Caption = 'Out'
          FocusControl = spSPin
        end
        object spSPin: TxSpinEdit
          Left = 75
          Top = 13
          Width = 73
          Height = 22
          Increment = 256
          MaxLength = 9
          MaxValue = 99999999
          MinValue = 0
          TabOrder = 0
          Value = 99999999
        end
        object spSPout: TxSpinEdit
          Left = 75
          Top = 41
          Width = 73
          Height = 22
          Increment = 256
          MaxLength = 9
          MaxValue = 99999999
          MinValue = 0
          TabOrder = 1
          Value = 99999999
        end
      end
      object lSocksAddr: TEdit
        Left = 60
        Top = 194
        Width = 270
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
      end
      object lSocksPort: TEdit
        Left = 365
        Top = 194
        Width = 52
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 5
      end
      object lPassword: TEdit
        Left = 293
        Top = 221
        Width = 125
        Height = 21
        Anchors = [akTop, akRight]
        Enabled = False
        PasswordChar = '*'
        TabOrder = 6
      end
      object lUserName: TEdit
        Left = 156
        Top = 222
        Width = 62
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 7
      end
      object cbAuth: TCheckBox
        Left = 8
        Top = 225
        Width = 102
        Height = 17
        Caption = 'Authenticate'
        TabOrder = 8
        OnClick = cbSOCKSClick
      end
      object cbEncryptPassword: TCheckBox
        Left = 245
        Top = 249
        Width = 173
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Encrypt password in config'
        TabOrder = 9
      end
      object cbAllVIaProxy: TCheckBox
        Left = 8
        Top = 249
        Width = 147
        Height = 17
        Caption = 'All via proxy'
        TabOrder = 10
      end
    end
    object lStation: TTabSheet
      BorderWidth = 6
      Caption = 'Station'
      object gTpl: TAdvGrid
        Left = 0
        Top = 0
        Width = 428
        Height = 118
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -12
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        Align = alTop
        ColCount = 2
        DefaultColWidth = 100
        DefaultRowHeight = 18
        RowCount = 6
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goFixedNumCols]
        ParentFont = False
        TabOrder = 0
        CheckBoxes = False
        ColWidths = (
          100
          411)
      end
    end
    object lAKA: TTabSheet
      BorderWidth = 6
      Caption = 'AKA'
      object gAKA: TAdvGrid
        Left = 0
        Top = 0
        Width = 428
        Height = 256
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -12
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        Align = alClient
        ColCount = 3
        DefaultRowHeight = 18
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowMoving, goEditing, goThumbTracking, goDigitalRows]
        ParentFont = False
        TabOrder = 0
        CheckBoxes = False
        ColWidths = (
          31
          160
          202)
      end
    end
    object lBanner: TTabSheet
      BorderWidth = 6
      Caption = 'Banner'
      object eBan: TMemo
        Left = 0
        Top = 0
        Width = 428
        Height = 256
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object lRestrict: TTabSheet
      Tag = 8767
      BorderWidth = 2
      Caption = 'Restrictions'
      object p: TPageControl
        Left = 0
        Top = 0
        Width = 436
        Height = 264
        ActivePage = tsRequired
        Align = alClient
        MultiLine = True
        TabOrder = 0
        TabPosition = tpBottom
        object tsRequired: TTabSheet
          BorderWidth = 6
          Caption = 'Required'
          object gReqd: TAdvGrid
            Left = 0
            Top = 0
            Width = 416
            Height = 226
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -12
            FixedFont.Name = 'MS Sans Serif'
            FixedFont.Style = []
            Align = alClient
            ColCount = 2
            DefaultRowHeight = 18
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Fixedsys'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowMoving, goEditing, goThumbTracking, goDigitalRows]
            ParentFont = False
            TabOrder = 0
            CheckBoxes = False
            ColWidths = (
              31
              350)
          end
        end
        object tsForbidden: TTabSheet
          BorderWidth = 6
          Caption = 'Forbidden'
          object gForb: TAdvGrid
            Left = 0
            Top = 0
            Width = 405
            Height = 216
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'MS Sans Serif'
            FixedFont.Style = []
            Align = alClient
            ColCount = 2
            DefaultRowHeight = 18
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Fixedsys'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowMoving, goEditing, goThumbTracking, goDigitalRows]
            ParentFont = False
            TabOrder = 0
            CheckBoxes = False
            ColWidths = (
              31
              350)
          end
        end
      end
    end
    object lEvents: TTabSheet
      BorderWidth = 6
      Caption = 'Events'
      object labelAvl: TLabel
        Left = 0
        Top = 0
        Width = 43
        Height = 13
        Caption = '&Available'
        FocusControl = lAvl
      end
      object labelLinked: TLabel
        Left = 288
        Top = 0
        Width = 32
        Height = 13
        Caption = '&Linked'
        FocusControl = lLnk
      end
      object bRight: TSpeedButton
        Left = 204
        Top = 32
        Width = 25
        Height = 25
        Hint = 'Add'
        Caption = '&>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = bRightClick
      end
      object bLeft: TSpeedButton
        Left = 204
        Top = 60
        Width = 25
        Height = 25
        Hint = 'Delete'
        Caption = '&<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = bLeftClick
      end
      object bEdit: TSpeedButton
        Left = 204
        Top = 128
        Width = 25
        Height = 25
        Hint = 'Edit Events'
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
        OnClick = bEditClick
      end
      object lAvl: TListBox
        Left = 0
        Top = 16
        Width = 193
        Height = 257
        ItemHeight = 13
        TabOrder = 0
        OnClick = lAvlClick
        OnDblClick = lAvlDblClick
        OnKeyPress = lAvlKeyPress
      end
      object lLnk: TListBox
        Left = 240
        Top = 16
        Width = 193
        Height = 257
        ItemHeight = 13
        TabOrder = 1
        OnClick = lAvlClick
        OnDblClick = lLnkDblClick
        OnKeyPress = lLnkKeyPress
      end
    end
    object lDNS: TTabSheet
      BorderWidth = 6
      Caption = 'DNS'
      object gDNS: TAdvGrid
        Left = 0
        Top = 0
        Width = 428
        Height = 256
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -12
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        Align = alClient
        ColCount = 4
        DefaultRowHeight = 18
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowMoving, goEditing, goThumbTracking, goDigitalRows]
        ParentFont = False
        TabOrder = 0
        CheckBoxes = False
        ColWidths = (
          31
          141
          109
          120)
      end
    end
    object lNodes: TTabSheet
      Tag = 8769
      BorderWidth = 6
      Caption = 'Nodes'
      object lAuxNodes: TLabel
        Left = 45
        Top = 251
        Width = 86
        Height = 13
        Alignment = taRightJustify
        Caption = 'Auxiliary nodes file'
        FocusControl = eAuxNode
      end
      object gOvr: TAdvGrid
        Left = 0
        Top = 0
        Width = 428
        Height = 241
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -12
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        Align = alTop
        ColCount = 3
        DefaultRowHeight = 18
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowMoving, goEditing, goThumbTracking, goDigitalRows]
        ParentFont = False
        TabOrder = 0
        CheckBoxes = False
        ColWidths = (
          31
          213
          243)
      end
      object eAuxNode: TEdit
        Left = 137
        Top = 247
        Width = 395
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object tsPOP3: TTabSheet
      Caption = 'POP3'
      ImageIndex = 8
      object gSMTP: TAdvGrid
        Left = 0
        Top = 0
        Width = 440
        Height = 268
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -12
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        Align = alClient
        ColCount = 4
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
        ParentFont = False
        TabOrder = 0
        CheckBoxes = False
        ColWidths = (
          64
          217
          125
          117)
      end
    end
    object tsSMTP: TTabSheet
      Caption = 'SMTP'
      ImageIndex = 9
      object gPOP3: TAdvGrid
        Left = 0
        Top = 0
        Width = 440
        Height = 268
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        Align = alClient
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
        TabOrder = 0
        CheckBoxes = False
        ColWidths = (
          210
          73
          73
          64
          143)
      end
    end
  end
end
