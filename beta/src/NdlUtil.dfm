object NodelistCompiler: TNodelistCompiler
  Left = 249
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Compiling The Nodelist'
  ClientHeight = 171
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object llStatus: TLabel
    Left = 112
    Top = 19
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Status:'
  end
  object lStatus: TLabel
    Left = 152
    Top = 19
    Width = 217
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ShowAccelChar = False
  end
  object llNodes: TLabel
    Left = 66
    Top = 89
    Width = 79
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nodes compiled:'
  end
  object lNodes: TLabel
    Left = 152
    Top = 89
    Width = 145
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object llNets: TLabel
    Left = 75
    Top = 65
    Width = 70
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nets compiled:'
  end
  object lNets: TLabel
    Left = 152
    Top = 65
    Width = 145
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object llCurFile: TLabel
    Left = 92
    Top = 42
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = 'Current file:'
  end
  object lFile: TLabel
    Left = 152
    Top = 42
    Width = 217
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lPoints: TLabel
    Left = 152
    Top = 113
    Width = 145
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object llPoints: TLabel
    Left = 68
    Top = 113
    Width = 77
    Height = 13
    Alignment = taRightJustify
    Caption = 'Points compiled:'
  end
  object bStop: TButton
    Left = 155
    Top = 138
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Stop'
    ModalResult = 2
    TabOrder = 0
  end
end
