unit frmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_Login = class(TForm)
    Panel1: TPanel;
    LbTopo: TLabel;
    Panel2: TPanel;
    EditUser: TLabeledEdit;
    EditSenha: TLabeledEdit;
    BtnAcessar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    LbSenha: TLabel;
    procedure BtnAcessarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EditUserKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Login: TF_Login;

implementation

{$R *.dfm}

uses dmMain;

procedure TF_Login.BtnAcessarClick(Sender: TObject);
var
  oQry: TFDQuery;
begin
  lbSenha.Hide;
  if not ((EditUser.Text <> EmptyStr) and (EditSenha.Text <> EmptyStr)) then
    Exit;
  oQry := TFDQuery.Create(nil);
  oQry.Connection := F_DMMain.FDConnection;
  with oQry do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select NOME From USUARIOS Where NOME = :nome And SENHA = :senha');
    ParamByName('nome').AsString := EditUser.Text;
    ParamByName('senha').AsString := EditSenha.Text;
    Open;
    if Eof then
    begin
      LbSenha.Caption := 'Usuário/Senha Incorretos!';
      LbSenha.Show;
    end else
      ModalResult := mrOk;
  end;
end;

procedure TF_Login.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TF_Login.EditSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key = VK_RETURN) then
    BtnAcessar.Click;
end;

procedure TF_Login.EditUserKeyPress(Sender: TObject; var Key: Char);
begin
  //verifica se a tecla pressionada é a tecla ENTER, conhecida como #13
  If key = #13 then Begin
    //se for, passa o foco para o próximo campo, zerando o valor da variável Key
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

end.
