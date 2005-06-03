object AtomEditorForm: TAtomEditorForm
  Left = 227
  Top = 156
  HelpContext = 1890
  BorderStyle = bsDialog
  BorderWidth = 6
  Caption = 'Edit Event Atom'
  ClientHeight = 362
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Bevel2: TBevel
    Left = 0
    Top = 0
    Width = 385
    Height = 78
    Shape = bsFrame
  end
  object llTyp: TLabel
    Left = 15
    Top = 9
    Width = 32
    Height = 16
    Caption = '&Type'
  end
  object cb: TComboBox
    Left = 11
    Top = 28
    Width = 362
    Height = 24
    Style = csDropDownList
    DropDownCount = 20
    ItemHeight = 16
    TabOrder = 0
    OnChange = cbChange
  end
  object bOK: TButton
    Left = 394
    Top = 0
    Width = 92
    Height = 28
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object bCancel: TButton
    Left = 394
    Top = 34
    Width = 92
    Height = 29
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object bHelp: TButton
    Left = 394
    Top = 69
    Width = 92
    Height = 28
    Caption = 'Help'
    TabOrder = 4
    OnClick = bHelpClick
  end
  object nb: TNotebook
    Left = 0
    Top = 75
    Width = 385
    Height = 271
    PageIndex = 7
    TabOrder = 1
    object TPage
      Left = 0
      Top = 0
      Caption = '0'
    end
    object TPage
      Left = 0
      Top = 0
      Caption = '1'
      object bvl1: TBevel
        Left = 0
        Top = 0
        Width = 385
        Height = 87
        Align = alTop
        Shape = bsFrame
      end
      object lString: TLabel
        Left = 15
        Top = 10
        Width = 3
        Height = 16
        FocusControl = iString
      end
      object iString: TEdit
        Left = 11
        Top = 30
        Width = 362
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = '2'
      object bvl2: TBevel
        Left = 0
        Top = 0
        Width = 385
        Height = 87
        Align = alTop
        Shape = bsFrame
      end
      object lCombo: TLabel
        Left = 15
        Top = 10
        Width = 3
        Height = 16
        FocusControl = cbCombo
      end
      object cbCombo: TComboBox
        Left = 11
        Top = 30
        Width = 362
        Height = 24
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 0
        OnClick = cbComboClick
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = '3'
      object bvl3: TBevel
        Left = 0
        Top = 0
        Width = 385
        Height = 65
        Align = alTop
        Shape = bsFrame
      end
      object lSpin: TLabel
        Left = 103
        Top = 23
        Width = 3
        Height = 16
        FocusControl = sSpin
      end
      object sSpin: TxSpinEdit
        Left = 11
        Top = 18
        Width = 84
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
        OnChange = sSpinChange
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = '4'
      object bvl4: TBevel
        Left = 0
        Top = 0
        Width = 385
        Height = 53
        Align = alTop
        Shape = bsFrame
      end
      object cbCheckBox: TCheckBox
        Left = 14
        Top = 16
        Width = 361
        Height = 21
        TabOrder = 0
        OnClick = cbCheckBoxClick
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = '5'
      object bvl5: TBevel
        Left = 0
        Top = 0
        Width = 385
        Height = 139
        Align = alTop
        Shape = bsFrame
      end
      object lDstrA: TLabel
        Left = 15
        Top = 10
        Width = 3
        Height = 16
        FocusControl = iString
      end
      object lDstrB: TLabel
        Left = 15
        Top = 69
        Width = 3
        Height = 16
        FocusControl = iString
      end
      object iDstrA: TEdit
        Left = 11
        Top = 30
        Width = 362
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object iDstrB: TEdit
        Left = 11
        Top = 89
        Width = 362
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = '6'
      object bvl6: TBevel
        Left = 0
        Top = 0
        Width = 385
        Height = 257
        Align = alTop
        Shape = bsFrame
      end
      object MemoPageControl: TPageControl
        Left = 0
        Top = 2
        Width = 385
        Height = 255
        ActivePage = tsMemoA
        TabOrder = 0
        object tsMemoA: TTabSheet
          Caption = 'tsMemoA'
          object MemoA: TMemo
            Left = 0
            Top = 0
            Width = 375
            Height = 220
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Fixedsys'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            WordWrap = False
          end
        end
        object tsMemoB: TTabSheet
          Caption = 'tsMemoB'
          ImageIndex = 1
          object MemoB: TMemo
            Left = 0
            Top = 0
            Width = 375
            Height = 220
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Fixedsys'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            WordWrap = False
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = '7'
      object bvl7: TBevel
        Left = 0
        Top = 0
        Width = 385
        Height = 261
        Align = alTop
        Shape = bsFrame
      end
      object lGrid: TLabel
        Left = 15
        Top = 10
        Width = 3
        Height = 16
        FocusControl = eGrid
      end
      object StringGrid: TAdvGrid
        Left = 0
        Top = 79
        Width = 385
        Height = 182
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        DefaultRowHeight = 22
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Fixedsys'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowMoving, goEditing, goThumbTracking, goDigitalRows]
        ParentFont = False
        TabOrder = 0
        OnRowInsert = StringGridRowInsert
        OnRowDelete = StringGridRowDelete
        ColWidths = (
          30
          84
          86
          80
          77)
      end
      object eGrid: TEdit
        Left = 11
        Top = 30
        Width = 362
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = '8'
    end
    object TPage
      Left = 0
      Top = 0
      Caption = '9'
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'A'
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'B'
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'C'
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'D'
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'E'
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'F'
    end
  end
end
