object NodeListCfgForm: TNodeListCfgForm
  Left = 378
  Top = 368
  Width = 505
  Height = 261
  HelpContext = 1010
  BorderIcons = [biSystemMenu, biMaximize]
  BorderWidth = 6
  Caption = 'Nodelist Configuration'
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
  DesignSize = (
    485
    215)
  PixelsPerInch = 96
  TextHeight = 13
  object bOK: TButton
    Left = 244
    Top = 185
    Width = 75
    Height = 23
    Anchors = [akRight, akBottom]
    Caption = 'O&K'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object bCancel: TButton
    Left = 324
    Top = 185
    Width = 75
    Height = 23
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object bHelp: TButton
    Left = 404
    Top = 185
    Width = 75
    Height = 23
    Anchors = [akRight, akBottom]
    Caption = 'Help'
    TabOrder = 3
    OnClick = bHelpClick
  end
  object pg: TPageControl
    Left = 0
    Top = 0
    Width = 485
    Height = 177
    ActivePage = Files
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object Files: TTabSheet
      Caption = 'Files'
      DesignSize = (
        477
        149)
      object PanelGrid1: TPanel
        Left = 8
        Top = 8
        Width = 460
        Height = 133
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        object gNL: TAdvGrid
          Left = 0
          Top = 0
          Width = 460
          Height = 133
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
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
            273
            136)
        end
      end
    end
    object Phones: TTabSheet
      Caption = #39'Phones'
      DesignSize = (
        477
        149)
      object Panel1: TPanel
        Left = 8
        Top = 8
        Width = 460
        Height = 133
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        object gPhn: TAdvGrid
          Left = 0
          Top = 0
          Width = 460
          Height = 133
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'MS Sans Serif'
          FixedFont.Style = []
          Align = alClient
          ColCount = 3
          DefaultColWidth = 100
          DefaultRowHeight = 18
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Fixedsys'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goThumbTracking, goDigitalRows]
          ParentFont = False
          TabOrder = 0
          CheckBoxes = False
          ColWidths = (
            31
            118
            211)
        end
      end
    end
  end
end
