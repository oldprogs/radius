object WebCfgForm: TWebCfgForm
  Left = 80
  Top = 471
  HelpContext = 1260
  BorderStyle = bsDialog
  BorderWidth = 6
  Caption = 'Web server configuration'
  ClientHeight = 314
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  DesignSize = (
    537
    314)
  PixelsPerInch = 96
  TextHeight = 13
  object tb: TPageControl
    Left = 0
    Top = 0
    Width = 438
    Height = 314
    ActivePage = lHTTP
    Align = alLeft
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    TabStop = False
    object lHTTP: TTabSheet
      BorderWidth = 6
      Caption = 'HTTP'
      object llCgiExecutable: TLabel
        Left = 0
        Top = 51
        Width = 73
        Height = 13
        Caption = 'CGI executable'
      end
      object llHttpPort: TLabel
        Left = 0
        Top = 16
        Width = 50
        Height = 13
        Caption = 'HTTP port'
      end
      object lCgiExecutable: TEdit
        Left = 88
        Top = 48
        Width = 289
        Height = 21
        TabOrder = 0
      end
      object bCGI: TButton
        Tag = 12
        Left = 392
        Top = 47
        Width = 24
        Height = 23
        Caption = '. . .'
        TabOrder = 1
        OnClick = bCGIClick
      end
      object lHttpPort: TEdit
        Left = 88
        Top = 16
        Width = 65
        Height = 21
        MaxLength = 5
        TabOrder = 2
      end
    end
    object lTemplates: TTabSheet
      BorderWidth = 6
      Caption = 'Templates'
    end
    object lNodes: TTabSheet
      BorderWidth = 6
      Caption = 'Nodes'
    end
  end
  object bOK: TButton
    Left = 457
    Top = 22
    Width = 75
    Height = 23
    Anchors = [akTop, akRight]
    Caption = 'OK'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
  end
  object bCancel: TButton
    Left = 457
    Top = 50
    Width = 75
    Height = 23
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
  end
  object bHelp: TButton
    Left = 457
    Top = 78
    Width = 75
    Height = 23
    Anchors = [akTop, akRight]
    Caption = 'Help'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object odCgiExecutable: TOpenDialog
    Left = 464
    Top = 280
  end
end
