object MainDataModule: TMainDataModule
  OldCreateOrder = False
  Left = 540
  Top = 242
  Height = 150
  Width = 422
  object MainADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=SymbolForStudentDB.' +
      'mdb;Persist Security Info=False;Jet OLEDB:Database Password=katy' +
      'sha'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 16
  end
  object MainADOQuery: TADOQuery
    Connection = MainADOConnection
    Parameters = <>
    Left = 136
    Top = 16
  end
  object ChangePasswordADOQuery: TADOQuery
    Connection = MainADOConnection
    Parameters = <
      item
        Name = 'changepass'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'userlogin'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'update Users'
      'set UserPassword=:changepass where UserLogin=:userlogin')
    Left = 200
    Top = 48
  end
  object MainResultDataSource: TDataSource
    DataSet = MainResultADOTable
    Left = 224
  end
  object MainResultADOTable: TADOTable
    Active = True
    Connection = MainADOConnection
    CursorType = ctStatic
    Filtered = True
    LockType = ltReadOnly
    TableName = 'ResultTest'
    Left = 328
    Top = 32
  end
end
