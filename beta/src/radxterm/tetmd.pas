unit tetmd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, StdCtrls;

type
  TTermDial = class(TForm)
    tEditNamber: TEdit;
    bDial: TButton;
    bCancel: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TermDial: TTermDial;

  function GetDialNum(out num:string):boolean;

implementation

{$R *.dfm}

function GetDialNum;
begin
  num:='';
  TermDial := TTermDial.Create(Application);
  result:=TermDial.ShowModal=mrOK;
  if result then
  begin
    num:=TermDial.tEditNamber.Text;
  end;
  TermDial.Free;
end;

end.
