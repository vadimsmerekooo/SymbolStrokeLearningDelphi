unit MainWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngextra, StdCtrls, pngimage, ComCtrls, Grids, DBGrids,
  DB, ADODB;

type
  TMain = class(TForm)
    MainPageControl: TPageControl;
    Account: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    UserLoginLabel: TLabel;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    Panel4: TPanel;
    Panel2: TPanel;
    CloseButton: TPNGButton;
    Logo: TImage;
    LogoNameLabel: TLabel;
    Image2: TImage;
    PNGButton3: TPNGButton;
    Panel5: TPanel;
    PNGButton4: TPNGButton;
    UserLoginLabel1: TLabel;
    Label2: TLabel;
    Panel6: TPanel;
    UserPasswordLabel: TLabel;
    Panel7: TPanel;
    Label4: TLabel;
    LastLevelLabel: TLabel;
    Panel8: TPanel;
    Label6: TLabel;
    BestTestLabel: TLabel;
    Panel9: TPanel;
    SignOutLabel: TLabel;
    DBGrid1: TDBGrid;
    PNGButton5: TPNGButton;
    CheckAllResultButton: TPNGButton;
    CheckMyResultButton: TPNGButton;
    MainPage: TTabSheet;
    Label3: TLabel;
    UserInfoADOQuery: TADOQuery;
    PNGButton6: TPNGButton;
    PNGButton7: TPNGButton;
    PNGButton8: TPNGButton;
    PNGButton9: TPNGButton;
    Lesson1: TTabSheet;
    Lesson2: TTabSheet;
    Test: TTabSheet;
    PNGButton10: TPNGButton;
    Image3: TImage;
    Shape1: TShape;
    Label8: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    Shape3: TShape;
    Label7: TLabel;
    Shape4: TShape;
    Label9: TLabel;
    Shape5: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Image4: TImage;
    Shape6: TShape;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel10: TPanel;
    SymbolLessonMemo: TMemo;
    Image5: TImage;
    Shape7: TShape;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Panel11: TPanel;
    StrokeLessonMemo: TMemo;
    SymbolExcemLessonMemo: TMemo;
    StrokeLessonExxamplesMemo: TMemo;
    ResetPasswordPanel: TPanel;
    PNGButton11: TPNGButton;
    OldPasswordEdit: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    NewPasswordEdit: TEdit;
    Label20: TLabel;
    NewPasswordCopyEdit: TEdit;
    PNGButton12: TPNGButton;
    PNGButton13: TPNGButton;
    TestPageControl: TPageControl;
    MainPageTest: TTabSheet;
    Image6: TImage;
    Label1: TLabel;
    Memo1: TMemo;
    PNGButton14: TPNGButton;
    Panel12: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Z1: TTabSheet;
    Z2: TTabSheet;
    Z3: TTabSheet;
    Z4: TTabSheet;
    Z5: TTabSheet;
    Z6: TTabSheet;
    Z7: TTabSheet;
    Z8: TTabSheet;
    Z9: TTabSheet;
    Z10: TTabSheet;
    ResultPage: TTabSheet;
    Image7: TImage;
    PNGButton15: TPNGButton;
    Image8: TImage;
    PNGButton16: TPNGButton;
    Image9: TImage;
    PNGButton17: TPNGButton;
    Image10: TImage;
    PNGButton18: TPNGButton;
    Image11: TImage;
    PNGButton19: TPNGButton;
    Image12: TImage;
    PNGButton20: TPNGButton;
    Image13: TImage;
    PNGButton21: TPNGButton;
    Image14: TImage;
    PNGButton22: TPNGButton;
    Image15: TImage;
    PNGButton23: TPNGButton;
    Image16: TImage;
    PNGButton24: TPNGButton;
    Image34: TImage;
    PNGButton42: TPNGButton;
    Label25: TLabel;
    Label26: TLabel;
    Z1RG: TRadioGroup;
    TimerTest: TTimer;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Z2RG: TRadioGroup;
    Label30: TLabel;
    Label31: TLabel;
    Z3RG: TRadioGroup;
    Label32: TLabel;
    Label33: TLabel;
    Z4RG: TRadioGroup;
    Label34: TLabel;
    Label35: TLabel;
    Z5RG: TRadioGroup;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Edit1: TEdit;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Edit2: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Edit3: TEdit;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Edit4: TEdit;
    Label51: TLabel;
    Memo2: TMemo;
    Label50: TLabel;
    Label52: TLabel;
    Memo3: TMemo;
    Label53: TLabel;
    Edit5: TEdit;
    Label54: TLabel;
    Label55: TLabel;
    Label57: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    DBGrid2: TDBGrid;
    PNGButton25: TPNGButton;
    SaveResultADOQuery: TADOQuery;
    UpdateResultUserADOQuery: TADOQuery;
    UpdateLastResultTestADOQuery: TADOQuery;
    AddUserInfoADOQuery: TADOQuery;
    procedure CloseButtonClick(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
    procedure SignOutLabelClick(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
    procedure CheckMyResultButtonClick(Sender: TObject);
    procedure CheckAllResultButtonClick(Sender: TObject);
    procedure PNGButton8Click(Sender: TObject);
    procedure PNGButton6Click(Sender: TObject);
    procedure PNGButton7Click(Sender: TObject);
    procedure PNGButton10Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure OldPasswordEditChange(Sender: TObject);
    procedure PNGButton12Click(Sender: TObject);
    procedure NewPasswordEditChange(Sender: TObject);
    procedure NewPasswordCopyEditChange(Sender: TObject);
    procedure PNGButton13Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure PNGButton14Click(Sender: TObject);
    procedure PNGButton15Click(Sender: TObject);
    procedure TimerTestTimer(Sender: TObject);
    procedure PNGButton16Click(Sender: TObject);
    procedure PNGButton17Click(Sender: TObject);
    procedure PNGButton18Click(Sender: TObject);
    procedure PNGButton19Click(Sender: TObject);
    procedure PNGButton20Click(Sender: TObject);
    procedure PNGButton21Click(Sender: TObject);
    procedure PNGButton22Click(Sender: TObject);
    procedure PNGButton23Click(Sender: TObject);
    procedure PNGButton24Click(Sender: TObject);
    procedure PNGButton25Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;
  i, intResult: integer;

implementation

uses AuthRegWindowUnit, DataModuleUnit;
{$R *.dfm}

procedure TMain.CloseButtonClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TMain.PNGButton2Click(Sender: TObject);
begin
TimerTest.Enabled := false;
PNGButton25.Visible := false;
LastLevelLabel.Caption := '';
BestTestLabel.Caption := '';
AuthregWindow.Show;
Main.Close;
end;

procedure TMain.SignOutLabelClick(Sender: TObject);
begin
AuthregWindow.Show;
Main.Close;
end;

procedure TMain.PNGButton1Click(Sender: TObject);
begin           
TimerTest.Enabled := false;
PNGButton25.Visible := false;
MainDataModule.MainResultADOTable.Active := true;
ResetPasswordPanel.Visible := false;
MainPageControl.ActivePage := Account;
UserInfoADOQuery.Close;
UserInfoADOQuery.SQL.Clear;
UserInfoADOQuery.SQL.Add('SELECT * FROM UsersInfo WHERE NameUser = '+#39+UserLoginLabel.Caption+#39'');
UserInfoADOQuery.Open;
LastLevelLabel.Caption := UserInfoADOQuery.FieldByName('LastLevel').AsString;
BestTestLabel.Caption := UserInfoADOQuery.FieldByName('BestResultLevel').AsString;
PNGButton9.Caption := 'Аккаунт';
end;

procedure TMain.CheckMyResultButtonClick(Sender: TObject);
begin
MainDataModule.MainResultADOTable.Filtered := false;
MainDataModule.MainResultADOTable.Filter := 'NameUser LIKE '+#39+UserLoginLabel.Caption+#39;
MainDataModule.MainResultADOTable.Filtered := true;
CheckMyResultButton.Visible := false;
CheckAllResultButton.Visible := true;
end;

procedure TMain.CheckAllResultButtonClick(Sender: TObject);
begin              
MainDataModule.MainResultADOTable.Filtered := false;
CheckMyResultButton.Visible := true;
CheckAllResultButton.Visible := false;
end;

procedure TMain.PNGButton8Click(Sender: TObject);
begin
MainPageControl.ActivePage := MainPage;
PNGButton9.Caption := 'Главная'; 
TimerTest.Enabled := false;
PNGButton25.Visible := false;
end;

procedure TMain.PNGButton6Click(Sender: TObject);
begin
PNGButton9.Caption := 'Лекция №1: Символьные переменные';
MainPageControl.ActivePage := Lesson1;  
TimerTest.Enabled := false;  
PNGButton25.Visible := false;
end;

procedure TMain.PNGButton7Click(Sender: TObject);
begin
PNGButton9.Caption := 'Лекция №2: Строковые переменные';
MainPageControl.ActivePage := Lesson2;   
TimerTest.Enabled := false; 
PNGButton25.Visible := false;
end;

procedure TMain.PNGButton10Click(Sender: TObject);
begin
PNGButton9.Caption := 'Тест по лекциям';
MainPageControl.ActivePage := Test;
TestPageControl.ActivePage := MainPageTest; 
TimerTest.Enabled := false;  
PNGButton25.Visible := false;
end;

procedure TMain.Label12Click(Sender: TObject);
begin
SymbolLessonMemo.Visible := true;
SymbolExcemLessonMemo.Visible := false;
end;

procedure TMain.Label13Click(Sender: TObject);
begin
SymbolLessonMemo.Visible := false;
SymbolExcemLessonMemo.Visible := true;
end;

procedure TMain.Label15Click(Sender: TObject);
begin
StrokeLessonMemo.Visible := true;
StrokeLessonExxamplesMemo.Visible := false;
end;

procedure TMain.Label16Click(Sender: TObject);
begin
StrokeLessonMemo.Visible := false;
StrokeLessonExxamplesMemo.Visible := true;
end;

procedure TMain.OldPasswordEditChange(Sender: TObject);
begin
if(OldPasswordEdit.Text <> '') then
 begin
  NewPasswordEdit.Enabled := true;
  NewPasswordCopyEdit.Enabled := false;
 end
 else
 begin
  NewPasswordEdit.Enabled := false;
  NewPasswordCopyEdit.Enabled := false;
 end
end;

procedure TMain.PNGButton12Click(Sender: TObject);
begin
NewPasswordEdit.Clear;
NewPasswordCopyEdit.Clear;
OldPasswordEdit.Clear;
NewPasswordEdit.Enabled := false;
NewPasswordCopyEdit.Enabled := false;
PNGButton13.Visible := false;
ResetPasswordPanel.Visible := false;
end;

procedure TMain.NewPasswordEditChange(Sender: TObject);
begin
if(NewPasswordEdit.Text <> '') then
  NewPasswordCopyEdit.Enabled := true
     else
  NewPasswordCopyEdit.Enabled := false;
end;

procedure TMain.NewPasswordCopyEditChange(Sender: TObject);
begin
if(NewPasswordCopyEdit.Text <> '') then
  PNGButton13.Visible := true
  else
  PNGButton13.Visible := false;
end;

procedure TMain.PNGButton13Click(Sender: TObject);
begin
if(OldPasswordEdit.Text <> '') and (NewPasswordEdit.Text <> '') and (NewPasswordCopyEdit.Text <> '') then
  begin
    if(OldPasswordEdit.Text = UserPasswordLabel.Caption) then
        begin
          if(NewPasswordEdit.Text = NewPasswordCopyEdit.Text) then
            begin
              if(OldPasswordEdit.Text <> NewPasswordEdit.Text) then
                begin
                  MainDataModule.ChangePasswordADOQuery.Parameters.ParamByName('userlogin').Value := UserLoginLabel1.Caption;
                  MainDataModule.ChangePasswordADOQuery.Parameters.ParamByName('changepass').Value := NewPasswordEdit.Text;
                  MainDataModule.ChangePasswordADOQuery.ExecSQL;
                  MainDataModule.MainADOConnection.Connected := false;
                  MainDataModule.MainADOConnection.Connected := true;
                  ShowMessage('Пароль успешно изменен! Потребуется перезайти в аккаунт!');
                  PNGButton12Click(Self);
                  PNGButton2Click(Self);
                end
              else
               begin
                ShowMessage('Новый пароль, совпадает со старым!');
               end
            end
          else
            begin
              ShowMessage('Пароли не совпадают!');
            end
        end
      else
        begin
          ShowMessage('Введен не верный, старый пароль!');
        end
  end
else
  begin
  ShowMessage('Не все поля, заполнены!');
  end

end;

procedure TMain.Label3Click(Sender: TObject);
begin
ResetPasswordPanel.Visible := true;
end;

procedure TMain.PNGButton14Click(Sender: TObject);
begin
TestPageControl.ActivePage :=  Z1;
Panel12.Visible := true;
Label21.Visible := true;
Label22.Visible := true;
Label23.Visible := true;
Label24.Visible := true;
Label24.Caption := '1/10';
i :=   720;
ShowMessage('При отмене теста, набраный результат, НЕ СОХРАНИТЬСЯ!');

PNGButton25.Visible := true;
TimerTest.Enabled := true;
end;

function IntToStr2(I, C: Integer): String;
begin
  Result := IntToStr(I);
  while Length(Result) < C do
    Result := Result + '0';
end;

procedure TMain.PNGButton15Click(Sender: TObject);
begin
TestPageControl.ActivePage :=  Z2;
Label24.Caption := '2/10';
if(Z1RG.ItemIndex = 3) then
  intResult := intResult + 1;
Label27.Caption := IntToStr(intResult); 
Z1RG.ItemIndex := -1;
end;

procedure TMain.TimerTestTimer(Sender: TObject);
var
  H, M, S: Integer;
begin
  i := i - 1;
  H := I div 3600;
  M := (I mod 3600) div 60;
  S := (I mod 3600) mod 60;
  Label22.Caption := Format('%.2d:',[H]) + Format('%.2d:',[M]) + Format('%.2d',[S]);

  if i = 0 then
  begin
    TimerTest.Enabled := False;
    ShowMessage('Время истекло!');
    Label21.Visible := false; 
    Label22.Visible := false;
    Label23.Visible := false;
    Label24.Visible := false;
    PNGButton24Click(self);
  end;
end;

procedure TMain.PNGButton16Click(Sender: TObject);
begin
TestPageControl.ActivePage :=  Z3;
Label24.Caption := '3/10';
if(Z2RG.ItemIndex = 2) then
  intResult := intResult + 1;
Label27.Caption := IntToStr(intResult);
Z2RG.ItemIndex := -1;
end;

procedure TMain.PNGButton17Click(Sender: TObject);
begin
TestPageControl.ActivePage :=  Z4;
Label24.Caption := '4/10';
if(Z3RG.ItemIndex = 2) then
  intResult := intResult + 1;
Label27.Caption := IntToStr(intResult); 
Z3RG.ItemIndex := -1;
end;

procedure TMain.PNGButton18Click(Sender: TObject);
begin
TestPageControl.ActivePage :=  Z5;
Label24.Caption := '5/10';
if(Z4RG.ItemIndex = 1) then
  intResult := intResult + 1;
Label27.Caption := IntToStr(intResult);
Z4RG.ItemIndex := -1;
end;

procedure TMain.PNGButton19Click(Sender: TObject);
begin
TestPageControl.ActivePage :=  Z6;
Label24.Caption := '6/10';
if(Z5RG.ItemIndex = 0) then
  intResult := intResult + 1;
Label27.Caption := IntToStr(intResult);
Z5RG.ItemIndex := -1;
end;

procedure TMain.PNGButton20Click(Sender: TObject);
begin
TestPageControl.ActivePage :=  Z7;
Label24.Caption := '7/10';
if(Edit1.Text = 'В парке, саду растут деревья') then
  intResult := intResult + 1;
Label27.Caption := IntToStr(intResult);
Edit1.Clear;
end;

procedure TMain.PNGButton21Click(Sender: TObject);
begin
TestPageControl.ActivePage :=  Z8;
Label24.Caption := '8/10';
if(Edit2.Text = 'Распечатывает коды и соответствующие им символы') then
  intResult := intResult + 1;
Label27.Caption := IntToStr(intResult);
Edit2.Clear;
end;

procedure TMain.PNGButton22Click(Sender: TObject);
begin
TestPageControl.ActivePage :=  Z9;
Label24.Caption := '9/10';
if(Edit3.Text = '1,9') then
  intResult := intResult + 1;
Label27.Caption := IntToStr(intResult);
Edit3.Clear;
end;

procedure TMain.PNGButton23Click(Sender: TObject);
begin
TestPageControl.ActivePage :=  Z10;
Label24.Caption := '10/10';
if(Edit4.Text = 'со оо оа') then
  intResult := intResult + 1;
Label27.Caption := IntToStr(intResult);
Edit4.Clear;
end;

procedure TMain.PNGButton24Click(Sender: TObject);
var
  H, M, S, si: Integer;
begin
TimerTest.Enabled := false;
Panel12.Visible := false;
Label21.Visible := false;
Label22.Visible := false;
Label23.Visible := false;
Label24.Visible := false;  
PNGButton25.Visible := false;
if(Edit5.Text = '434243414342434') then
  intResult := intResult + 1;
Label27.Caption := IntToStr(intResult);
Edit5.Clear;
Label58.Caption := IntToStr(intResult);
  si := 720 - i;
  H := si div 3600;
  M := (si mod 3600) div 60;
  S := (si mod 3600) mod 60;
  Label60.Caption := Format('%.2d:',[H]) + Format('%.2d:',[M]) + Format('%.2d',[S]);

if(BestTestLabel.Caption <> '') then
  begin
    SaveResultADOQuery.Parameters.ParamByName('TUser').Value := UserLoginLabel.Caption;
    SaveResultADOQuery.Parameters.ParamByName('TRes').Value := intResult;
    SaveResultADOQuery.ExecSQL;
    if(intResult > StrToInt(BestTestLabel.Caption))  then
      begin
        UpdateResultUserADOQuery.Parameters.ParamByName('userlogin').Value := UserLoginLabel.Caption;
        UpdateResultUserADOQuery.Parameters.ParamByName('changeres').Value := intResult;
        UpdateResultUserADOQuery.ExecSQL;
      end;
  end
  else
  begin
    AddUserInfoADOQuery.Parameters.ParamByName('Tuserlogin').Value := UserLoginLabel.Caption;
    AddUserInfoADOQuery.Parameters.ParamByName('TLastres').Value := intResult;
    AddUserInfoADOQuery.Parameters.ParamByName('TBestres').Value := intResult;
    AddUserInfoADOQuery.ExecSQL;
  end;
UpdateLastResultTestADOQuery.Parameters.ParamByName('userlogin').Value := UserLoginLabel.Caption;
UpdateLastResultTestADOQuery.Parameters.ParamByName('changeres').Value := intResult;
UpdateLastResultTestADOQuery.ExecSQL;


MainDataModule.MainResultADOTable.Active := false;
MainDataModule.MainResultADOTable.Active := true;
TestPageControl.ActivePage :=  ResultPage;
intResult := 0;
end;

procedure TMain.PNGButton25Click(Sender: TObject);
begin
TimerTest.Enabled := false;
Panel12.Visible := false;
Label21.Visible := false;
Label22.Visible := false;
Label23.Visible := false;
Label24.Visible := false;
PNGButton10Click(self);
end;

end.
