unit PathName;

{$I DEFINE.INC}


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  StdCtrls, mGrids, ExtCtrls;

type
  TPathNamesForm = class(TForm)
    gSpec: TAdvGrid;
    bBrowse: TButton;               
    bOK: TButton;
    bCancel: TButton;
    bHelp: TButton;
    llDefZone: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    CB: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure bChangeHomeDirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bHelpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bBrowseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Activated: Boolean;
    procedure SetData;
    procedure UpdateConfig;
  public
    { Public declarations }
  end;

function SetupPathNames: Boolean;

implementation

uses
xBase, AltRecs, Recs, LngTools, ShellApi, PathNmEx, RadIni, FileCtrl, xFido, AdrIBox;

{$R *.DFM}

var FidoAddr: TFidoAddress;

procedure TPathNamesForm.bChangeHomeDirClick(Sender: TObject);
var
  s: string;
begin
//  s:=Browse(Self.Handle, lHomeDir.Caption);
  if s = '' then Exit;
//  if not SetRegHomeDir(s) then begin DisplayErrorLng(rsCantUpdateReg, Handle); Exit end;
  IniFile.HomeDir:=S;
//  lHomeDir.Caption:=s;
  if UpperCase(MakeNormName(s, '')) = UpperCase(MakeNormName(HomeDir, '')) then Exit;
  { And now exit! }
  UpdateConfig;
  DisplayInfoLng(rsPNHdc, Handle);
  ShellExecute(0,nil,PChar(ParamStr(0)),
        PChar('delay2000'),PChar(ExtractFilePath(ParamStr(0))),sw_shownormal);
  PostCloseMessage;
end;

procedure TPathNamesForm.FormActivate(Sender: TObject);
begin
  if not Activated then
  begin
    GridFillRowLng(gSpec, rsPNgrid);
    Activated := True;
  end;
end;

procedure TPathNamesForm.SetData;
begin
  Edit1.Text:=Addr2Str(IniFile.MainAddr);
//  ZoneSpin.Value := IniFile.MainAddr.Zone;
  gSpec.Cells[1,0]:=IniFile.HomeDir;
  gSpec.Cells[1,1]:=IniFile.CfgDir;
  gSpec.Cells[1,2]:=IniFile.InSecure;
  gSpec.Cells[1,3]:=IniFile.InCommon;
  gSpec.Cells[1,4]:=IniFile.InTemp;
  gSpec.Cells[1,5]:=IniFile.Outbound;
  gSpec.Cells[1,6]:=IniFile.Log;
  gSpec.Cells[1,7]:=IniFile.FlagsDir;
  CB.Checked := IniFile.D5out;
end;

function SetupPathNames;
var
  PathNamesForm: TPathNamesForm;
begin
  PathNamesForm := TPathNamesForm.Create(Application);
  PathNamesForm.SetData;
  Result := PathNamesForm.ShowModal = mrOK;
  FreeObject(PathNamesForm);
end;

procedure TPathNamesForm.UpdateConfig;
  var restart: boolean;
begin
  restart := false;

  if IniFile.HomeDir<>gSpec.Cells[1,0] then begin
    DisplayInfoLng(rsPNHdc, Handle);
    restart := true;
  end
  else if IniFile.CfgDir<>gSpec.Cells[1,1] then begin
    DisplayInfoLng(rsCDCh, Handle);
    restart := true;
  end;

  IniFile.HomeDir:=gSpec.Cells[1,0];
  IniFile.CfgDir:=gSpec.Cells[1,1];
  IniFile.InSecure:=gSpec.Cells[1,2];
  IniFile.InCommon:=gSpec.Cells[1,3];
  IniFile.InTemp:=gSpec.Cells[1,4];
  IniFile.Outbound:=gSpec.Cells[1,5];
  IniFile.Log:=gSpec.Cells[1,6];
  IniFile.FlagsDir:=gSpec.Cells[1,7];
//  IniFile.DefaultZone := ZoneSpin.Value;
  IniFile.D5out := CB.Checked;
  IniFile.MainAddr := FidoAddr;

//  if not DirectoryExists(IniFile.HomeDir) then
//    CreateDir(IniFile.HomeDir);
  AltStoreConfig(Handle);
  IniFile.StoreCFG;
  if restart then begin
    ShellExecute(0, nil, PChar(ParamStr(0)),
                  PChar('delay5000'),
                  PChar(ExtractFilePath(ParamStr(0))),
                  sw_shownormal);
    PostCloseMessage;
  end;
end;

procedure TPathNamesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then Exit;
  if not ParseAddress(Edit1.Text,FidoAddr) then
  begin
    DisplayErrorLng(rsAdrInNoValidAdr, Handle);
    Action:=caNone;
    exit;
  end;
  UpdateConfig;
end;

procedure TPathNamesForm.bHelpClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

procedure TPathNamesForm.FormCreate(Sender: TObject);
begin
  FillForm(Self, rsPathNamesForm);
end;

procedure TPathNamesForm.bBrowseClick(Sender: TObject);
begin
  if InputSingleAddress(LngStr(rsMMBrsNdlAt), FidoAddr, nil) then
    Edit1.Text:=Addr2Str(FidoAddr);
end;

procedure TPathNamesForm.Button1Click(Sender: TObject);
var
  s: string;
begin
  s:=Browse(Handle,gSpec.Cells[1,TComponent(Sender).Tag]);
  if s<>'' then gSpec.Cells[1,TComponent(Sender).Tag]:=s;
end;

end.
