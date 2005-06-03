unit Term;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  VaClasses, VaComm, ExtCtrls, VaTerminal, StdCtrls, VaUtils, VaProtocol,
  VaModem, VaSystem, Buttons, JvComponent, JvWinDialogs, VaControls,
  VaDisplay, ComCtrls, VaConst, VaTypes, VaANSIEmulation, Menus;


type
  TTerminal = class(TForm)
    VaTTYEmulation: TVaTTYEmulation;
    VaComm: TVaComm;
    VaModem1: TVaModem;
    VaXModem1: TVaXModem;
    od: TOpenDialog;
    odir: TJvBrowseFolderDialog;
    StatusBar1: TStatusBar;
    VaANSIEmulation: TVaANSIEmulation;
    Panel4: TPanel;
    lPacket: TLabel;
    Label2: TLabel;
    lCount: TLabel;
    Label6: TLabel;
    lFilesize: TLabel;
    lFilename: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    lEmulation: TLabel;
    CheckBoxEmulation: TCheckBox;
    VaTerminal1: TVaTerminal;
    MainMenu1: TMainMenu;
    Commands1: TMenuItem;
    Send1: TMenuItem;
    Receive1: TMenuItem;
    Abort1: TMenuItem;
    N1: TMenuItem;
    Clear1: TMenuItem;
    N2: TMenuItem;
    mCancel: TMenuItem;
    Dial1: TMenuItem;
    Answer1: TMenuItem;
    HangUp1: TMenuItem;
    N3: TMenuItem;
    PortSetup1: TMenuItem;
    Memo1: TMemo;
    lStatus: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBoxProtocolChange(Sender: TObject);
    procedure bAnswerClick(Sender: TObject);
    procedure bDialClick(Sender: TObject);
    procedure bClearClick(Sender: TObject);
    procedure bResetClick(Sender: TObject);
    procedure VaModem21RingDetect(Sender: TObject; Rings: Integer;
      var AcceptCall: Boolean);
    procedure VaModem21CommandTimeout(Sender: TObject);
    procedure VaModem21Error(Sender: TObject);
    procedure VaModem21OK(Sender: TObject);
    procedure VaModem21Voice(Sender: TObject);
    procedure VaModem21RingWaitTimeout(Sender: TObject);
    procedure VaModem21NoCarrier(Sender: TObject);
    procedure VaModem21Connect(Sender: TObject;
      const ConnectString: String);
    procedure VaModem21AnswerTimeout(Sender: TObject);
    procedure VaCommDsr(Sender: TObject);
    procedure bReceiveClick(Sender: TObject);
    procedure bAbortClick(Sender: TObject);
    procedure bSentClick(Sender: TObject);
    procedure VaXModem1PacketEvent(Sender: TObject; Packet,
      ByteCount: Integer);
    procedure VaXModem1TransferStart(Sender: TObject);
    procedure VaXModem1TransferEnd(Sender: TObject; ExitCode: Integer);
    procedure VaXModem1FileInit(Sender: TObject; const Name: String;
      Size: Integer);
    procedure VaXModem1Error(Sender: TObject; ErrorCode,
      ErrorCount: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bHangUpClick(Sender: TObject);
    procedure bHelpClick(Sender: TObject);
    procedure CommCts(Sender: TObject);
    procedure CommDsr(Sender: TObject);
    procedure CommRing(Sender: TObject);
    procedure CommRlsd(Sender: TObject);
    procedure CheckBoxRTSClick(Sender: TObject);
    procedure CheckBoxDTRClick(Sender: TObject);
    procedure CheckBoxXONClick(Sender: TObject);
    procedure ComboBaudrateChange(Sender: TObject);
    procedure ComboDatabitsChange(Sender: TObject);
    procedure ComboStopbitsChange(Sender: TObject);
    procedure ComboParityChange(Sender: TObject);
    procedure ComboPortNumChange(Sender: TObject);
    procedure CommError(Sender: TObject; Errors: Integer);
    procedure mCancelClick(Sender: TObject);
    procedure PortSetup1Click(Sender: TObject);
  private
    { Private declarations }
    procedure HandleException(Sender: TObject; E: Exception);
    procedure WMPortNum(var msg:TMessage);message WM_USER+100;
    procedure WMClosePort(var msg:TMessage);message WM_USER+102;
  public
    { Public declarations }
  end;

var
  Terminal: TTerminal;

  function OpenTerminal(comportidx:integer;
                        baudrateidx:integer;
                        stopbitidx:integer;
                        databitidx:integer;
                        parityidx:integer;
                        rts: boolean;
                        xon: boolean;
                        dialprefix:PChar;
                        icon: HICON
                        ): Boolean;stdcall;

implementation

//uses LngTools;
uses TermSet, tetmd;

{$R *.DFM}

procedure TTerminal.WMPortNum(var msg:TMessage);
begin
  ComboPortNumChange(nil);
end;

procedure TTerminal.WMClosePort(var msg:TMessage);
begin
  if VaComm.Active then VaComm.Close;
    TerminalSet.ComboPortNum.Enabled := Enabled;
    CheckBoxEmulation.Enabled := Enabled;
end;

procedure TTerminal.FormCreate(Sender: TObject);
begin
//  FillForm(Self, rsTerminal);
  Application.OnException := HandleException;
  if CheckBoxEmulation.Checked then VaTerminal1.Emulation := VaANSIEmulation
  else VaTerminal1.Emulation := VaTTYEmulation;
end;

procedure TTerminal.HandleException(Sender: TObject; E: Exception);
begin
  if E is EVaCommError then
    with E as EVaCommError do
      ShowMessage(Message);
end;

function OpenTerminal;
begin
  Terminal := TTerminal.Create(Application);
  MainForm := Terminal;
  TerminalSet:=TTerminalSet.Create(Application);
  TerminalSet.ComboPortNum.ItemIndex := comportidx;
  TerminalSet.ComboParity.ItemIndex := parityidx;
  TerminalSet.ComboStopbits.ItemIndex := stopbitidx;
  TerminalSet.ComboDatabits.ItemIndex := databitidx;
  TerminalSet.ComboBaudrate.ItemIndex := baudrateidx;
  TerminalSet.CheckBoxXON.Checked := xon;
  TerminalSet.CheckBoxRTS.Checked := rts;
  TerminalSet.ComboBoxProtocol.ItemIndex := 1;
  TerminalSet.eDialPrefix.Text := StrPas(dialprefix);
  Terminal.VaXModem1.Protocol := TVaXProtocol(TerminalSet.ComboBoxProtocol.ItemIndex);
//  MessageDlg(TerminalSet.ComboPortNum.Text, mtWarning, [mbOK], 0);
  Terminal.Icon.Handle:=icon;
  TerminalSet.ComboPortNumChange(nil);
  Result := Terminal.ShowModal = mrOK;
  Terminal.Free;
  TerminalSet.Free;
end;

procedure TTerminal.ComboPortNumChange(Sender: TObject);
begin
  VaComm.PortNum:=TerminalSet.ComboPortNum.ItemIndex;
  TerminalSet.ComboBoxProtocol.Enabled := True;
//begin
  if TerminalSet.ComboPortNum.ItemIndex > 0 then
  begin
    TerminalSet.Panel1.Enabled := True;
    VaComm.Open;
    CommCts(VaComm);
    CommDsr(VaComm);
    CommRing(VaComm);
    CommRlsd(VaComm);

{  with TerminalSet.ComboBaudrate do
    ItemIndex := Items.IndexOf('br38400');
  with TerminalSet.ComboDataBits do
    ItemIndex := Items.IndexOf('db8');
  with TerminalSet.ComboParity do
    ItemIndex := Items.IndexOf('paNone');
  with TerminalSet.ComboStopbits do
    ItemIndex := Items.IndexOf('sb1');}

  //ComboBaudrate.ItemIndex + 1
  //Make sure we skip the brUser flag in TVaBaudRate
    VaComm.BaudRate := TVaBaudrate(TerminalSet.ComboBaudrate.ItemIndex+1);
    VaComm.Databits := TVaDataBits(TerminalSet.ComboDatabits.ItemIndex);
    VaComm.Parity := TVaParity(TerminalSet.ComboParity.ItemIndex);
    VaComm.StopBits := TVaStopBits(TerminalSet.ComboStopbits.ItemIndex);

    TerminalSet.ComboPortNum.Enabled := False;
    CheckBoxEmulation.Enabled := False;
    VaComm.SetDTR(TerminalSet.CheckBoxDTR.Checked);
    VaComm.SetRTS(TerminalSet.CheckBoxRTS.Checked);
  end
  else
    MessageDlg(TerminalSet.ComboPortNum.Text, mtWarning, [mbOK], 0);
//  end;
end;


procedure TTerminal.bAnswerClick(Sender: TObject);
begin
  if not VaComm.Active then
    Exit;

  if not VaComm.WriteText('ATZ'#13) then
   Application.MessageBox('Could not Write to Comm - Make sure you have selected '+
   'the right port and parameters','Transmit Error',MB_OK);
   SysDelay(3000,true);
  if not VaComm.WriteText('ATA'#13) then
   Application.MessageBox('Could not Write to Comm - Make sure you have selected '+
   'the right port and parameters','Transmit Error',MB_OK);
end;

procedure TTerminal.bDialClick(Sender: TObject);
var
  num:string;
begin
  if not VaComm.Active then exit;
  if not GetDialNum(num) then exit;
  if not VaComm.WriteText('ATZ'#13) then
      Application.MessageBox('Could not Write to Comm - Make sure you have selected '+
      'the right port and parameters','Transmit Error',MB_OK);
      SysDelay(3000,true);
      vacomm.WriteText(TerminalSet.eDialPrefix.Text+num+#13);
end;


procedure TTerminal.bClearClick(Sender: TObject);
begin
   VaTerminal1.Clear;
end;


procedure TTerminal.bResetClick(Sender: TObject);
begin
  if VaComm.Active then
  begin
     VaModem1.Reset;
  end{  else
  Exit;}
end;


procedure TTerminal.VaModem21RingDetect(Sender: TObject; Rings: Integer;
  var AcceptCall: Boolean);
begin
  Memo1.Lines.Add('RING: ' + IntToStr(Rings));
  AcceptCall := Rings >= 1;
end;

procedure TTerminal.VaModem21CommandTimeout(Sender: TObject);
begin
  case VaModem1.ModemAction of
    maInit: Memo1.Lines.Add('Error initializing modem.');
  end;
end;

procedure TTerminal.VaModem21Error(Sender: TObject);
begin
  case VaModem1.ModemAction of
    maInit:
      begin
        Memo1.Lines.Add('Error initializing modem.');
        VaModem1.Active := false; //take modem offline
      end;
    maAnswer: Memo1.Lines.Add('Error in answer string.');
  end;
end;

procedure TTerminal.VaModem21OK(Sender: TObject);
begin
  case VaModem1.ModemAction of
    maInit:
      begin
        Memo1.Lines.Add('Modem initialized.');
        Memo1.Lines.Add('Waiting for call.');
      end;
  end;
end;

procedure TTerminal.VaModem21Voice(Sender: TObject);
begin
  Memo1.Lines.Add('Voice line');
end;

procedure TTerminal.VaModem21RingWaitTimeout(Sender: TObject);
begin
  Memo1.Lines.Add('Ring wait timeout, resetting');
end;

procedure TTerminal.VaModem21NoCarrier(Sender: TObject);
begin
  Memo1.Lines.Add('No carrier');
end;

procedure TTerminal.VaModem21Connect(Sender: TObject;
  const ConnectString: String);
begin
  Memo1.Lines.Add('Connect: '+ConnectString);
end;

procedure TTerminal.VaModem21AnswerTimeout(Sender: TObject);
begin
  Memo1.Lines.Add('Timeout answering call.');
  VaModem1.Hangup(false);
end;

procedure TTerminal.VaCommDsr(Sender: TObject);
begin
  HangUp1.Enabled := VaComm.Dsr;
end;

procedure TTerminal.bReceiveClick(Sender: TObject);
begin
   if VaComm.Active then
  begin
   if odir.Execute then  VaXModem1.FileName := odir.FolderName;
  begin
     if VaXModem1.FileName <> '' then
   begin
     VaModem1.Active := false;
     VaXModem1.Mode := tmDownload;
     VaXModem1.Execute;
    end
  else
    MessageDlg('Exit Download!', mtWarning, [mbOK], 0);
 end;
end;
end;

procedure TTerminal.bSentClick(Sender: TObject);
begin
  if VaComm.Active then
begin
   if od.Execute then VaXModem1.FileName := od.FileName;
begin
     if VaXModem1.FileName <> '' then
  begin
    VaModem1.Active := false;
    VaXModem1.Mode := tmUpload;
    VaXModem1.Execute;
    end
  else
    MessageDlg('Exit XModem Upload!', mtWarning, [mbOK], 0);
 end;
end;
end;

procedure TTerminal.bAbortClick(Sender: TObject);
begin
  VaXModem1.Cancel;
end;

procedure TTerminal.ComboBoxProtocolChange(Sender: TObject);
begin
  VaXModem1.Protocol := TVaXProtocol(TerminalSet.ComboBoxProtocol.ItemIndex);
end;

procedure TTerminal.VaXModem1PacketEvent(Sender: TObject; Packet,
  ByteCount: Integer);
begin
  Label2.Caption := IntToStr(Packet);
  Label6.Caption := IntToStr(ByteCount);
end;

procedure TTerminal.VaXModem1TransferStart(Sender: TObject);
begin
  Memo1.Lines.Add('Transfer started.');
end;

procedure TTerminal.VaXModem1TransferEnd(Sender: TObject; ExitCode: Integer);
begin
  Memo1.Lines.Add('Transfer ended.');
  Memo1.Lines.Add('Exitcode: ' + IntToStr(ExitCode));
end;

procedure TTerminal.VaXModem1FileInit(Sender: TObject; const Name: String;
  Size: Integer);
begin
  Label10.Caption := Name;
  Label11.Caption := IntToStr(Size);
end;

procedure TTerminal.VaXModem1Error(Sender: TObject; ErrorCode,
  ErrorCount: Integer);
begin
  Memo1.Lines.Add('Error: ' + IntToStr(ErrorCode));
end;

procedure TTerminal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then Exit;
end;


procedure TTerminal.bHangUpClick(Sender: TObject);
begin
  VaModem1.Cancel;
  VaModem1.Hangup(True);
end;

procedure TTerminal.bHelpClick(Sender: TObject);
begin
  PostMessage(Application.Handle, CM_INVOKEHELP, HELP_CONTENTS, 0);
end;

procedure TTerminal.CommCts(Sender: TObject);
begin
  if VaComm.CTS then StatusBar1.Panels[0].Text := 'CTS'
  else StatusBar1.Panels[0].Text := '';
end;

procedure TTerminal.CommDsr(Sender: TObject);
begin
  if VaComm.DSR then
    StatusBar1.Panels[1].Text := 'DSR'
  else StatusBar1.Panels[1].Text := '';
end;

procedure TTerminal.CommRing(Sender: TObject);
begin
  if VaComm.Ring then
    StatusBar1.Panels[2].Text := 'RING'
  else StatusBar1.Panels[2].Text := '';
end;

procedure TTerminal.CommRlsd(Sender: TObject);
begin
  if VaComm.Rlsd then
    StatusBar1.Panels[3].Text := 'RLSD'
  else StatusBar1.Panels[3].Text := '';
end;

procedure TTerminal.CheckBoxRTSClick(Sender: TObject);
begin
  VaComm.SetRTS(TerminalSet.CheckBoxRTS.Checked);
end;

procedure TTerminal.CheckBoxDTRClick(Sender: TObject);
begin
  VaComm.SetDTR(TerminalSet.CheckBoxDTR.Checked);
end;

procedure TTerminal.CheckBoxXONClick(Sender: TObject);
begin
  VaComm.SetXOn(TerminalSet.CheckBoxXON.Checked);
end;

procedure TTerminal.ComboBaudrateChange(Sender: TObject);
begin
  //ComboBaudrate.ItemIndex + 1
  //Make sure we skip the brUser flag in TVaBaudRate
  VaComm.BaudRate := TVaBaudrate(TerminalSet.ComboBaudrate.ItemIndex + 1);
  Memo1.Lines.add('Baudrate: ' + TerminalSet.ComboBaudrate.Text);
end;

procedure TTerminal.ComboDatabitsChange(Sender: TObject);
begin
  VaComm.Databits := TVaDataBits(TerminalSet.ComboDatabits.ItemIndex - 1);
  Memo1.Lines.add('Databits: ' + TerminalSet.ComboDatabits.Text);
end;

procedure TTerminal.ComboStopbitsChange(Sender: TObject);
begin
  VaComm.StopBits := TVaStopBits(TerminalSet.ComboStopbits.ItemIndex - 1);
  Memo1.Lines.add('StopBits: ' + TerminalSet.ComboStopbits.Text);
end;

procedure TTerminal.ComboParityChange(Sender: TObject);
begin
  VaComm.Parity := TVaParity(TerminalSet.ComboParity.ItemIndex);
  Memo1.Lines.add('Parity: ' + TerminalSet.ComboParity.Text);
end;


procedure TTerminal.CommError(Sender: TObject; Errors: Integer);
begin
  if (Errors and CE_BREAK > 0) then Memo1.Lines.add(sCE_BREAK);
  if (Errors and CE_DNS > 0) then Memo1.Lines.add(sCE_DNS);
  if (Errors and CE_FRAME > 0) then Memo1.Lines.add(sCE_FRAME);
  if (Errors and CE_IOE > 0) then Memo1.Lines.add(sCE_IOE);
  if (Errors and CE_MODE > 0) then Memo1.Lines.add(sCE_MODE);
  if (Errors and CE_OOP > 0) then Memo1.Lines.add(sCE_OOP);
  if (Errors and CE_OVERRUN > 0) then Memo1.Lines.add(sCE_OVERRUN);
  if (Errors and CE_PTO > 0) then Memo1.Lines.add(sCE_PTO);
  if (Errors and CE_RXOVER > 0) then Memo1.Lines.add(sCE_RXOVER);
  if (Errors and CE_RXPARITY > 0) then Memo1.Lines.add(sCE_RXPARITY);
  if (Errors and CE_TXFULL > 0) then Memo1.Lines.add(sCE_TXFULL);
end;

procedure TTerminal.mCancelClick(Sender: TObject);
begin
  ModalResult:=mrOK;
end;

procedure TTerminal.PortSetup1Click(Sender: TObject);
begin
  TerminalSet.Show;
end;

end.
