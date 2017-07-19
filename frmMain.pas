unit frmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.CategoryButtons,
  Winapi.TLHelp32, uSessao, DateUtils;

type
  TF_Main = class(TForm)
    Sv: TSplitView;
    PnTop: TPanel;
    Panel2: TPanel;
    ImgEmpc: TImage;
    LbTopo: TLabel;
    LbUsu: TLabel;
    CatMenu: TCategoryButtons;
    ImgMenu: TImage;
    LbEmpresa: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ImgMenuClick(Sender: TObject);
    procedure CatMenuCategories0Items0Click(Sender: TObject);
    procedure CatMenuCategories1Items0Click(Sender: TObject);
    procedure CatMenuCategories0Items1Click(Sender: TObject);
    procedure CatMenuCategories0Items2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _oSessao: TSessao;
    dDtaMov: TDateTime;
    function KillTask(ExeFileName: string): Integer;
  end;

var
  F_Main: TF_Main;

implementation

{$R *.dfm}

uses uFuncoes, frmNovaGarantia, frmOperacoes, frmConsultaGarantia,
  frmPedidosGarantia;

procedure TF_Main.CatMenuCategories0Items0Click(Sender: TObject);
begin
  if not Assigned(F_NovaGarantia) then
    F_NovaGarantia := TF_NovaGarantia.Create(Self);
  F_NovaGarantia.Show;
end;

procedure TF_Main.CatMenuCategories0Items1Click(Sender: TObject);
begin
  if not Assigned(F_ConsultaGarantia) then
    F_ConsultaGarantia := TF_ConsultaGarantia.Create(self);
  F_ConsultaGarantia.Show;
end;

procedure TF_Main.CatMenuCategories0Items2Click(Sender: TObject);
begin
  if not Assigned(F_Pedidosgarantia) then
    F_PedidosGarantia := TF_Pedidosgarantia.Create(Self);
  F_PedidosGarantia.Show;
end;

procedure TF_Main.CatMenuCategories1Items0Click(Sender: TObject);
begin
  if not Assigned(F_Operacoes) then
    F_Operacoes := TF_Operacoes.Create(self);
  F_Operacoes.Show;
end;

procedure TF_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TF_Main.FormCreate(Sender: TObject);
begin
  _oSessao := TSessao.Create;
  LbUsu.Caption := 'Bem-Vindo(a) ' + _oSessao.Usuario + '! ' + DiaSemana(_oSessao.DataHora) + ', ' + DateToStr(DateOf(_oSessao.DataHora)) + ' ';
  LbEmpresa.Caption := _oSessao.Empresa + ' ';
  dDtaMov := Now;
end;

procedure TF_Main.Image1Click(Sender: TObject);
begin
  if sv.Opened then
    Sv.Close
  else
    Sv.Open;
end;

procedure TF_Main.ImgMenuClick(Sender: TObject);
begin
  if (Sv.Opened) then
    Sv.Close
  else
    Sv.Open;
end;

function TF_Main.KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  While Integer(ContinueLoop) <> 0 do
  begin
    If ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0), FProcessEntry32.th32ProcessID), 0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

end.
