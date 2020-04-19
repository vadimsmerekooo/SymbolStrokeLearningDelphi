program SymbolForStudent;

uses
  Forms,
  MainWindow in 'MainWindow.pas' {Main},
  AuthRegWindowUnit in 'AuthRegWindowUnit.pas' {AuthregWindow},
  DataModuleUnit in 'DataModuleUnit.pas' {MainDataModule: TDataModule},
  ChangePasswordUnit in 'ChangePasswordUnit.pas' {ChangePasswordWindow};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAuthregWindow, AuthregWindow);
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TMainDataModule, MainDataModule);
  Application.CreateForm(TChangePasswordWindow, ChangePasswordWindow);
  Application.Run;
end.
