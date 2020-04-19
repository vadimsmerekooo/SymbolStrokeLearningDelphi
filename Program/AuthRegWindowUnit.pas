unit AuthRegWindowUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, pngextra, StdCtrls, Buttons, DB, ADODB;

type
  TAuthregWindow = class(TForm)
    Image2: TImage;
    Image1: TImage;
    AuthButton: TPNGButton;
    PNGButton2: TPNGButton;
    LoginEdit: TEdit;
    AuthPNGButton: TPNGButton;
    PassEdit: TEdit;
    PNGButton4: TPNGButton;
    AuthOrRegPNGButton: TPNGButton;
    PNGButton6: TPNGButton;
    RegButton: TPNGButton;
    PassOpenClose: TBitBtn;
    Image3: TImage;
    AuthRegADOQuery: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure AuthOrRegPNGButtonClick(Sender: TObject);
    procedure PassOpenCloseClick(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AuthButtonClick(Sender: TObject);
    procedure RegButtonClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure PNGButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AuthregWindow: TAuthregWindow;

implementation

uses DataModuleUnit, MainWindow, ChangePasswordUnit;
{$R *.dfm}

procedure TAuthregWindow.FormCreate(Sender: TObject);
var
tmpReg: HRGN;
begin
DoubleBuffered := true;
AuthRegWindow.Borderstyle := bsNone;
   tmpReg := CreateRoundRectRgn(0,
    0,
    ClientWidth,
    ClientHeight,
    40,
    40);
  SetWindowRgn(Handle, tmpReg, True);
end;

procedure TAuthregWindow.AuthOrRegPNGButtonClick(Sender: TObject);
begin
if(AuthOrRegPNGButton.Caption = 'Регистрация')then
  begin
    AuthPNGButton.Caption := 'Регистрация';
    AuthOrRegPNGButton.Caption := 'Авторизация';
    RegButton.Visible := true;
    AuthButton.Visible := false;
    LoginEdit.Text := '';
    PassEdit.Text := '';
  end
  else
  begin
    AuthPNGButton.Caption := 'Авторизация';
    AuthOrRegPNGButton.Caption := 'Регистрация';
    RegButton.Visible := false;
    AuthButton.Visible := true;   
    LoginEdit.Text := '';
    PassEdit.Text := '';
  end;            
if(PassEdit.PasswordChar = #0)then
 PassEdit.PasswordChar := '*';
end;

procedure TAuthregWindow.PassOpenCloseClick(Sender: TObject);
begin
if(PassEdit.PasswordChar = '*')then
 PassEdit.PasswordChar := #0
 else
 PassEdit.PasswordChar := '*';
end;

procedure TAuthregWindow.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
Close;
end;

procedure TAuthregWindow.AuthButtonClick(Sender: TObject);
begin
if(LoginEdit.Text <> '') and (PassEdit.Text <> '')then
  begin
    MainDataModule.MainADOQuery.SQL.Clear;
    MainDataModule.MainADOQuery.SQL.Add('SELECT UserPassword FROM users WHERE UserLogin='+#39+LoginEdit.Text+#39);
    MainDataModule.MainADOQuery.Open;
    if(MainDataModule.MainADOQuery.FieldByName('UserPassword').Value = PassEdit.Text)then
     begin
        ShowMessage('Приветствую, '+LoginEdit.Text+'!!!');
        Main.UserLoginLabel.Caption := LoginEdit.Text;
        Main.UserLoginLabel1.Caption := LoginEdit.Text;
        Main.UserPasswordLabel.Caption := PassEdit.Text;
        Main.MainPageControl.ActivePage := Main.MainPage;
        Main.PNGButton9.Caption := 'Главная';
        LoginEdit.Clear;
        PassEdit.Clear;
        Main.Show();
        Hide;
     end
     else
        ShowMessage('Неверный логин, или пароль!');
  end
else
  ShowMessage('Не все поля, заполнены!');
end;

procedure TAuthregWindow.RegButtonClick(Sender: TObject);
begin
if(LoginEdit.Text <> '') and (PassEdit.Text <> '') then
 begin
    MainDataModule.MainADOQuery.SQL.Clear;
    MainDataModule.MainADOQuery.SQL.Add('SELECT UserLogin FROM users WHERE UserLogin='+#39+LoginEdit.Text+#39);
    MainDataModule.MainADOQuery.Open;
    if(MainDataModule.MainADOQuery.IsEmpty) then
     begin
      AuthRegADOQuery.Parameters.ParamByName('Tlogin').Value := LoginEdit.Text;
      AuthRegADOQuery.Parameters.ParamByName('Tpassword').Value := PassEdit.Text;
      AuthRegADOQuery.ExecSQL;
      ShowMessage('Вы успешно зарегистрированы!');
      LoginEdit.Clear;
      PassEdit.Clear;
      AuthOrRegPNGButtonClick(self);
     end
 end
else
 ShowMessage('Не все поля, заполнены!');
end;

procedure TAuthregWindow.Image3Click(Sender: TObject);
begin
Close();
end;

procedure TAuthregWindow.PNGButton6Click(Sender: TObject);
begin
ChangePasswordWindow.ShowModal;
ChangePasswordWindow.LoginEdit.Clear;
ChangePasswordWindow.PassEdit.Clear;
end;

end.
