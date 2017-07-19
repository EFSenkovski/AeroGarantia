unit frmCaminhoBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Registry;

type
  TF_CaminhoBanco = class(TForm)
    Panel1: TPanel;
    LbTopo: TLabel;
    Panel2: TPanel;
    EditBanco: TEdit;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtnTestar: TBitBtn;
    BtnGravar: TBitBtn;
    SpeedButton1: TSpeedButton;
    OpenDialog: TOpenDialog;
    BtnCancelar: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnTestarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CaminhoBanco: TF_CaminhoBanco;

implementation

{$R *.dfm}

uses dmMain, uFuncoes;

procedure TF_CaminhoBanco.BtnCancelarClick(Sender: TObject);
begin
  if not Confirma('Deseja apagar estes dados?') then
    Exit;
  EditUsuario.Clear;
  EditSenha.Clear;
  EditBanco.Clear;
  EditUsuario.ReadOnly := false;
  EditBanco.ReadOnly := false;
  EditSenha.ReadOnly := false;
  BtnGravar.Enabled := false;
  BtnTestar.Enabled := true;
end;

procedure TF_CaminhoBanco.BtnGravarClick(Sender: TObject);
var
  oReg: TRegistry;
begin
  try
    oReg := TRegistry.Create;
    //oReg.RootKey := HKEY_LOCAL_MACHINE;
    if (oReg.OpenKey('Software/AeroInf/CGarAeroSML',true)) then
    begin
      oreg.WriteString('DB',EditBanco.Text);
      oreg.WriteString('User',EditUsuario.Text);
      oreg.WriteString('Pass',EncryptStr(EditSenha.Text,9));
      oReg.CloseKey;
    end;
  finally
    oReg.Free;
    F_CaminhoBanco.Close;
  end;
end;

procedure TF_CaminhoBanco.BtnTestarClick(Sender: TObject);
begin
  try
    with F_DMMAIN do
    begin
      with FDConnection do
      begin
        Connected := false;
        Close;
        Params.Clear;
        DriverName := 'FB';
        Params.Database := EditBanco.Text;
        Params.UserName := EditUsuario.Text;
        params.Password := EditSenha.Text;
        Params.Add('lc_ctype=ISO8859_1');
        Connected := true;
        ShowMessage('Conectado com sucesso');
        BtnGravar.Enabled := true;
        BtnCancelar.Visible := true;
        EditBanco.ReadOnly := true;
        EditUsuario.ReadOnly := true;
        Editsenha.ReadOnly := true;
      end;
    end;
  except
    on E:exception do
    begin
      MessageDlg('Erro ao conectar' + #13 + e.Message, mtError, mbOKCancel, 0);
    end;
  end;
end;

procedure TF_CaminhoBanco.SpeedButton1Click(Sender: TObject);
var
  sPath: string;
begin
  OpenDialog.Title := 'Selecione o arquivo .GDB';
  if (OpenDialog.Execute()) then
  begin
    sPath := OpenDialog.FileName;
    sPath := sPath.Replace('\','/',[rfReplaceAll]);
    sPath := sPath.Replace('C','127.0.0.1',[rfReplaceAll]);
    EditBanco.Text := sPath;
  end;
end;

end.
