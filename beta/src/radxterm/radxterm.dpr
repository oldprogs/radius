library radxterm;

uses
  Forms,
  term in 'Term.pas' {terminal},
  TermSet in 'TermSet.pas' {TerminalSet},
  tetmd in 'tetmd.pas' {TermDial};

{$R *.res}

exports
  OpenTerminal;
begin
  Application.Initialize;
end.
