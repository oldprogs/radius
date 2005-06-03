object PollSetupForm: TPollSetupForm
  Left = 141
  Top = 127
  HelpContext = 1950
  BorderStyle = bsDialog
  BorderWidth = 6
  Caption = 'Polls Set-up'
  ClientHeight = 273
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 532
    Height = 233
    ActivePage = tsPeriodical
    Align = alTop
    HotTrack = True
    TabOrder = 0
    TabStop = False
    object tsPeriodical: TTabSheet
      BorderWidth = 6
      Caption = 'Periodical'
      object gPeriodical: TAdvGrid
        Left = 0
        Top = 0
        Width = 512
        Height = 193
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
          232
          226)
      end
    end
    object tsOptions: TTabSheet
      Caption = 'Options'
      object gbTry: TGroupBox
        Left = 12
        Top = 4
        Width = 237
        Height = 112
        Caption = 'Try counters'
        TabOrder = 0
        object lBusy: TLabel
          Left = 151
          Top = 20
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = '&Busy'
          FocusControl = sBusy
        end
        object lNoC: TLabel
          Left = 148
          Top = 52
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = '&No c.'
          FocusControl = sNoC
        end
        object lFail: TLabel
          Left = 158
          Top = 84
          Width = 16
          Height = 13
          Alignment = taRightJustify
          Caption = '&Fail'
          FocusControl = sFail
        end
        object sBusy: TxSpinEdit
          Left = 180
          Top = 16
          Width = 41
          Height = 22
          MaxLength = 3
          MaxValue = 99
          MinValue = 1
          TabOrder = 0
          Value = 7
        end
        object sNoC: TxSpinEdit
          Left = 180
          Top = 48
          Width = 41
          Height = 22
          MaxLength = 3
          MaxValue = 99
          MinValue = 1
          TabOrder = 1
          Value = 5
        end
        object sFail: TxSpinEdit
          Left = 180
          Top = 80
          Width = 41
          Height = 22
          MaxLength = 3
          MaxValue = 99
          MinValue = 1
          TabOrder = 2
          Value = 3
        end
      end
      object gbTO: TGroupBox
        Left = 268
        Top = 4
        Width = 237
        Height = 112
        BiDiMode = bdLeftToRight
        Caption = 'Time-outs'
        ParentBiDiMode = False
        TabOrder = 1
        object lRetry: TLabel
          Left = 94
          Top = 20
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = '&Retry seconds'
          FocusControl = sRetry
        end
        object lStandOff: TLabel
          Left = 80
          Top = 84
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = '&Stand-off minutes'
          FocusControl = sStandOff
        end
        object lCallMin: TLabel
          Left = 102
          Top = 52
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = '&Call seconds'
          FocusControl = sCallMin
        end
        object sStandOff: TxSpinEdit
          Left = 168
          Top = 80
          Width = 56
          Height = 22
          MaxLength = 5
          MaxValue = 2880
          MinValue = 1
          TabOrder = 1
          Value = 1
        end
        object sCallMin: TxSpinEdit
          Left = 168
          Top = 48
          Width = 56
          Height = 22
          MaxLength = 5
          MaxValue = 14400
          MinValue = 30
          TabOrder = 2
          Value = 30
        end
        object sRetry: TxSpinEdit
          Left = 168
          Top = 16
          Width = 56
          Height = 22
          MaxLength = 6
          MaxValue = 14400
          MinValue = 1
          TabOrder = 0
          Value = 10
        end
      end
      object cbTransmitHold: TCheckBox
        Left = 16
        Top = 168
        Width = 217
        Height = 17
        Caption = '&Transmit '#39'Hold'#39' on outgoing'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object cbPollOnDirect: TCheckBox
        Left = 16
        Top = 136
        Width = 217
        Height = 17
        Caption = 'Initiate poll on '#39'&Direct'#39
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object cbPollOnNormal: TCheckBox
        Left = 16
        Top = 152
        Width = 217
        Height = 17
        Caption = 'Initiate &poll on '#39'Normal'#39
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object rgRetryTimeoutType: TRadioGroup
        Left = 268
        Top = 120
        Width = 237
        Height = 73
        Caption = 'Retry time-out type'
        ItemIndex = 1
        Items.Strings = (
          'Fixed'
          'Floating'
          'Dynamic')
        TabOrder = 5
      end
    end
    object tsExternal: TTabSheet
      BorderWidth = 6
      Caption = 'External'
      object gExternal: TAdvGrid
        Left = 0
        Top = 0
        Width = 512
        Height = 193
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
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
          134
          140
          184)
      end
    end
    object tsAdditional: TTabSheet
      Caption = 'Additional'
      ImageIndex = 3
      object cbAskBeforeReject: TCheckBox
        Left = 26
        Top = 20
        Width = 449
        Height = 20
        Caption = 'Ask before reject'
        TabOrder = 0
      end
      object cbRejectNextTic: TCheckBox
        Left = 26
        Top = 69
        Width = 430
        Height = 20
        Caption = 'Reject next '#39'.tic'#39' after file reject'
        TabOrder = 1
      end
      object cbAskBeforeSkip: TCheckBox
        Left = 26
        Top = 44
        Width = 449
        Height = 20
        Caption = 'Ask before skip'
        TabOrder = 2
      end
      object cbSkipNextTic: TCheckBox
        Left = 26
        Top = 93
        Width = 430
        Height = 20
        Caption = 'Skip next '#39'.tic'#39' after file skip'
        TabOrder = 3
      end
      object cbUseSPACE: TCheckBox
        Left = 26
        Top = 132
        Width = 430
        Height = 17
        Caption = 'Use SPACE to flush time-out'
        TabOrder = 4
      end
    end
  end
  object bOK: TButton
    Left = 272
    Top = 243
    Width = 75
    Height = 23
    Caption = 'O&K'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object bCancel: TButton
    Left = 352
    Top = 243
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object bHelp: TButton
    Left = 432
    Top = 243
    Width = 75
    Height = 23
    Caption = 'Help'
    TabOrder = 3
    OnClick = bHelpClick
  end
end
