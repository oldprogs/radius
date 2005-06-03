object EventsForm: TEventsForm
  Left = 319
  Top = 244
  HelpContext = 1900
  BorderStyle = bsDialog
  Caption = 'Events Configuration'
  ClientHeight = 318
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object lv: TListView
    Left = 7
    Top = 7
    Width = 400
    Height = 251
    Columns = <
      item
        Caption = 'Name'
        Width = 148
      end
      item
        Caption = 'Cron'
        Width = 123
      end
      item
        Caption = 'Duration'
        Width = 68
      end
      item
        Caption = 'Atoms'
        Width = 57
      end>
    ColumnClick = False
    ReadOnly = True
    RowSelect = True
    PopupMenu = PopupMenu
    TabOrder = 0
    ViewStyle = vsReport
    OnChange = lvChange
    OnClick = lvClick
    OnDblClick = bEditClick
  end
  object bNew: TButton
    Left = 418
    Top = 10
    Width = 79
    Height = 28
    Caption = '&New'
    TabOrder = 1
    OnClick = bNewClick
  end
  object bEdit: TButton
    Left = 418
    Top = 44
    Width = 79
    Height = 29
    Caption = '&Edit'
    TabOrder = 2
    OnClick = bEditClick
  end
  object bCopy: TButton
    Left = 418
    Top = 79
    Width = 79
    Height = 28
    Caption = '&Copy'
    TabOrder = 3
    OnClick = bCopyClick
  end
  object bDelete: TButton
    Left = 418
    Top = 113
    Width = 79
    Height = 29
    Caption = 'Dele&te'
    TabOrder = 4
    OnClick = bDeleteClick
  end
  object bOK: TButton
    Left = 108
    Top = 268
    Width = 89
    Height = 29
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 5
  end
  object bCancel: TButton
    Left = 207
    Top = 268
    Width = 88
    Height = 29
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 6
  end
  object bHelp: TButton
    Left = 305
    Top = 268
    Width = 89
    Height = 29
    Caption = 'Help'
    TabOrder = 7
    OnClick = bHelpClick
  end
  object PopupMenu: TPopupMenu
    Left = 354
    Top = 176
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
      Caption = 'Dele&te'
      ShortCut = 16452
      OnClick = bDeleteClick
    end
    object mPopup: TMenuItem
      Caption = 'Popup'
      ShortCut = 32889
      Visible = False
    end
  end
end
