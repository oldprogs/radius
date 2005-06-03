object MainConfigForm: TMainConfigForm
  Left = 246
  Top = 83
  HelpContext = 1220
  BorderStyle = bsDialog
  BorderWidth = 6
  Caption = 'Dial-up Configuration'
  ClientHeight = 353
  ClientWidth = 654
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
  PixelsPerInch = 120
  TextHeight = 16
  object pg: TPageControl
    Left = 0
    Top = 0
    Width = 538
    Height = 353
    ActivePage = tsLines
    Align = alLeft
    TabOrder = 0
    OnChange = pgChange
    object tsLines: TTabSheet
      BorderWidth = 6
      Caption = 'Lines'
      object lLines: TListView
        Left = 0
        Top = 0
        Width = 518
        Height = 267
        Align = alTop
        Columns = <
          item
            Caption = 'Line name'
            Width = 120
          end
          item
            Caption = 'Station template'
            Width = 120
          end
          item
            Caption = 'Port'
            Width = 200
          end
          item
            Caption = 'Modem'
            Width = 65
          end>
        ColumnClick = False
        ReadOnly = True
        RowSelect = True
        PopupMenu = PopupMenu
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = lChange
        OnClick = lClick
        OnDblClick = bEditClick
      end
    end
    object tsStation: TTabSheet
      Tag = 1
      BorderWidth = 6
      Caption = 'Station'
      object lStation: TListView
        Left = 0
        Top = 0
        Width = 518
        Height = 267
        Align = alTop
        Columns = <
          item
            Caption = 'Template name'
            Width = 120
          end
          item
            Caption = 'Station name'
            Width = 120
          end
          item
            Caption = 'Address list'
            Width = 260
          end>
        ColumnClick = False
        ReadOnly = True
        RowSelect = True
        PopupMenu = PopupMenu
        SmallImages = Img
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = lChange
        OnClick = lClick
        OnDblClick = bEditClick
      end
    end
    object tsPorts: TTabSheet
      Tag = 2
      BorderWidth = 6
      Caption = 'Ports'
      object lPorts: TListView
        Left = 0
        Top = 0
        Width = 518
        Height = 267
        Align = alTop
        Columns = <
          item
            Caption = 'Com port or TAPI device name'
            Width = 250
          end
          item
            Caption = 'BPS'
            Width = 90
          end
          item
            Caption = 'Flow control'
            Width = 90
          end
          item
            Caption = 'Line bits'
            Width = 71
          end>
        ColumnClick = False
        ReadOnly = True
        RowSelect = True
        PopupMenu = PopupMenu
        SmallImages = Img
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = lChange
        OnClick = lClick
        OnDblClick = bEditClick
      end
    end
    object tsModems: TTabSheet
      Tag = 3
      BorderWidth = 6
      Caption = 'Modems'
      object lModems: TListView
        Left = 0
        Top = 0
        Width = 518
        Height = 267
        Align = alTop
        Columns = <
          item
            Caption = 'Modem name'
            Width = 480
          end>
        ColumnClick = False
        ReadOnly = True
        RowSelect = True
        PopupMenu = PopupMenu
        SmallImages = Img
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = lChange
        OnClick = lClick
        OnDblClick = bEditClick
      end
    end
    object tsRestrictions: TTabSheet
      Tag = 4
      BorderWidth = 6
      Caption = 'Restrictions'
      object lRestrictions: TListView
        Left = 0
        Top = 0
        Width = 518
        Height = 267
        Align = alTop
        Columns = <
          item
            Caption = 'Scheme name'
            Width = 148
          end
          item
            Caption = 'Required'
            Width = 185
          end
          item
            Caption = 'Forbidden'
            Width = 148
          end>
        ColumnClick = False
        ReadOnly = True
        RowSelect = True
        PopupMenu = PopupMenu
        SmallImages = Img
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = lChange
        OnClick = lClick
        OnDblClick = bEditClick
      end
    end
    object lNodes: TTabSheet
      BorderWidth = 6
      Caption = 'Nodes'
      object lAuxNodes: TLabel
        Left = 50
        Top = 279
        Width = 111
        Height = 16
        Alignment = taRightJustify
        Caption = 'Auxiliary nodes file'
        FocusControl = eAuxNode
      end
      object gOvr: TAdvGrid
        Left = 0
        Top = 0
        Width = 518
        Height = 267
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        Align = alTop
        ColCount = 3
        DefaultRowHeight = 22
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowMoving, goEditing, goThumbTracking, goDigitalRows]
        ParentFont = False
        TabOrder = 0
        ColWidths = (
          31
          230
          236)
      end
      object eAuxNode: TEdit
        Left = 169
        Top = 274
        Width = 344
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object bNew: TButton
    Left = 21
    Top = 310
    Width = 81
    Height = 28
    Caption = '&New'
    TabOrder = 7
    OnClick = bNewClick
  end
  object bEdit: TButton
    Left = 105
    Top = 310
    Width = 81
    Height = 28
    Caption = '&Edit'
    TabOrder = 8
    OnClick = bEditClick
  end
  object bCopy: TButton
    Left = 188
    Top = 310
    Width = 82
    Height = 28
    Caption = '&Copy'
    TabOrder = 9
    OnClick = bCopyClick
  end
  object bDelete: TButton
    Left = 272
    Top = 310
    Width = 81
    Height = 28
    Caption = '&Delete'
    TabOrder = 10
    OnClick = bDeleteClick
  end
  object bUndelete: TButton
    Left = 356
    Top = 310
    Width = 81
    Height = 28
    Caption = '&Undelete'
    TabOrder = 11
    OnClick = bUndeleteClick
  end
  object bDefault: TButton
    Left = 439
    Top = 310
    Width = 82
    Height = 28
    Caption = 'De&fault'
    TabOrder = 12
    OnClick = bDefaultClick
  end
  object bOK: TButton
    Left = 549
    Top = 25
    Width = 92
    Height = 28
    Caption = 'O&K'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object bCancel: TButton
    Left = 549
    Top = 59
    Width = 92
    Height = 28
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object bHelp: TButton
    Left = 549
    Top = 94
    Width = 92
    Height = 28
    HelpContext = 1220
    Caption = 'Help'
    TabOrder = 3
    OnClick = bHelpClick
  end
  object bImport: TButton
    Left = 549
    Top = 192
    Width = 92
    Height = 28
    Caption = '&Import...'
    TabOrder = 5
    Visible = False
    OnClick = bImportClick
  end
  object bSort: TButton
    Left = 549
    Top = 226
    Width = 92
    Height = 29
    Caption = '&Sort'
    TabOrder = 6
    Visible = False
    OnClick = bSortClick
  end
  object bEditNode: TButton
    Left = 549
    Top = 158
    Width = 92
    Height = 28
    Caption = '&Edit'
    TabOrder = 4
    OnClick = bEditNodeClick
  end
  object Img: TImageList
    Left = 200
    Top = 100
  end
  object PopupMenu: TPopupMenu
    Left = 108
    Top = 88
    object ppNew: TMenuItem
      Caption = '&New'
      ShortCut = 16462
      OnClick = bNewClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ppEdit: TMenuItem
      Caption = '&Edit'
      ShortCut = 16453
      OnClick = bEditClick
    end
    object ppCopy: TMenuItem
      Caption = '&Copy'
      ShortCut = 16451
      OnClick = bCopyClick
    end
    object ppDelete: TMenuItem
      Caption = '&Delete'
      ShortCut = 16452
      OnClick = bDeleteClick
    end
    object ppUndelete: TMenuItem
      Caption = '&Undelete'
      ShortCut = 16469
      OnClick = bUndeleteClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ppDefault: TMenuItem
      Caption = 'De&fault'
      ShortCut = 16454
      OnClick = bDefaultClick
    end
    object mPopup: TMenuItem
      Caption = 'Popup'
      ShortCut = 32889
      Visible = False
      OnClick = mPopupClick
    end
  end
end
