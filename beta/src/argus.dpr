program Radius;

{$IMAGEBASE $400000}

{$R 'folders.res' 'folders.rc'}
{$R 'main.res' 'main.rc'}
{$R 'xOutline.res' 'xOutline.rc'}
{$R 'winxp.res' 'winxp.rc'}
{$I DEFINE.INC}
uses
  Setup in 'Setup.pas' {SetupForm},
  ComeOn in 'ComeOn.pas',
  DevCfg in 'DevCfg.PAS' {DeviceConfig},
  FidoStat in 'FidoStat.PAS' {FidoTemplateEditor},
  NdlUtil in 'NdlUtil.pas' {NodelistCompiler},
  Freqedit in 'Freqedit.pas' {FReqDlg},
  LineBits in 'LineBits.PAS' {LineBitsEditor},
  MClasses in 'MClasses.pas',
  ModemCfg in 'ModemCfg.PAS' {ModemEditor},
  Outbound in 'Outbound.pas',
  p_Hydra in 'p_Hydra.pas',
  xBase in 'xBase.pas',
  xMisc in 'xMisc.pas',
  Mgrids in 'Mgrids.pas',
  MlineCfg in 'MlineCfg.PAS' {MailerLineCfgForm},
  FreqCfg in 'FreqCfg.PAS' {FreqCfgForm},
  NodeLCfg in 'NodeLCfg.PAS' {NodeListCfgForm},
  Recs in 'Recs.pas',
  DialRest in 'DialRest.PAS' {RestrictCfgForm},
  MlrForm in 'MlrForm.pas' {MailerForm},
  xFido in 'xFido.pas',
  P_zmodem in 'P_zmodem.pas',
  Attach in 'Attach.PAS' {AttachStatusForm},
  xIP in 'xIP.pas',
  DUPCfg in 'DUPCfg.PAS' {MainConfigForm},
  StupCfg in 'StupCfg.PAS' {StartupConfigForm},
  TracePl in 'TracePl.PAS' {DisplayInfoForm},
  Extrnls in 'Extrnls.PAS' {ExternalsForm},
  LngTools in 'LngTools.pas',
  NodeBrws in 'NodeBrws.pas' {NodelistBrowser},
  Import in 'Import.PAS' {ImportForm},
  xEvents in 'xEvents.PAS' {EventsForm},
  EvtEdit in 'EvtEdit.PAS' {EvtEditForm},
  AtomEdit in 'AtomEdit.PAS' {AtomEditorForm},
  xNiagara in 'xNiagara.pas',
  p_BinkP in 'p_BinkP.pas',
  xDES in 'xDES.pas',
  EncLinks in 'EncLinks.PAS' {EncryptedLinksForm},
  PwdInput in 'PwdInput.PAS' {NewPwdInputForm},
  SinglPwd in 'SinglPwd.PAS' {SinglePasswordForm},
  MlrThr in 'MlrThr.pas',
  OvrExpl in 'OvrExpl.pas' {OvrExplainForm},
  FidoPwd in 'FidoPwd.pas' {PwdForm},
  AdrIBox in 'AdrIBox.PAS' {FidoAddressInput},
  FTS1 in 'FTS1.pas',
  PollCfg in 'PollCfg.pas' {PollSetupForm},
  MdmCmd in 'MdmCmd.PAS' {ModemCmdForm},
  FileBox in 'FileBox.PAS' {FileBoxesForm},
  NodeWiz in 'NodeWiz.pas' {NodeWizzardForm},
  StartWiz in 'StartWiz.PAS' {StartWizzardForm},
  RRegExp in 'RRegExp.pas',
  OdbcSql in 'OdbcSql.pas',
  OdbcLog in 'OdbcLog.pas',
  igHHInt in 'igHHInt.pas',
  WSock in 'WSock.pas',
  NTdyn in 'NTdyn.pas',
  RadIni in 'RadIni.pas',
  Watcher in 'Watcher.pas',
  PathName in 'PathName.PAS' {PathNamesForm},
  Wizard in 'Wizard.pas',
  Util in 'Util.pas',
  IPCfg in 'IPCfg.pas' {IPCfgForm},
  WebCfg in 'WebCfg.pas' {WebCfgForm},
  RemoteUnit in 'RemoteUnit.pas' {RemoteForm},
  Cmdln in 'Cmdln.pas',
  Netmail in 'Netmail.pas',
{$IFDEF DEBUG_VERSION}
  JCLHookExcept,
  JCLDebug,
{$ENDIF}
{$IFDEF RASDIAL}
  RasThrd in 'RasThrd.pas',
{$ENDIF}
  Tarif in 'Tarif.pas';

{$R *.RES}

 begin
{$IFDEF DEBUGVER}
  MemChk;
{$ENDIF}
{$IFDEF DEBUG_VERSION}
  JclStartExceptionTracking;
  JclAddExceptNotifier(AnyExceptionNotify);
  include(JclStackTrackingOptions, stExceptFrame);
{  include(JclStackTrackingOptions, stAllModules);}
  include(JclStackTrackingOptions, stRawMode);
{$ENDIF}
  Come_On;
end.


