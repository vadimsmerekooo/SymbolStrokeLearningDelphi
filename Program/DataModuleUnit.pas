unit DataModuleUnit;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TMainDataModule = class(TDataModule)
    MainADOConnection: TADOConnection;
    MainADOQuery: TADOQuery;
    ChangePasswordADOQuery: TADOQuery;
    MainResultDataSource: TDataSource;
    MainResultADOTable: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainDataModule: TMainDataModule;

implementation

{$R *.dfm}

end.
