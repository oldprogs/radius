unit Setup;

{$I DEFINE.INC}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ComCtrls, Buttons,
  mGrids, MClasses, ExtCtrls, xBase;

type
  TSoundRec = record
    ed: TEdit;
    cb: TCheckBox;
  end;

  TSetupForm = class(TForm)
    tvPages: TTreeView;
    lblPageTitle: TLabel;
    bvFrame: TBevel;
    imgHeader: TImage;
    btnHelp: TButton;
    btnApply: TButton;
    btnCancel: TButton;
    btnOK: TButton;
    fdLogger: TFontDialog;
    odChatBell: TOpenDialog;
    fdForms: TFontDialog;
    nbPages: TNotebook;
    sbMainPrev: TSpeedButton;
    sbMainNext: TSpeedButton;
    Bevel20: TBevel;
    MainPan1: TPanel;
    Bevel6: TBevel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    lAddressOptions: TLabel;
    sbMainAKABrowse: TSpeedButton;
    sbSynchClockBrowse: TSpeedButton;
    lSynchClock: TLabel;
    lMainAKA: TLabel;
    lSessionOptions: TLabel;
    lSynchShift: TLabel;
    lCPSMinBytes: TLabel;
    lCPSMinSecs: TLabel;
    lPeriods: TLabel;
    lMsgsAutoClose: TLabel;
    lOutbRescan: TLabel;
    lMaxBWZAge: TLabel;
    lMaxBsyAge: TLabel;
    lMaxUDLAge: TLabel;
    eMainAKA: TEdit;
    eSynchClock: TEdit;
    seSynchShift: TxSpinEdit;
    seCPSMinBytes: TxSpinEdit;
    seCPSMinSecs: TxSpinEdit;
    seMaxBsyAge: TxSpinEdit;
    seMaxBWZAge: TxSpinEdit;
    seOutbRescan: TxSpinEdit;
    seMsgsAutoClose: TxSpinEdit;
    seMaxUDLAge: TxSpinEdit;
    MainPan2: TPanel;
    Bevel1: TBevel;
    lOtherOptions: TLabel;
    lCloseBtnActn: TLabel;
    lMinFreeSpace: TLabel;
    Bevel18: TBevel;
    lOutboundOptions: TLabel;
    cbSessionOK: TCheckBox;
    cbCreateSessionFail: TCheckBox;
    cbDynamicOutbound: TCheckBox;
    cbCloseBtnAction: TComboBox;
    seMinFreeSpace: TxSpinEdit;
    cbD5Out: TCheckBox;
    cbUseNodelistData: TCheckBox;
    cbPlaySounds: TCheckBox;
    cbCompileNodelist: TCheckBox;
    Bevel7: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    lSystemOptions: TLabel;
    lMutexName: TLabel;
    lActivateEventName: TLabel;
    lEMSICR: TLabel;
    lWinSockVersion: TLabel;
    lWatcherEventName: TLabel;
    lPriority: TLabel;
    eMutexName: TEdit;
    eActivateEventName: TEdit;
    eEMSICR: TEdit;
    cbSimpleBSY: TCheckBox;
    cbCloseBWZ: TCheckBox;
    cbIncrementArcmail: TCheckBox;
    cbForceFAXPage: TCheckBox;
    cbIgnoreEndSession: TCheckBox;
    cbWinsockVersion: TComboBox;
    cbDisableWinsockTraps: TCheckBox;
    eWatcherEventName: TEdit;
    cbIgnoreBWZSize: TCheckBox;
    cbPriority: TComboBox;
    Bevel3: TBevel;
    Bevel13: TBevel;
    lLanguage: TLabel;
    lHelpLanguage: TLabel;
    lInterfaceLanguage: TLabel;
    lGrid: TLabel;
    Bevel19: TBevel;
    lFonts: TLabel;
    lLoggerFont: TLabel;
    Bevel24: TBevel;
    lOtherInterface: TLabel;
    lFormsFont: TLabel;
    cbHelpLanguage: TComboBox;
    cbInterfaceLanguage: TComboBox;
    cbGridBWZ: TCheckBox;
    cbGridPV: TCheckBox;
    cbUseHTMLHelp: TCheckBox;
    bLoggerFont: TButton;
    cbShowIcons: TCheckBox;
    Bevel15: TBevel;
    sbDefGauge: TSpeedButton;
    sbSysGauge: TSpeedButton;
    sbDefLogger: TSpeedButton;
    sbSysLogger: TSpeedButton;
    sbDefBadWazoo: TSpeedButton;
    sbSysBadWazoo: TSpeedButton;
    sbDefMail7: TSpeedButton;
    sbSysMail7: TSpeedButton;
    sbDefMail14: TSpeedButton;
    sbSysMail14: TSpeedButton;
    sbDefMail28: TSpeedButton;
    sbSysMail28: TSpeedButton;
    sbSysMail21: TSpeedButton;
    sbDefMail21: TSpeedButton;
    lGaugeFore: TLabel;
    lColors: TLabel;
    lGaugeBack: TLabel;
    lLoggerFore: TLabel;
    lLoggerBack: TLabel;
    lBadWazooFore: TLabel;
    lBadWazooBack: TLabel;
    lMail7Fore: TLabel;
    lMail7Back: TLabel;
    lMail14Back: TLabel;
    lMail14Fore: TLabel;
    lMail21Back: TLabel;
    lMail21Fore: TLabel;
    lMail28Back: TLabel;
    lMail28Fore: TLabel;
    cbGaugeFore: TColorBox;
    cbGaugeBack: TColorBox;
    cbLoggerFore: TColorBox;
    cbLoggerBack: TColorBox;
    cbBadWazooFore: TColorBox;
    cbBadWazooBack: TColorBox;
    cbMail7Fore: TColorBox;
    cbMail7Back: TColorBox;
    cbMail14Fore: TColorBox;
    cbMail14Back: TColorBox;
    cbMail21Fore: TColorBox;
    cbMail21Back: TColorBox;
    cbMail28Fore: TColorBox;
    cbMail28Back: TColorBox;
    Bevel16: TBevel;
    lTrayOptions: TLabel;
    Bevel14: TBevel;
    lBalloon: TLabel;
    lPopup: TLabel;
    cbAlwaysInTray: TCheckBox;
    cbBalloon: TCheckBox;
    cbBalloonMin: TCheckBox;
    cbStealth: TCheckBox;
    hkPopup: THotKey;
    Bevel9: TBevel;
    lTariffOptions: TLabel;
    Bevel23: TBevel;
    lLogFNames: TLabel;
    laccess_log: TLabel;
    lagent_log: TLabel;
    lbinary_log: TLabel;
    lpolls_log: TLabel;
    lcronapps_log: TLabel;
    ltariff_log: TLabel;
    lipdaemon_log: TLabel;
    lras_log: TLabel;
    cbTariff: TCheckBox;
    cbODBCLogging: TCheckBox;
    cbLogThreadTimes: TCheckBox;
    eaccess_log: TEdit;
    eagnt_log: TEdit;
    ebinary_log: TEdit;
    epolls_log: TEdit;
    ecronapps_log: TEdit;
    etariff_log: TEdit;
    eipdaemon_log: TEdit;
    eras_log: TEdit;
    Bevel8: TBevel;
    lRCC: TLabel;
    lRCCPwd: TLabel;
    cbEnableRCC: TCheckBox;
    eRCCPwd: TEdit;
    cbCryptRCCPwd: TCheckBox;
    Bevel5: TBevel;
    lRasOptions: TLabel;
    lEntryList: TLabel;
    cbEntryList: TComboBox;
    btnReloadRASEntries: TButton;
    cbRASEnabled: TCheckBox;
    lTxWindow: TLabel;
    Bevel21: TBevel;
    lHydra: TLabel;
    Bevel22: TBevel;
    lBinkP: TLabel;
    lRxWindow: TLabel;
    Bevel17: TBevel;
    lChat: TLabel;
    cbChatBell: TLabel;
    Bevel26: TBevel;
    lOther: TLabel;
    seTxWindow: TxSpinEdit;
    seRxWindow: TxSpinEdit;
    cbShortName: TCheckBox;
    cbOEMCharset: TCheckBox;
    cbDebug: TCheckBox;
    cbRequestCrypt: TCheckBox;
    cbIBNRequestList: TCheckBox;
    cbHydRequestList: TCheckBox;
    cbChatEnabled: TCheckBox;
    eChatBell: TEdit;
    btnChatBell: TButton;
    cbIgnoreCD: TCheckBox;
    lDynamicRoutingTable: TLabel;
    gNetmail: TAdvGrid;
    cbDynamicRouting: TCheckBox;
    Bevel25: TBevel;
    Label1: TLabel;
    cbTariffPerMinute: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edRing: TEdit;
    edDial: TEdit;
    edConnect: TEdit;
    edSession: TEdit;
    edAborted: TEdit;
    edNewLine: TEdit;
    edEndLine: TEdit;
    edRASDial: TEdit;
    edRASConnect: TEdit;
    edRASFinish: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    edIncoming: TEdit;
    Button11: TButton;
    edBBS: TEdit;
    edTrap: TEdit;
    Button12: TButton;
    Button13: TButton;
    cbRing: TCheckBox;
    cbDial: TCheckBox;
    cbConnect: TCheckBox;
    cbSession: TCheckBox;
    cbAborted: TCheckBox;
    cbNewLine: TCheckBox;
    cbEndLine: TCheckBox;
    cbRASDial: TCheckBox;
    cbRASConnect: TCheckBox;
    cbRASFinish: TCheckBox;
    cbIncoming: TCheckBox;
    cbBBS: TCheckBox;
    cbTrap: TCheckBox;
    Bevel10: TBevel;
    lHome: TLabel;
    lPathTo: TLabel;
    lConfigs: TLabel;
    lFlags: TLabel;
    lTempInbound: TLabel;
    lSecureInbound: TLabel;
    lInbound: TLabel;
    lOutbound: TLabel;
    lLogs: TLabel;
    eHome: TEdit;
    btnHome: TButton;
    btnConfigs: TButton;
    eConfigs: TEdit;
    btnFileFlags: TButton;
    eFlags: TEdit;
    btnTempInbound: TButton;
    eTempInbound: TEdit;
    btnSecureInbound: TButton;
    eSecureInbound: TEdit;
    btnInbound: TButton;
    eInbound: TEdit;
    btnOutbound: TButton;
    eOutbound: TEdit;
    eLogs: TEdit;
    btnLogs: TButton;
    bFormsFont: TButton;
    TmrCRC: TTimer;
    cbLamps: TCheckBox;
    eUserName: TEdit;
    lUserName: TLabel;
    Label15: TLabel;
    ePassword: TEdit;
    cbRasDialConn: TCheckBox;
    cbRasDialDisconn: TCheckBox;
    procedure tvPagesChange(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure btnReloadRASEntriesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbMainAKABrowseClick(Sender: TObject);
    procedure sbSynchClockBrowseClick(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure sbDefGaugeClick(Sender: TObject);
    procedure sbSysGaugeClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure eHomeChange(Sender: TObject);
    procedure eConfigsChange(Sender: TObject);
    procedure sbMainNextClick(Sender: TObject);
    procedure sbMainPrevClick(Sender: TObject);
    procedure bLoggerFontClick(Sender: TObject);
    procedure btnChatBellClick(Sender: TObject);
    procedure FillNetmailGrid;
    procedure Button1Click(Sender: TObject);
    procedure cbStealthClick(Sender: TObject);
    procedure hkPopupChange(Sender: TObject);
    procedure cbPriorityChange(Sender: TObject);
    procedure bFormsFontClick(Sender: TObject);
    procedure TmrCRCTimer(Sender: TObject);
  private
    { Private declarations }
    Edits: array[0..12] of TSoundRec;
    wdCRC: DWORD;
  public
    procedure SetData(i: integer);
    procedure GetData;
  end ;

  function SetPrefEx(const Remote: boolean): Boolean;

var
  SetupForm: TSetupForm;

implementation

uses LngTools, RadIni, xFido, PathNmEx, IniFiles,
     {$IFDEF RASDIAL} RasThrd, {$ENDIF} AdrIBox, Recs, ShellApi
     {$IFDEF EXTREME}, RCCUnit {$ENDIF}, MlrThr, MlrForm;

var
  FidoAddr: TFidoAddress;
  FidoAddr2: TFidoAddress;
  i: integer;
  HomeChanged : boolean = false;
  ConfigsChanged : boolean = false;

{$R *.DFM}

function SetPrefEx(const Remote: boolean): Boolean;
begin
  SetupForm := TSetupForm.Create(Application);
{$IFNDEF WS}
  SetupForm.lipdaemon_log.Free;
  SetupForm.eipdaemon_log.Free;
{$ENDIF}
{$IFNDEF RASDIAL}
  SetupForm.lras_log.Free;
  SetupForm.eras_log.Free;
{$ENDIF}
  i := GetRegInterfaceLng;
  SetupForm.SetData(i);
  {$IFDEF EXTREME}
  if Remote then begin
     TreatForm(SetupForm);
  end;
  {$ENDIF}
  SetupForm.TmrCRC.Enabled := True;
  Result := SetupForm.ShowModal = mrOK;
  SetupForm.TmrCRC.Enabled := False;
  if result and SetupForm.btnApply.Enabled then
  begin
    SetupForm.GetData;
    IniFile.StoreCFG;
  end;
  FreeObject(SetupForm);
end;

procedure TSetupForm.GetData;
var
  ResLngBase: integer;
   s: string;
  _i: integer;
begin
//Main tab
  IniFile.MainAddr := FidoAddr;
  IniFile.Synch := FidoAddr2;
  IniFile.SessionOKFlag := cbSessionOK.Checked;
  IniFile.SessionAbortedFlag := cbCreateSessionFail.Checked;
  IniFile.NoHTML := not cbUseHTMLHelp.Checked;
  Inifile.DynamicOutbound := cbDynamicOutbound.Checked;
  Inifile.DynamicRouting := cbDynamicRouting.Checked;
  IniFile.TimeShift := seSynchShift.Value;
  IniFile.CPS_MinBytes := seCPSMinBytes.Value;
  IniFile.CPS_MinSecs := seCPSMinSecs.Value;
  IniFile.MaxBSYAge := seMaxBSYAge.Value;
  IniFile.MaxBWZAge := seMaxBWZAge.Value;
  IniFile.MaxUDLAge := seMaxUDLAge.Value;
  IniFile.WaitSecRescan := seOutbRescan.Value;
  IniFile.WinDlgTWait := seMsgsAutoClose.Value;
  IniFile.FreeSpaceLmt := seMinFreeSpace.Value;
  IniFile.OnClose := cbCloseBtnAction.ItemIndex;
  IniFile.ChatEnabled := cbChatEnabled.Checked;
  IniFile.IgnoreCD := cbIgnoreCD.Checked;
  IniFile.TrayLamps := cbLamps.Checked;
  IniFile.ChatBell := eChatBell.Text;
  IniFile.D5Out := cbD5Out.Checked;
  IniFile.UseNodelistData := cbUseNodelistData.Checked;
  IniFile.AutoNodelist := cbCompileNodelist.Checked;
  IniFile.playsounds := cbPlaySounds.Checked;
//Main end

//System tab
  IniFile.IgnoreEndSession := cbIgnoreEndSession.Checked;
  IniFile.IgnoreBWZSize := cbIgnoreBWZSize.Checked;
  IniFile.IncrementArcmail := cbIncrementArcmail.Checked;
  IniFile.DisableWinsockTraps := cbDisableWinsockTraps.Checked;
  IniFile.SimpleBSY := cbSimpleBSY.Checked;
  IniFile.CloseBWZFile := cbCloseBWZ.Checked;
  IniFile.ForceAddFaxPage := cbForceFaxPage.Checked;

  with TIniFile.Create(IniFName) do
  try
    WriteString('system', 'EMSI_CR', eEMSICR.Text);
    WriteString('system', 'MutexName', eMutexName.Text);
    WriteString('system', 'ActivateEventName', eActivateEventName.Text);
    WriteString('system', 'WatcherEventName', eWatcherEventName.Text);
    WriteInteger('system', 'WinSockVersion', cbWinSockVersion.ItemIndex);
    //logs tab
    WriteBool('system','LogThreadTimes', cbLogThreadTimes.Checked);
    //logs end;
    for _i := 0 to 12 do
    begin
      WriteString('Sounds', copy(Edits[_i].ed.Name, 3, 10), Edits[_i].ed.Text);
      WriteBool('Sounds', 'c_' + copy(Edits[_i].ed.Name, 3, 10), Edits[_i].cb.Checked);
    end;
  finally
    free;
  end;
//System end

{$IFDEF RASDIAL}
//RAS tab
  IniFile.iEntryName := cbEntryList.Text;
  IniFile.iUserName := eUserName.Text;
  IniFile.iPassword := ePassword.Text;
  IniFile.rasConnFlag := cbRasDialConn.Checked;
  IniFile.rasDisconnFlag := cbRasDialDisconn.Checked;
  if (IniFile.RASEnabled <> cbRasEnabled.Checked) then
  begin
    IniFile.RASEnabled := cbRasEnabled.Checked;
    if IniFile.RASEnabled then
    begin
      RasThrd.StartRas;
    end else
    begin
      RasThrd.FinishRas;
    end;
  end;
//RAS end
{$ENDIF}

//Tray tab
  IniFile.AlwaysInTray := cbAlwaysInTray.Checked;
  IniFile.Stealth := cbStealth.Checked;
  IniFile.PopupKey := hkPopup.HotKey;
  if IniFile.Stealth then SetHotKey;
  IniFile.ShowBalloon := cbBalloon.Checked;
  IniFile.ShowBalloonMin := cbBalloonMin.Checked;
//Tray end

//logs tab
  IniFile.ODBCLogging := cbODBCLogging.Checked;
  IniFile.DontLogTariff := not cbTariff.Checked;
  IniFile.accessFName := eaccess_log.Text;
  IniFile.agentFName := eagnt_log.Text;
  IniFile.StatxFName := ebinary_log.Text;
  IniFile.Polls_log := epolls_log.Text;
  IniFile.Cronapps_log := ecronapps_log.Text;
  IniFile.tariff_log := etariff_log.Text;
{$IFDEF WS}
  IniFile.IPDaemon_log := eipdaemon_log.Text;
{$ENDIF}
{$IFDEF RASDIAL}
  IniFile.ras_log := eras_log.Text;
{$ENDIF}
//logs end;

//Remote tab
  IniFile.Remote_Enabled := cbEnableRCC.Checked;
  IniFile.Remote_Password :=  eRCCPwd.Text;
  IniFile.Remote_EncPwd := cbCryptRCCPwd.Checked;
//Remote end

//Interface tab
  IniFile.lang := cbInterfaceLanguage.ItemIndex;
//  IniFile.HelpLang:=LangNames[TLangName(cbHelpLanguage.ItemIndex)];
  case cbHelpLanguage.ItemIndex of
    0: begin
         Application.HelpFile := GetHelpFile(HomeDir, LangNames[lnEnglish]);
         HelpLanguageId := HelpLanguageEnglish;
         SetRegHelpLng(LangNames[lnEnglish]);
       end;
    1: begin
         Application.HelpFile := GetHelpFile(HomeDir, LangNames[lnRussian]);
         HelpLanguageId := HelpLanguageRussian;
         SetRegHelpLng(LangNames[lnRussian]);
       end;
  end;{of case}

  IniFile.GridInBWZ := cbGridBWZ.Checked;
  IniFile.GridInPV := cbGridPV.Checked;
  IniFile.FormsFontHeight := fdForms.Font.Height;
  IniFile.FormsFontName := fdForms.Font.Name;
  IniFile.FormsFontAttr[1] := inttostr(integer(fsBold in fdForms.Font.Style))[1];
  IniFile.FormsFontAttr[2] := inttostr(integer(fsItalic in fdForms.Font.Style))[1];
  IniFile.FormsFontAttr[3] := inttostr(integer(fsUnderline in fdForms.Font.Style))[1];
  IniFile.FormsFontAttr[4] := inttostr(integer(fsStrikeOut in fdForms.Font.Style))[1];
  TMailerForm(MailerForms[0]).Font.Assign(fdForms.Font);
  TMailerForm(MailerForms[0]).OutMgrOutLine.ItemHeight := Abs(fdForms.Font.Height) + 4;

  IniFile.LoggerFontHeight := fdLogger.Font.Height;
  IniFile.LoggerFontName := fdLogger.Font.Name;
  IniFile.LoggerFontAttr[1] := inttostr(integer(fsBold in fdLogger.Font.Style))[1];
  IniFile.LoggerFontAttr[2] := inttostr(integer(fsItalic in fdLogger.Font.Style))[1];
  IniFile.LoggerFontAttr[3] := inttostr(integer(fsUnderline in fdLogger.Font.Style))[1];
  IniFile.LoggerFontAttr[4] := inttostr(integer(fsStrikeOut in fdLogger.Font.Style))[1];

  IniFile.ShowMenuIcons := cbShowIcons.Checked;

//Interface end

//Colors tab
  IniFile.GaugeFore := cbGaugeFore.Selected;
  IniFile.GaugeBack := cbGaugeBack.Selected;
  IniFile.LoggerFore := cbLoggerFore.Selected;
  IniFile.LoggerBack := cbLoggerBack.Selected;
  IniFile.BadWazooFore := cbBadwazooFore.Selected;
  IniFile.BadWazooBack := cbBadwazooBack.Selected;
  IniFile.OldMail7Fore := cbMail7Fore.Selected;
  IniFile.OldMail7Back := cbMail7Back.Selected;
  IniFile.OldMail14Fore := cbMail14Fore.Selected;
  IniFile.OldMail14Back := cbMail14Back.Selected;
  IniFile.OldMail21Fore := cbMail21Fore.Selected;
  IniFile.OldMail21Back := cbMail21Back.Selected;
  IniFile.OldMail28Fore := cbMail28Fore.Selected;
  IniFile.OldMail28Back := cbMail28Back.Selected;
//Colors end

//Protocols tab
  IniFile.HydraDebug := cbDebug.Checked;
  IniFile.HydraShortLongfilename := cbShortName.Checked;
  IniFile.HydraOEM := cbOEMCharset.Checked;
  IniFile.HydraRxWindow := seRxWindow.Value;
  IniFile.HydraTxWindow := seTxWindow.Value;
  IniFile.RequestCRYPT := cbRequestCrypt.Checked;
  IniFile.ibnRequestLIST := cbIBNRequestList.Checked;
  IniFile.hydRequestLIST := cbHydRequestList.Checked;
//Protocols end

//Netmail tab
  with IniFile do
  begin
    if NetmailAddrTo.Count <> 0 then
    begin
      NetmailAddrTo.FreeAll;
      NetmailAddrFrom.FreeAll;
      NetmailPwd.FreeAll;
    end;

    for _i := 0 to gNetmail.RowCount - 2 do
    begin
      gNetmail.GetData([NetmailAddrTo, NetmailAddrFrom, NetmailPwd]);
    end;
  end;
//Netmail end

//Tariff tab
  IniFile.PerMinute := cbTariffPerMinute.Checked;
//Tariff end

//Paths tab
  IniFile.FlagsDir := eFlags.Text;
  IniFile.InTemp := eTempInbound.Text;
  IniFile.Outbound := eOutbound.Text;
  IniFile.InSecure := eSecureInbound.Text;
  IniFile.InCommon := eInbound.Text;
  IniFile.Log := eLogs.Text;
//Paths end

//Finalization
  if i <> inifile.lang then
  begin
    i := inifile.lang;
    ResLngBase := 0;
    case I of
      MaxInt :;
      {$IFDEF LNG_SPANISH} idlSpanish: ResLngBase := LngBaseSpanish; {$ENDIF}
      {$IFDEF LNG_DUTCH}   idlDutch:   ResLngBase := LngBaseDutch;   {$ENDIF}
      {$IFDEF LNG_GERMAN}  idlGerman:  ResLngBase := LngBaseGerman;  {$ENDIF}
      {$IFDEF LNG_DANISH}  idlDanish:  ResLngBase := LngBaseDanish;  {$ENDIF}
      {$IFDEF LNG_RUSSIAN} idlRussian: ResLngBase := LngBaseRussian; {$ENDIF}
      else
        begin
          ResLngBase := LngBaseEnglish;
        end;
    end;{of case}
    if Application.MainForm <> nil then PostMessage(Application.MainForm.Handle, WM_SetLang, inifile.lang, 1);
    _FillForm(self, rsSetupForm, ResLngBase);
    _GridFillColLng(gNetmail, rsNetmailGrid, ResLngBase);
    if (IniFile.OnClose > 2) or (IniFile.OnClose < 0) then cbCloseBtnAction.ItemIndex := 0
    else cbCloseBtnAction.ItemIndex := IniFile.OnClose;
    cbInterfaceLanguage.ItemIndex := i;
  end;

 if HomeChanged then
 begin
   IniFile.HomeDir := eHome.Text;
   IniFile.CfgDir := eConfigs.Text;
   If not DirectoryExists(IniFile.HomeDir) then CreateDir(IniFile.HomeDir);
   DisplayInfoLng(rsPNHdc, Handle);
   s := '';
   if ParamCount > 0 then
   begin
     s := ParamStr(1);
     if ParamCount > 1 then
       for _i := 2 to ParamCount do s := s + ' ' + ParamStr(_i)
   end;
   if Pos('delay5000', s) = 0 then s := 'delay5000 ' + s;
   ShellExecute(0, nil, PChar(ParamStr(0)),
      PChar(s), PChar(ExtractFilePath(ParamStr(0))), sw_shownormal);
   PostCloseMessage;
   exit
 end;

 if ConfigsChanged then
 begin
   IniFile.CfgDir := eConfigs.Text;
   DisplayInfoLng(rsCDCh, Handle);
   s := '';
   if ParamCount > 0 then
   begin
     s := ParamStr(1);
     if ParamCount > 1 then
       for _i := 2 to ParamCount do s := s + ' ' + ParamStr(_i)
   end;
   if Pos('delay5000', s) > 0 then s := 'delay5000 ' + s;
   ShellExecute(0, nil, PChar(ParamStr(0)),
      PChar('delay5000 ' + GetCommandLine), PChar(ExtractFilePath(ParamStr(0))), sw_shownormal);
   PostCloseMessage;
   exit
 end;
end;

procedure TSetupForm.SetData(i:integer);
var
  n: integer;
begin
// Main tab
  eMainAKA.Text := Addr2Str(IniFile.MainAddr);
  FidoAddr := IniFile.MainAddr;
  eSynchClock.Text := Addr2Str(IniFile.Synch);
  FidoAddr2 := IniFile.Synch;
  seSynchShift.Value := IniFile.TimeShift;
  seCPSMinBytes.Value := IniFile.CPS_MinBytes;
  seCPSMinSecs.Value := IniFile.CPS_MinSecs;
  seMaxBSYAge.Value := IniFile.MaxBSYAge;
  seMaxBWZAge.Value := IniFile.MaxBWZAge;
  seMaxUDLAge.Value := IniFile.MaxUDLAge;
  seOutbRescan.Value := IniFile.WaitSecRescan;
  seMsgsAutoClose.Value := IniFile.WinDlgTWait;
  seMinFreeSpace.Value := IniFile.FreeSpaceLmt;
  cbSessionOK.Checked := IniFile.SessionOKFlag;
  cbCreateSessionFail.Checked := IniFile.SessionAbortedFlag;
  cbUseHTMLHelp.Checked := not IniFile.NoHTML;
  cbDynamicOutbound.Checked := IniFile.DynamicOutbound;
  cbDynamicRouting.Checked := IniFile.DynamicRouting;
  cbChatEnabled.Checked := IniFile.ChatEnabled;
  cbIgnoreCD.Checked := IniFile.IgnoreCD;
  cbLamps.Checked := IniFile.TrayLamps;
  eChatBell.Text := IniFile.ChatBell;
  cbD5Out.Checked := IniFile.D5Out;
  if (IniFile.OnClose > 2) or (IniFile.OnClose < 0) then cbCloseBtnAction.ItemIndex := 0
  else cbCloseBtnAction.ItemIndex := IniFile.OnClose;
  cbUseNodelistData.Checked := IniFile.UseNodelistData;
  cbCompileNodelist.Checked := IniFile.AutoNodelist;
  cbPlaySounds.Checked := IniFile.playsounds;
//Main end

//System tab
  cbForceFaxPage.Checked := IniFile.ForceAddFaxPage;
  cbIgnoreEndSession.Checked := IniFile.IgnoreEndSession;
  cbIgnoreBWZSize.Checked := IniFile.IgnoreBWZSize;
  cbIncrementArcmail.Checked := IniFile.IncrementArcmail;
  cbDisableWinsockTraps.Checked := IniFile.DisableWinsockTraps;
  cbSimpleBSY.Checked := IniFile.SimpleBSY;
  cbCloseBWZ.Checked := IniFile.CloseBWZFile;
  with TIniFile.Create(IniFName) do
  try
    eEMSICR.Text := ReadString('system', 'EMSI_CR', '%0D');
    eMutexName.Text := ReadString('system', 'MutexName', 'ARGUS_SEMAPHORE');
    eActivateEventName.Text := ReadString('system', 'ActivateEventName', 'ARGUS_EVENT_ACTIVATE');
    eWatcherEventName.Text := ReadString('system', 'WatcherEventName', 'ARGUS_EVENT_DIRECTORY_WATCHER');

//    cbIncrementArcmail.Checked := ReadBool('system','IncrementArcmail', False);
    n := ReadInteger('system', 'WinSockVersion', 0);
    if (n > 2) or (n < 0) then cbWinSockVersion.ItemIndex := 0
    else cbWinSockVersion.ItemIndex := n;
    cbLogThreadTimes.Checked := ReadBool('system', 'LogThreadTimes', False);
    For n := 0 to 12 do begin
       Edits[n].ed.Text := ReadString('Sounds', copy(Edits[n].ed.Name, 3, 10), copy(Edits[n].ed.Name, 3, 10));
       Edits[n].cb.Checked := ReadBool('Sounds', 'c_' + copy(Edits[n].ed.Name, 3, 10), True);
    end;
  finally
    free;
  end;
  case IniFile.Priority of
    IDLE_PRIORITY_CLASS: n := 0;
    NORMAL_PRIORITY_CLASS: n := 1;
    HIGH_PRIORITY_CLASS: n := 2;
    REALTIME_PRIORITY_CLASS: n := 3;
  else n := 1;
  end;
  cbPriority.ItemIndex := n;
//System end

//Interface tab
  cbInterfaceLanguage.ItemIndex := i;//IniFile.lang;

  if IniFile.HelpLang = LangNames[lnEnglish] then cbHelpLanguage.ItemIndex := Integer(lnEnglish)
  else if IniFile.HelpLang = LangNames[lnRussian] then cbHelpLanguage.ItemIndex := Integer(lnRussian);

  cbGridBWZ.Checked := IniFile.GridInBWZ;
  cbGridPV.Checked := IniFile.GridInPV;

  fdForms.Font.Name := IniFile.FormsFontName;
  fdForms.Font.Height := IniFile.FormsFontHeight;
  fdForms.Font.Style := [];
  if IniFile.FormsFontAttr[1] = '1' then fdForms.Font.Style := fdForms.Font.Style + [fsBold];
  if IniFile.FormsFontAttr[2] = '1' then fdForms.Font.Style := fdForms.Font.Style + [fsItalic];
  if IniFile.FormsFontAttr[3] = '1' then fdForms.Font.Style := fdForms.Font.Style + [fsUnderline];
  if IniFile.FormsFontAttr[4] = '1' then fdForms.Font.Style := fdForms.Font.Style + [fsStrikeOut];

  fdLogger.Font.Color := IniFile.LoggerFore;
  fdLogger.Font.Name := IniFile.LoggerFontName;
  fdLogger.Font.Height := IniFile.LoggerFontHeight;

  fdLogger.Font.Style := [];
  if IniFile.LoggerFontAttr[1] = '1' then fdLogger.Font.Style := fdLogger.Font.Style + [fsBold];
  if IniFile.LoggerFontAttr[2] = '1' then fdLogger.Font.Style := fdLogger.Font.Style + [fsItalic];
  if IniFile.LoggerFontAttr[3] = '1' then fdLogger.Font.Style := fdLogger.Font.Style + [fsUnderline];
  if IniFile.LoggerFontAttr[4] = '1' then fdLogger.Font.Style := fdLogger.Font.Style + [fsStrikeOut];

  lFormsFont.Caption  := Format('%s (%d Pts)', [Font.Name, Font.Size]);
  lLoggerFont.Caption := Format('%s (%d Pts)', [fdLogger.Font.Name, fdLogger.Font.Size]);
  cbShowIcons.Checked := IniFile.ShowMenuIcons;
//Interface end

//Colors tab
  cbGaugeFore.Selected := IniFile.GaugeFore;
  cbGaugeBack.Selected := IniFile.GaugeBack;
  cbLoggerFore.Selected := IniFile.LoggerFore;
  cbLoggerBack.Selected := IniFile.LoggerBack;
  cbBadwazooFore.Selected := IniFile.BadWazooFore;
  cbBadwazooBack.Selected := IniFile.BadWazooBack;
  cbMail7Fore.Selected := IniFile.OldMail7Fore;
  cbMail7Back.Selected := IniFile.OldMail7Back;
  cbMail14Fore.Selected := IniFile.OldMail14Fore;
  cbMail14Back.Selected := IniFile.OldMail14Back;
  cbMail21Fore.Selected := IniFile.OldMail21Fore;
  cbMail21Back.Selected := IniFile.OldMail21Back;
  cbMail28Fore.Selected := IniFile.OldMail28Fore;
  cbMail28Back.Selected := IniFile.OldMail28Back;
//Colors end

//Tray tab
  FreeHotKey;
  cbAlwaysInTray.Checked := IniFile.AlwaysInTray;
  cbStealth.Checked := IniFile.Stealth;
  hkPopup.HotKey := IniFile.PopupKey;
  hkPopup.Enabled := cbStealth.Checked;
  cbBalloon.Checked := IniFile.ShowBalloon;
  cbBalloonMin.Checked := IniFile.ShowBalloonMin;
//Tray end

//logs tab
  cbODBCLogging.Checked := IniFile.ODBCLogging;
  cbTariff.Checked := not IniFile.DontLogTariff;
  eaccess_log.Text := IniFile.accessFName;
  eagnt_log.Text := IniFile.agentFName;
  ebinary_log.Text := IniFile.StatxFName;
  epolls_log.Text := IniFile.Polls_log;
  ecronapps_log.Text := IniFile.Cronapps_log;
  etariff_log.Text := IniFile.tariff_log;
{$IFDEF WS}
  eipdaemon_log.Text := IniFile.IPDaemon_log;
{$ENDIF}
{$IFDEF RASDIAL}
  eras_log.Text := IniFile.ras_log;
{$ENDIF}
//logs end

//RCC tab
  cbEnableRCC.Checked := IniFile.Remote_Enabled;
  eRCCPwd.Text := IniFile.Remote_Password;
  cbCryptRCCPwd.Checked := IniFile.Remote_EncPwd;
//RCC end

{$IFDEF RASDIAL}
//RAS tab
  cbRASEnabled.Checked := IniFile.RASEnabled;
  cbRasDialConn.Checked := IniFile.rasConnFlag;
  cbRasDialDisconn.Checked := IniFile.rasDisconnFlag;
  if (IniFile.RASEnabled)then
  begin
    if RasThread = nil then StartRas;
    cbEntryList.Items.AddStrings(RasThread.AllEntries);
    n := cbEntryList.Items.IndexOf(IniFile.iEntryName);
    cbEntryList.ItemIndex := n;
    eUserName.Text := IniFile.iUserName;
    ePassword.Text := IniFile.iPassword;
  end;
//RAS end
{$ENDIF}

//Protocols tab
  cbDebug.Checked := IniFile.HydraDebug;
  cbShortName.Checked := IniFile.HydraShortLongfilename;
  cbOEMCharset.Checked := IniFile.HydraOEM;
  seRxWindow.Value := IniFile.HydraRxWindow;
  seTxWindow.Value := IniFile.HydraTxWindow;
  cbRequestCrypt.Checked := IniFile.RequestCRYPT;
  cbIBNRequestList.Checked := IniFile.ibnRequestLIST;
  cbHydRequestList.Checked := IniFile.hydRequestLIST;
//Protocols end

//Tariff tab
  cbTariffPerMinute.Checked := IniFile.PerMinute;
//Tariff end

//Path tab
  eHome.Text := IniFile.HomeDir;
  eConfigs.Text := IniFile.CfgDir;

  HomeChanged := false;
  ConfigsChanged := false;

  eFlags.Text := IniFile.FlagsDir;
  eTempInbound.Text := IniFile.InTemp;
  eSecureInbound.Text := IniFile.InSecure;
  eInbound.Text := IniFile.InCommon;
  eOutbound.Text := IniFile.Outbound;
  eLogs.Text := IniFile.Log;
//Path end

  GridFillColLng(gNetmail, rsNetmailGrid);
  FillNetmailGrid;
end;

procedure TSetupForm.tvPagesChange(Sender: TObject; Node: TTreeNode);
begin
  {$IFNDEF RASDIAL}
  if Node.Index = 6 {RAS} then
  begin
    WinDlgCap(LngStr(rsNoRASMsg), MB_OK or MB_ICONINFORMATION, handle, 'Information');
    tvPages.Select(tvPages.Items.GetFirstNode);
    exit;
  end;
  {$ENDIF}
  if Node.Parent = nil then
  begin
    case Node.Index of
      0: nbPages.PageIndex := 0;
      1: nbPages.PageIndex := 1;
      2: nbPages.PageIndex := 2;
      3: nbPages.PageIndex := 4;
      4: nbPages.PageIndex := 5;
      5: nbPages.PageIndex := 6;
      6: nbPages.PageIndex := 7;
      7: nbPages.PageIndex := 8;
      8: nbPages.PageIndex := 9;
      9: nbPages.PageIndex := 10;
     10: nbPages.PageIndex := 11;
     11: nbPages.PageIndex := 12;
      else GlobalFail('Node.Index = %d', [Node.Index]);
    end;{of case}
  end else
  begin
    if Node.Parent.Index = 2 then nbPages.PageIndex := 3
    else GlobalFail('Node.Parent.Index = %d', [Node.Parent.Index]);
  end;
  lblPageTitle.Caption := Node.Text;
end;

procedure TSetupForm.FormCreate(Sender: TObject);
begin
  FillForm(self, rsSetupForm);
  tvPages.Items.Item[2].Expand(true);
  Edits[ 0].ed := edRing;
  Edits[ 0].cb := cbRing;
  Edits[ 1].ed := edDial;
  Edits[ 1].cb := cbDial;
  Edits[ 2].ed := edConnect;
  Edits[ 2].cb := cbConnect;
  Edits[ 3].ed := edSession;
  Edits[ 3].cb := cbSession;
  Edits[ 4].ed := edAborted;
  Edits[ 4].cb := cbAborted;
  Edits[ 5].ed := edNewLine;
  Edits[ 5].cb := cbNewLine;
  Edits[ 6].ed := edEndLine;
  Edits[ 6].cb := cbEndLine;
  Edits[ 7].ed := edRASDial;
  Edits[ 7].cb := cbRASDial;
  Edits[ 8].ed := edRASConnect;
  Edits[ 8].cb := cbRASConnect;
  Edits[ 9].ed := edRASFinish;
  Edits[ 9].cb := cbRASFinish;
  Edits[10].ed := edIncoming;
  Edits[10].cb := cbIncoming;
  Edits[11].ed := edBBS;
  Edits[11].cb := cbBBS;
  Edits[12].ed := edTrap;
  Edits[12].cb := cbTrap;
end;

procedure TSetupForm.btnReloadRASEntriesClick(Sender: TObject);
{$IFDEF RASDIAL}
var
  s: string;
begin
  if not IniFile.RASEnabled then exit;
  s := cbEntryList.Text;
  RasThread.LoadEntryList;
  cbEntryList.Items.Clear;
  cbEntryList.Items.AddStrings(RasThread.AllEntries);
  cbEntryList.ItemIndex := cbEntryList.Items.IndexOf(s)
{$ELSE}
begin
{$ENDIF}
end;

  procedure _FlashWindow(winobject: TEdit);
  var i:integer;
  begin//                    $rrggbb
    winobject.Color := clWhite and $FF00FF;
    for i := 0 to $FF do
    begin
      winobject.Color := winobject.Color + $100;
      sleep(1);
      Application.ProcessMessages;
    end;
    for i := $FF downto 0 do
    begin
      winobject.Color := winobject.Color - $100;
      sleep(1);
      Application.ProcessMessages;
    end;
    for i := 0 to $FF do
    begin
      winobject.Color := winobject.Color + $100;
      sleep(1);
      Application.ProcessMessages;
    end;
    winobject.Color := clWindow;
  end;

procedure TSetupForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  canclose: boolean;
begin
  if (sender <> nil) and (ModalResult <> mrOK) then Exit;
  canClose := ParseAddress(eMainAKA.Text, FidoAddr);
  if canClose then
  begin
    canClose := ParseAddress(eSynchClock.Text, FidoAddr2);
    if not canClose then
    begin
      DisplayErrorLng(rsAdrInNoValidAdr, Handle);
      _FlashWindow(eSynchClock)
    end;
  end
  else begin
    DisplayErrorLng(rsAdrInNoValidAdr, Handle);
    _FlashWindow(eMainAKA)
  end;
  if not CanClose then Action := caNone;
end;

procedure TSetupForm.sbMainAKABrowseClick(Sender: TObject);
begin
  if InputSingleAddress(LngStr(rsMMBrsNdlAt), FidoAddr, nil) then
    eMainAKA.Text:=Addr2Str(FidoAddr);
end;

procedure TSetupForm.sbSynchClockBrowseClick(Sender: TObject);
begin
  if InputSingleAddress(LngStr(rsMMBrsNdlAt), FidoAddr2, nil) then
    eSynchClock.Text := Addr2Str(FidoAddr2);
end;

procedure TSetupForm.btnHomeClick(Sender: TObject);
var
  s: string;
  _Sender: TEdit;
begin
  _Sender := nil;// to avoid uninitialized warning;
  case TButton(Sender).Tag of
    0: _Sender := eHome;
    1: _Sender := eConfigs;
    2: _Sender := eFlags;
    3: _Sender := eTempInbound;
    4: _Sender := eSecureInbound;
    5: _Sender := eInbound;
    6: _Sender := eOutbound;
    7: _Sender := eLogs;
    else GlobalFail('TSetupForm.btnHomeClick, TButton(Sender).Tag = %d', [TButton(Sender).Tag]);
  end; {of case}
  s := Browse(Handle, _Sender.Text);
  if s <> '' then _Sender.Text := s;
end;

procedure TSetupForm.btnHelpClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

procedure TSetupForm.sbDefGaugeClick(Sender: TObject);
begin
  case (Sender as TComponent).Tag of
    0:
      begin
        cbGaugeFore.Selected := clBlack;
        cbGaugeBack.Selected := clYellow;
      end;
    1:
      begin
        cbLoggerBack.Selected := clBtnFace;
        cbLoggerFore.Selected := clWindowText;
      end;
    2:
      begin
        cbBadWazooBack.Selected := clYellow;
        cbBadWazooFore.Selected := clBlack;
      end;
    3:
      begin
        cbMail7Fore.Selected := clRed;
        cbMail7Back.Selected := clWindow;
      end;
    4:
      begin
        cbMail14Fore.Selected := clRed;
        cbMail14Back.Selected := clWindow;
      end;
    5:
      begin
        cbMail21Fore.Selected := clRed;
        cbMail21Back.Selected := clWindow;
      end;
    6:
      begin
        cbMail28Fore.Selected := clRed;
        cbMail28Back.Selected := clWindow;
      end;
    else GlobalFail('TSetupForm.sbDefGaugeClick, (Sender as TComponent).Tag = %d', [(Sender as TComponent).Tag]);
  end; {of case}
end;    

procedure TSetupForm.sbSysGaugeClick(Sender: TObject);
begin
  case (Sender as TComponent).Tag of
    0:
      begin
        cbGaugeFore.Selected := clWindowText;
        cbGaugeBack.Selected := clWindow;
      end;
    1:
      begin
        cbLoggerBack.Selected := clBtnFace;
        cbLoggerFore.Selected := clWindowText;
      end;
    2:
      begin
        cbBadWazooBack.Selected := clWindow;
        cbBadWazooFore.Selected := clWindowText
      end;
    3:
      begin
        cbMail7Fore.Selected := clWindowText;
        cbMail7Back.Selected := clWindow;
      end;
    4:
      begin
        cbMail14Fore.Selected := clWindowText;
        cbMail14Back.Selected := clWindow;
      end;
    5:
      begin
        cbMail21Fore.Selected := clWindowText;
        cbMail21Back.Selected := clWindow;
      end;
    6:
      begin
        cbMail28Fore.Selected := clWindowText;
        cbMail28Back.Selected := clWindow;
      end;
    else GlobalFail('TSetupForm.sbSysGaugeClick, TButton(Sender).Tag = %d', [TButton(Sender).Tag]);
  end;{of case}
end;

procedure TSetupForm.btnApplyClick(Sender: TObject);
var
  Action: TCloseAction;
begin
  Action := caFree;
  FormClose(nil, Action);
  if Action = caNone then exit;
  SetupForm.GetData;
  IniFile.StoreCFG;
  wdCRC := 0;
end;

procedure TSetupForm.eHomeChange(Sender: TObject);
begin
  HomeChanged := true;
end;

procedure TSetupForm.eConfigsChange(Sender: TObject);
begin
  ConfigsChanged := true;
end;

procedure TSetupForm.sbMainNextClick(Sender: TObject);
begin
  MainPan1.Visible := false;
  MainPan2.Visible := true;
  sbMainPrev.Enabled := true;
  sbMainNext.Enabled := false;
end;

procedure TSetupForm.sbMainPrevClick(Sender: TObject);
begin
  MainPan1.Visible := true;
  MainPan2.Visible := false;
  sbMainPrev.Enabled := false;
  sbMainNext.Enabled := true;
end;

procedure TSetupForm.bFormsFontClick(Sender: TObject);
begin
  fdForms.Font.Assign(Font);
  if fdForms.Execute then
  begin
    Font.Assign(fdForms.Font);
    lFormsFont.Caption := Format('%s (%d Pts)',[Font.Name, Font.Size]);
  end;
end;

procedure TSetupForm.bLoggerFontClick(Sender: TObject);
begin
  fdLogger.Font.Color := cbLoggerFore.Selected;
  if fdLogger.Execute then
  begin
    cbLoggerFore.Selected := fdLogger.Font.Color;
    lLoggerFont.Caption := Format('%s (%d Pts)',[fdLogger.Font.Name, fdLogger.Font.Size]);
  end;
end;

procedure TSetupForm.btnChatBellClick(Sender: TObject);
begin
  if not odChatBell.Execute then exit;
  eChatBell.Text := odChatBell.FileName
end;

procedure TSetupForm.FillNetmailGrid;
begin
  gNetmail.SetData([IniFile.NetmailAddrTo, IniFile.NetmailAddrFrom, IniFile.NetmailPwd]);
end;

procedure TSetupForm.Button1Click(Sender: TObject);
begin
   odChatBell.FileName := Edits[(Sender as TButton).Tag].ed.Text;
   if odChatBell.Execute then begin
      Edits[(Sender as TButton).Tag].ed.Text := odChatBell.FileName;
      Edits[(Sender as TButton).Tag].cb.Checked := True;
   end;
end;

procedure TSetupForm.cbStealthClick(Sender: TObject);
begin
   hkPopup.Enabled := cbStealth.Checked;
end;

procedure TSetupForm.hkPopupChange(Sender: TObject);
begin
   Update;
end;

procedure TSetupForm.cbPriorityChange(Sender: TObject);
begin
  case cbPriority.ItemIndex of
    0: IniFile.Priority := IDLE_PRIORITY_CLASS;
    1: IniFile.Priority := NORMAL_PRIORITY_CLASS;
    2: IniFile.Priority := HIGH_PRIORITY_CLASS;
    3: IniFile.Priority := REALTIME_PRIORITY_CLASS;
    else IniFile.Priority := NORMAL_PRIORITY_CLASS; //GlobalFail ??
  end; {of case}
  SetPriorityClass(GetCurrentProcess, IniFile.Priority);
end;

procedure TSetupForm.TmrCRCTimer(Sender: TObject);
var
   CRC: DWORD;

   procedure CalcCRC(o: TComponent);
   var
      i: integer;
      c: TComponent;
      s: string;
      n: integer;
      m: integer;
      g: TAdvGrid;
   begin
      for i := 0 to o.ComponentCount - 1 do begin
         c := o.Components[i];
         if c is TCheckBox then begin
            CRC := UpdateCRC32(byte((c as TCheckBox).Checked), CRC);
         end else
         if c is TComboBox then begin
            CRC := UpdateCRC32(hi((c as TComboBox).ItemIndex), CRC);
            CRC := UpdateCRC32(lo((c as TComboBox).ItemIndex), CRC);
         end else
         if c is TxSpinEdit then begin
            CRC := UpdateCRC32(hi((c as TxSpinEdit).Value), CRC);
            CRC := UpdateCRC32(lo((c as TxSpinEdit).Value), CRC);
         end else
         if c is TEdit then begin
            s := (c as TEdit).Text;
            CRC := CRC32Str(s, CRC);
         end else
         if c is TColorBox then begin
            CRC := UpdateCRC32(hi((c as TColorBox).Selected), CRC);
            CRC := UpdateCRC32(lo((c as TColorBox).Selected), CRC);
         end else
         if c is THotKey then begin
            CRC := UpdateCRC32(hi((c as THotKey).HotKey), CRC);
            CRC := UpdateCRC32(lo((c as THotKey).HotKey), CRC);
         end else
         if c is TAdvGrid then begin
            g := c as TAdvGrid;
            for n := 0 to g.RowCount - 1 do begin
               for m := 0 to g.ColCount - 1 do begin
                  s := g.Cells[m, n];
                  CRC := CRC32Str(s, CRC);
               end;
            end;
         end;
         CalcCRC(c);
      end;
   end;

begin
   CRC := CRC32_INIT;
   CalcCRC(SetupForm);
   if SetupForm.wdCRC = 0 then begin
      SetupForm.wdCRC := CRC;
   end;
   if SetupForm <> nil then begin
      SetupForm.btnApply.Enabled := CRC <> SetupForm.wdCRC;
   end;
end;

end.
