unit LogView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xBase;

type
  TWatchThread = class(T_Thread)
     procedure InvokeExec; override;
  public
     fTime: cardinal;
     oTime: cardinal;
     class function ThreadName: string; override;
  end;

  TLogViewer = class(TForm)
    mmView: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fLogName: string;
    fThrName: TWatchThread;
    procedure SetLogName(const s: string);
  public
    { Public declarations }
    property LogName: string read fLogName write SetLogName;
  end;

var
  LogViewer: TLogViewer;

implementation

uses RadIni, Plus, Wizard;

{$R *.dfm}

class function TWatchThread.ThreadName: string;
begin
  Result := 'WatchLogsThread';
end;

procedure TWatchThread.InvokeExec;
begin
  Sleep(100);
  fTime := GetFileTime(LogViewer.fLogName);
  if fTime <> oTime then
  begin
    oTime := fTime;
    LogViewer.LogName := LogViewer.LogName;
  end;
end;

procedure TLogViewer.SetLogName;

  procedure LoadFromFile(const FileName: string);
  var
    Stream: TStream;
  begin
    Stream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyNone);
    try
      mmView.Lines.LoadFromStream(Stream);
    finally
      Stream.Free;
    end;
  end;

begin
  fLogName := s;

  LoadFromFile(s);
  mmView.Font.Name := IniFile.LoggerFontName;
  mmView.Font.Height := IniFile.LoggerFontHeight;
  mmView.Perform( EM_LINESCROLL, 0, 32767 );
  fThrName.oTime := GetFileTime(s);
  fThrName.Suspended := False;
end;

procedure TLogViewer.FormCreate(Sender: TObject);
var
  s: string;
begin
  LogViewer := self;
  fThrName := TWatchThread.Create;
  s := IniFile.ReadString('Sizes', 'LogViewer', '');
  Left := StrToIntDef(ExtractWord(1, s, [',']), Left);
  Top := StrToIntDef(ExtractWord(2, s, [',']), Top);
  Width := StrToIntDef(ExtractWord(3, s, [',']), Width);
  Height := StrToIntDef(ExtractWord(4, s, [',']), Height);
end;

procedure TLogViewer.FormDestroy(Sender: TObject);
begin
  fThrName.Terminated := True;
  fThrName.WaitFor;
  FreeObject(fThrName);
  IniFile.WriteString('Sizes', 'LogViewer',
     IntToStr(Left) + ',' +
     IntToStr(Top) + ',' +
     IntToStr(Width) + ',' +
     IntToStr(Height));
end;

end.
