unit WebCfg;

{$I DEFINE.INC}

interface

uses
  Forms, StdCtrls, Controls, mGrids, ComCtrls, Classes, xBase,
  Dialogs, Windows;
// Windows, Messages, SysUtils, Variants, Graphics;
//  Dialogs, Buttons, ExtCtrls, MClasses;

type
  TWebCfgForm = class(TForm)
    tb: TPageControl;
    lHTTP: TTabSheet;
    lTemplates: TTabSheet;
    lNodes: TTabSheet;
    bOK: TButton;
    bCancel: TButton;
    bHelp: TButton;
    lCgiExecutable: TEdit;
    llCgiExecutable: TLabel;
    bCGI: TButton;
    odCgiExecutable: TOpenDialog;
    llHttpPort: TLabel;
    lHttpPort: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bCGIClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetData;
  public
    { Public declarations }
  end;

function SetupWeb: Boolean;

implementation

uses LngTools, RadIni;
//uses LngTools, xFido, AltRecs, xEvents, OvrExpl, TracePl, Wizard, RadIni;

{$IFNDEF WEB}
  This form cannot be linked
{$ENDIF}

{$R *.DFM}

function SetupWeb;
var
  WebCfgForm: TWebCfgForm;
begin
  WebCfgForm := TWebCfgForm.Create(Application);
  WebCfgForm.SetData;
  Result := WebCfgForm.ShowModal = mrOK;
  FreeObject(WebCfgForm);
//  if Result then PostMsg(WM_SETUPOK);
end;

procedure TWebCfgForm.SetData;
begin
  lCgiExecutable.Text := IniFile.CgiExecFile;
  lHttpPort.Text := IniFile.HttpPort;
end;

procedure TWebCfgForm.bCGIClick(Sender: TObject);
begin
  odCgiExecutable.FileName := lCgiExecutable.Text;
  if odCgiExecutable.Execute then
    lCgiExecutable.Text := odCgiExecutable.FileName;
end;

{procedure TWebCfgForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ModalResult <> mrOK then Exit;
  CanClose := AllOK;
end;}

procedure TWebCfgForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IniFile.CgiExecFile := lCgiExecutable.Text;
  IniFile.HttpPort := lHttpPort.Text;
end;

procedure TWebCfgForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then bHelp.Click;
end;

procedure TWebCfgForm.FormCreate(Sender: TObject);
begin
  FillForm(Self, rsWebCfgForm);
end;

end.
