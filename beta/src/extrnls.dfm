object ExternalsForm: TExternalsForm
  Left = 203
  Top = 127
  HelpContext = 1880
  BorderStyle = bsDialog
  BorderWidth = 6
  Caption = 'Externals'
  ClientHeight = 310
  ClientWidth = 472
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 195
    Top = 250
    Width = 156
    Height = 13
    Alignment = taRightJustify
    Caption = 'Click here to test selected item ->'
  end
  object btRunNow: TButton
    Left = 368
    Top = 244
    Width = 75
    Height = 23
    Caption = 'Run now'
    TabOrder = 5
    OnClick = btRunNowClick
  end
  object bOK: TButton
    Left = 208
    Top = 281
    Width = 75
    Height = 23
    Caption = 'O&K'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object bCancel: TButton
    Left = 288
    Top = 281
    Width = 74
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object bHelp: TButton
    Left = 368
    Top = 281
    Width = 75
    Height = 23
    Caption = 'Help'
    TabOrder = 4
    OnClick = bHelpClick
  end
  object bImportPwd: TButton
    Left = 44
    Top = 281
    Width = 75
    Height = 23
    Caption = 'Import...'
    TabOrder = 1
    Visible = False
  end
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 472
    Height = 233
    ActivePage = tsPP
    HotTrack = True
    MultiLine = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TabStop = False
    object tsPP: TTabSheet
      Tag = 1
      Caption = 'Postprocessors'
      object gExt: TAdvGrid
        Left = 7
        Top = 7
        Width = 449
        Height = 194
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
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
        ColWidths = (
          31
          190
          196)
      end
    end
    object tsFlags: TTabSheet
      Tag = 2
      Caption = 'Flags'
      ImageIndex = 3
      object gFlags: TAdvGrid
        Left = 7
        Top = 7
        Width = 449
        Height = 194
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
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
        ColWidths = (
          31
          190
          196)
      end
    end
    object tsDrs: TTabSheet
      Tag = 3
      Caption = 'Doors'
      object gDrs: TAdvGrid
        Left = 7
        Top = 7
        Width = 449
        Height = 194
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
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
        ColWidths = (
          31
          88
          298)
      end
    end
    object tsCron: TTabSheet
      Tag = 4
      Caption = 'Cron'
      object gCrn: TAdvGrid
        Left = 7
        Top = 7
        Width = 449
        Height = 194
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
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
        ColWidths = (
          31
          190
          196)
      end
    end
    object tsExteranals: TTabSheet
      Tag = 5
      Caption = 'External Tools'
      ImageIndex = -1
      object gExternals: TAdvGrid
        Left = 7
        Top = 7
        Width = 449
        Height = 194
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
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
        ColWidths = (
          31
          190
          196)
      end
    end
    object tsHook: TTabSheet
      Tag = 6
      Caption = 'Hooks'
      object gHooks: TAdvGrid
        Left = 7
        Top = 7
        Width = 449
        Height = 193
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
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
        ColWidths = (
          31
          190
          196)
      end
    end
  end
end
