unit frmPedidosGarantia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Mask, RxToolEdit, Data.DB, Vcl.Grids, Vcl.DBGrids, RxCurrEdit,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_PedidosGarantia = class(TForm)
    Panel1: TPanel;
    LbTopo: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    PgControl: TPageControl;
    TBPedSimples: TTabSheet;
    GrbProd: TGroupBox;
    Panel5: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Lb: TLabel;
    Label11: TLabel;
    EditProCod: TEdit;
    EditProDes: TEdit;
    EditProUn: TEdit;
    EditSalEst: TCurrencyEdit;
    EditQtde: TCurrencyEdit;
    EditPreco: TCurrencyEdit;
    EditTotal: TCurrencyEdit;
    BtnAddPro: TBitBtn;
    BtnExcPro: TBitBtn;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    GrbCab: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditCliCod: TEdit;
    EditCliNom: TEdit;
    EditOpeDes: TEdit;
    EditOpeCod: TEdit;
    EditGarCod: TEdit;
    EditDtaGar: TDateEdit;
    GrbTotais: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    EditQtdeTot: TCurrencyEdit;
    EditNumItens: TCurrencyEdit;
    Panel4: TPanel;
    Label1: TLabel;
    BtnNova: TBitBtn;
    EditPedCod: TEdit;
    BtnPedConf: TBitBtn;
    QryAux: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnNovaClick(Sender: TObject);
    procedure EditGarCodDblClick(Sender: TObject);
    procedure EditGarCodExit(Sender: TObject);
    procedure EditGarCodKeyPress(Sender: TObject; var Key: Char);
    procedure EditCliCodKeyPress(Sender: TObject; var Key: Char);
    procedure EditCliCodExit(Sender: TObject);
    procedure EditCliCodDblClick(Sender: TObject);
    procedure EditOpeCodDblClick(Sender: TObject);
    procedure EditOpeCodExit(Sender: TObject);
    procedure EditOpeCodKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure SetarControlesReadOnly(oWinControl: TWinControl ;lReadOnly: Boolean);
  public
    { Public declarations }
  end;

var
  F_PedidosGarantia: TF_PedidosGarantia;

implementation

{$R *.dfm}

uses uFuncoes, frmConsultaGarantia, dmMain;

procedure TF_PedidosGarantia.BtnNovaClick(Sender: TObject);
begin
  SetarControlesReadOnly(TWinControl(Self),false);
  EditPedCod.Text := IntToStr(GetProximoPK('PEDIDO','PED_COD'));
  EditGarCod.SetFocus;
end;

procedure TF_PedidosGarantia.EditCliCodDblClick(Sender: TObject);
begin
  EditCliCod.Text := TelaConsultaExec('CLI001','');
end;

procedure TF_PedidosGarantia.EditCliCodExit(Sender: TObject);
begin
  EditCliNom.Text := GetDbVal(EditCliCod.Text,'CLI_COD','CLI_NOM','CLIENTE');
end;

procedure TF_PedidosGarantia.EditCliCodKeyPress(Sender: TObject; var Key: Char);
begin
  Key := SoNumero(Key);
end;

procedure TF_PedidosGarantia.EditGarCodDblClick(Sender: TObject);
begin
  if not Assigned(F_ConsultaGarantia) then
    F_ConsultaGarantia :=  TF_ConsultaGarantia.Create(self);
  F_ConsultaGarantia._lModal := true;
  F_ConsultaGarantia.ShowModal;
  if (F_ConsultaGarantia.ModalResult = mrOk) then
    EditGarCod.Text := IntToStr(F_ConsultaGarantia._iGarCod);
end;

procedure TF_PedidosGarantia.EditGarCodExit(Sender: TObject);
begin
  if EditGarCod.Text = EmptyStr then
    Exit;
  with QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select GAR.GAR_CLI, CLI.CLI_NOM, GAR.GAR_DTA From PROGARANTIA GAR');
    SQL.Add('Left Join CLIENTE CLI');
    SQL.Add(' On (CLI.CLI_COD = GAR.GAR_CLI)');
    SQL.Add('Where GAR.GAR_COD = :GARANTIA');
    ParamByName('GARANTIA').AsInteger := StrToInt(EditGarCod.Text);
    Open;
    if not Eof then
    begin
      EditCliCod.Text := FieldByName('GAR_CLI').AsString;
      EditCliNom.Text := FieldByName('CLI_NOM').AsString;
      EditDtaGar.Date := FieldByName('GAR_DTA').AsDateTime;
      EditOpeCod.SetFocus;
    end;
  end;
end;

procedure TF_PedidosGarantia.EditGarCodKeyPress(Sender: TObject; var Key: Char);
begin
  Key := SoNumero(Key);
end;

procedure TF_PedidosGarantia.EditOpeCodDblClick(Sender: TObject);
begin
  EditOpeCod.Text := TelaConsultaExec('OPE001','');
end;

procedure TF_PedidosGarantia.EditOpeCodExit(Sender: TObject);
begin
  EditOpeDes.Text := GetDbVal(EditOpeCod.Text,'OPE_COD','OPE_DES','');
end;

procedure TF_PedidosGarantia.EditOpeCodKeyPress(Sender: TObject; var Key: Char);
begin
  Key := SoNumero(Key);
end;

procedure TF_PedidosGarantia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  F_PedidosGarantia := NIL;
end;

procedure TF_PedidosGarantia.FormShow(Sender: TObject);
begin
  SetarControlesReadOnly(TWinControl(Self),true);
end;

procedure TF_PedidosGarantia.SetarControlesReadOnly(oWinControl: TWinControl; lReadOnly: Boolean);
var
  i: Integer;
begin
  for i := 0 to oWinControl.ControlCount-1 do
  begin
    if not (oWinControl.Controls[i] is TLabel) and not (oWinControl.Controls[i] is TCurrencyEdit) and not (oWinControl.Controls[i] is TDateEdit) and (TWinControl(oWinControl.Controls[i]).ControlCount > 0) then
    begin
      SetarControlesReadOnly(TWinControl(oWinControl.Controls[i]), lReadOnly);
    end;
    if ((oWinControl.Controls[i] is TEdit)) then
    begin
      (TEdit(oWinControl.Controls[i])).Clear;
      if (oWinControl.Controls[i].Tag = 0) then
        (TEdit(oWinControl.Controls[i])).readOnly := lReadOnly;
    end;
    if (oWinControl.Controls[i] is TCurrencyEdit) then
    begin
      (TCurrencyEdit(oWinControl.Controls[i])).value := 0.0;
      if (oWinControl.Controls[i].Tag = 0) then
        (TCurrencyEdit(oWinControl.Controls[i])).readOnly := lReadOnly;
    end;
    if (oWinControl.Controls[i] is TDateEdit) then
    begin
      (TDateEdit(oWinControl.Controls[i])).Clear;
      if (oWinControl.Controls[i].Tag = 0) then
        (TDateEdit(oWinControl.Controls[i])).readOnly := lReadOnly;
    end;
  end;
end;

end.
