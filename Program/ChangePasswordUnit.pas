unit ChangePasswordUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, pngextra, Buttons;

type
  TChangePasswordWindow = class(TForm)
    Image1: TImage;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    LoginEdit: TEdit;
    PassEdit: TEdit;
    PNGButton3: TPNGButton;
    SaveButton: TPNGButton;
    PNGButton5: TPNGButton;
    PassOpenClose: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure PassEditKeyPress(Sender: TObject; var Key: Char);
    procedure LoginEditKeyPress(Sender: TObject; var Key: Char);
    procedure PNGButton5Click(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure PassOpenCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePasswordWindow: TChangePasswordWindow;

implementation

uses DataModuleUnit;

{$R *.dfm}

procedure TChangePasswordWindow.FormCreate(Sender: TObject);
var
tmpReg: HRGN;
begin
DoubleBuffered := true;
ChangePasswordWindow.Borderstyle := bsNone;
   tmpReg := CreateRoundRectRgn(0,
    0,
    ClientWidth,
    ClientHeight,
    40,
    40);
  SetWindowRgn(Handle, tmpReg, True);
end;

procedure TChangePasswordWindow.PassEditKeyPress(Sender: TObject;
  var Key: Char);
begin
if(PassEdit.Text <> '') then
 SaveButton.Visible := true
 else
  SaveButton.Visible := false;
end;

procedure TChangePasswordWindow.LoginEditKeyPress(Sender: TObject;
  var Key: Char);
begin
PassEdit.Clear;     
if(LoginEdit.Text <> '')then
 PassEdit.Enabled := true
 else
 begin
 PassEdit.Enabled := false;
 end
end;

procedure TChangePasswordWindow.PNGButton5Click(Sender: TObject);
begin
ChangePasswordWindow.Close;
end;

procedure TChangePasswordWindow.SaveButtonClick(Sender: TObject);
begin
if(LoginEdit.Text <> '') and (PassEdit.Text <> '') then
  begin
    MainDataModule.MainADOQuery.SQL.Clear;
    MainDataModule.MainADOQuery.SQL.Add('SELECT UserLogin FROM users WHERE UserLogin='+#39+LoginEdit.Text+#39);
    MainDataModule.MainADOQuery.Open;
    if(MainDataModule.MainADOQuery.IsEmpty = false) then
      begin
        MainDataModule.ChangePasswordADOQuery.Parameters.ParamByName('userlogin').Value := LoginEdit.Text;
        MainDataModule.ChangePasswordADOQuery.Parameters.ParamByName('changepass').Value := PassEdit.Text;
        MainDataModule.ChangePasswordADOQuery.ExecSQL;
        MainDataModule.MainADOConnection.Connected := false;
        MainDataModule.MainADOConnection.Connected := true;
        ShowMessage('Пароль успешно восстановлен!');
        ChangePasswordWindow.Close;
      end
      else
      ShowMessage('Пользователь не найден!');
  end
  else
   ShowMessage('Не все поля заполнены!');
end;

procedure TChangePasswordWindow.PassOpenCloseClick(Sender: TObject);
begin
if(PassEdit.PasswordChar = '*')then
 PassEdit.PasswordChar := #0
 else
 PassEdit.PasswordChar := '*';
end;

end.
