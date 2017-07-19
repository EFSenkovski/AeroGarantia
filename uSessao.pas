unit uSessao;

interface

uses Controls, Forms, SysUtils;

type
TSessao = class
  private
    FUsuario: String;
    FEmpresa: String;
    FEmpresaCod: Integer;
    FAtiva: Boolean;
    FDataHora: TDateTime;
    procedure SetAtiva(const Value: Boolean);
    procedure SetDataHora(const Value: TDateTime);
    procedure SetEmpresa(const Value: String);
    procedure SetEmpresaCod(const Value: Integer);
    procedure SetUsuario(const Value: String);
  published
    property Usuario: String read FUsuario write SetUsuario;
    property Empresa: String read FEmpresa write SetEmpresa;
    property EmpresaCod: Integer read FEmpresaCod write SetEmpresaCod;
    property Ativa: Boolean read FAtiva write SetAtiva;
    property DataHora: TDateTime read FDataHora write SetDataHora;
  public
    Constructor Create;
    Destructor Destroy; override;
end;

implementation


{ TSessao }

uses frmLogin, frmMain, uFuncoes, frmEmpresaSelect, dmMain;

constructor TSessao.Create;
begin
  if not F_DMMain.FDConnection.Connected then
    Exit;
  {$IFDEF DEBUG}
    SetAtiva(True);
    SetUsuario('AERO');
    SetEmpresaCod(1);
    SetEmpresa(GetEmpNom(1));
    SetDataHora(Now);
    Exit;
  {$ENDIF}
  SetAtiva(False);
  SetUsuario('');
  {Login de usuário}
  if not Assigned(F_Login) then
    F_Login := TF_Login.Create(nil);
  F_Login.ShowModal;
  if (F_Login.ModalResult <> mrOk) then
  begin
    F_Login.Free;
    F_Login := NIL;
    Application.Terminate;
    F_Main.KillTask(Application.ExeName);
  end;
  SetUsuario(F_Login.EditUser.Text);
  F_Login.Free;
  F_Login := NIL;
  {seleção de empresa}
  if not Assigned(F_EmpresaSelect) then
    F_EmpresaSelect := TF_EmpresaSelect.Create(nil);
  F_EmpresaSelect.ShowModal;
  if (F_EmpresaSelect.Modalresult <> mrOk) then
  begin
    F_EmpresaSelect.Free;
    F_EmpresaSelect := NIL;
    Application.Terminate;
    F_Main.KillTask(Application.ExeName);
  end;
  SetEmpresaCod(F_EmpresaSelect._iEmpresa);
  SetEmpresa(F_EmpresaSelect._sEmpresa);
  F_EmpresaSelect.Free;
  F_EmpresaSelect := NIL;
  SetAtiva(True);
  SetDataHora(Now);
end;

destructor TSessao.Destroy;
begin

  inherited;
end;

procedure TSessao.SetAtiva(const Value: Boolean);
begin
  FAtiva := Value;
end;

procedure TSessao.SetDataHora(const Value: TDateTime);
begin
  FDataHora := Value;
end;

procedure TSessao.SetEmpresa(const Value: String);
begin
  FEmpresa := Value;
end;

procedure TSessao.SetEmpresaCod(const Value: Integer);
begin
  FEmpresaCod := Value;
end;

procedure TSessao.SetUsuario(const Value: String);
begin
  FUsuario := Value;
end;

end.
