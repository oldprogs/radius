unit TermSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TTerminalSet = class(TForm)
    Panel1: TPanel;
    lComm: TLabel;
    Panel2: TPanel;
    CheckBoxDTR: TCheckBox;
    CheckBoxRTS: TCheckBox;
    CheckBoxXON: TCheckBox;
    ComboParity: TComboBox;
    ComboStopbits: TComboBox;
    ComboBaudrate: TComboBox;
    ComboDatabits: TComboBox;
    ComboPortNum: TComboBox;
    bReset: TButton;
    Close: TButton;
    ComboBoxProtocol: TComboBox;
    lProtocol: TLabel;
    Button1: TButton;
    Label1: TLabel;
    eDialPrefix: TEdit;
    procedure ComboPortNumChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TerminalSet: TTerminalSet;
  MainForm: TForm;

implementation

{$R *.dfm}

procedure TTerminalSet.ComboPortNumChange(Sender: TObject);
begin
  PostMessage(MainForm.Handle,WM_USER+100,0,0);
end;

procedure TTerminalSet.FormCreate(Sender: TObject);
begin
  PostMessage(MainForm.Handle,WM_USER+101,0,0);
end;

procedure TTerminalSet.CloseClick(Sender: TObject);
begin
  PostMessage(MainForm.Handle,WM_USER+102,0,0);
end;

end.
