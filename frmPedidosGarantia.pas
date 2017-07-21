unit frmPedidosGarantia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Mask, RxToolEdit, Data.DB, Vcl.Grids, Vcl.DBGrids, RxCurrEdit,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.DBClient;

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
    EditPedTot: TCurrencyEdit;
    EditQtdeTot: TCurrencyEdit;
    EditNumItens: TCurrencyEdit;
    Panel4: TPanel;
    Label1: TLabel;
    BtnNova: TBitBtn;
    EditPedCod: TEdit;
    BtnPedConf: TBitBtn;
    QryAux: TFDQuery;
    BtnCDados: TBitBtn;
    CdsProdutos: TClientDataSet;
    CdsProdutosPRO_COD: TStringField;
    CdsProdutosPRO_DES: TStringField;
    CdsProdutosPRO_UNI: TStringField;
    CdsProdutosPRO_QTD: TFloatField;
    CdsProdutosPRO_PRE: TFloatField;
    CdsProdutosPRO_TOT: TFloatField;
    DsProdutos: TDataSource;
    LbPed: TLabel;
    QryAux2: TFDQuery;
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
    procedure EditProCodDblClick(Sender: TObject);
    procedure EditProCodExit(Sender: TObject);
    procedure EditProCodKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCDadosClick(Sender: TObject);
    procedure BtnAddProClick(Sender: TObject);
    procedure BtnExcProClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditQtdeExit(Sender: TObject);
  private
    { Private declarations }
    procedure SetarControlesReadOnly(oWinControl: TWinControl ;lReadOnly: Boolean);
    function CalculaTotal(nQtd, nPre: Extended): Extended;
  public
    { Public declarations }
  end;

var
  F_PedidosGarantia: TF_PedidosGarantia;

implementation

{$R *.dfm}

uses uFuncoes, frmConsultaGarantia, dmMain, frmConsultaPartesGarantia;

procedure TF_PedidosGarantia.BtnAddProClick(Sender: TObject);
var
  lAchou: Boolean;
begin
  if EditProCod.Text = EmptyStr then
    Exit;
  if CdsProdutos.Locate('PRO_COD',EditProCod.Text,[loPartialKey]) then
    lAchou := true
  else
    lAchou := false;
  if lAchou and Confirma('Produto já inserido. Deseja alterar?') then
    CdsProdutos.Edit
  else
    CdsProdutos.Append;
  CdsProdutosPRO_COD.AsString := EditProCod.Text;
  CdsProdutosPRO_DES.AsString := EditProDes.Text;
  CdsProdutosPRO_UNI.AsString := EditProUn.Text;
  CdsProdutosPRO_QTD.AsFloat  := EditQtde.Value;
  CdsProdutosPRO_PRE.AsFloat  := EditPreco.Value;
  CdsProdutosPRO_TOT.AsFloat  := EditTotal.Value;
  CdsProdutos.Post;
end;

procedure TF_PedidosGarantia.BtnCDadosClick(Sender: TObject);
begin
  if not Confirma('Deseja confirmar estes dados para iniciar o pedido?') then
  begin
    EditProCod.ReadOnly := true;
    Exit;
  end;
  EditCliCod.ReadOnly := true;
  EditGarCod.ReadOnly := true;
  EditOpeCod.ReadOnly := true;
  EditDtaGar.ReadOnly := true;
  EditPRoCod.Clear;
  EditProDes.Clear;
  EditProUn.Clear;
  EditQtde.Value   := 0;
  EditSalEst.Value := 0;
  EditPreco.Value  := 0;
  EditTotal.Value  := 0;
  EditNumItens.Value := 0;
  EditQtdeTot.Value := 0;
  EditPedTot.Value := 0;
  EditProCod.ReadOnly := false;
  EditProCod.SetFocus;
  LbPed.Caption := 'Pedido Iniciado';
  LbPed.Show;
end;

procedure TF_PedidosGarantia.BtnExcProClick(Sender: TObject);
begin
  if EditProCod.Text = EmptyStr then
    Exit;
end;

procedure TF_PedidosGarantia.BtnNovaClick(Sender: TObject);
begin
  SetarControlesReadOnly(TWinControl(Self),false);
  EditPedCod.Text := IntToStr(GetProximoPK('PEDIDO','PED_COD'));
  EditGarCod.SetFocus;
  EditProCod.ReadOnly := true;
end;

function TF_PedidosGarantia.CalculaTotal(nQtd, nPre: Extended): Extended;
begin
  if ((nQtd > 0) and (nPre > 0)) then
    result := (nPre * nQtd);
end;

procedure TF_PedidosGarantia.EditCliCodDblClick(Sender: TObject);
begin
  EditCliCod.Text := TelaConsultaExec('CLI001','');
end;

procedure TF_PedidosGarantia.EditCliCodExit(Sender: TObject);
begin
  if (EditCliCod.Text <> EmptyStr) then
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
  if not Assigned(F_ConsultaPartesGarantia) then
    F_ConsultaPartesGarantia := TF_COnsultaPartesGarantia.Create(self);
    F_ConsultaPartesGarantia._lCabecalho := true;
    F_ConsultaPartesGarantia._iGarantia  := StrToInt(EditGarCod.Text);
  F_ConsultaPartesGarantia.ShowModal;
  if F_ConsultaPartesGarantia.ModalResult <> MrOK then
  begin
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
  end else
  begin
    EditCliCod.Text := F_ConsultaPartesGarantia._varRetorno;
  end;
end;

procedure TF_PedidosGarantia.EditGarCodKeyPress(Sender: TObject; var Key: Char);
begin
  Key := SoNumero(Key);
end;

procedure TF_PedidosGarantia.EditOpeCodDblClick(Sender: TObject);
begin
  EditOpeCod.Text := TelaConsultaExec('OPE002','');
end;

procedure TF_PedidosGarantia.EditOpeCodExit(Sender: TObject);
begin
  if (EditOpeCod.Text <> EmptyStr) then
    EditOpeDes.Text := GetDbVal(EditOpeCod.Text,'OPE_COD','OPE_DES','OPERACOES');
end;

procedure TF_PedidosGarantia.EditOpeCodKeyPress(Sender: TObject; var Key: Char);
begin
  Key := SoNumero(Key);
end;

procedure TF_PedidosGarantia.EditProCodDblClick(Sender: TObject);
begin
  EditProCod.Text := TelaConsultaExec('PRO001','');
end;

procedure TF_PedidosGarantia.EditProCodExit(Sender: TObject);
begin
  if EditProCod.Text = EmptyStr then
    Exit;
  EditProCod.Text := StrZero(StrToInt(EditProCod.Text),6);
  EditProDes.Clear;
  EditProUn.Clear;
  EditSalEst.Value := 0;
  EditQtde.Value   := 0;
  EditPreco.Value  := 0;
  EditTotal.Value  := 0;
  with QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select PRO.PRO_DES, UNI.UNI_ABR From PRODUTO PRO');
    SQL.Add('Left Join UNIDADE UNI');
    SQL.Add(' On (UNI.UNI_COD = PRO.PRO_UNI)');
    SQL.Add('Where PRO.PRO_COD = :PRODUTO');
    ParamByName('PRODUTO').AsString := EditProCod.Text;
    Open;
    if not Eof then
    begin
      EditProDes.Text := QryAux.FieldByName('PRO_DES').AsString;
      EditProUn.Text  := QryAux.FieldByName('UNI_ABR').AsString;
    end;
  end;
  with QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select det.SAL_EST from progarantiadet det');
    SQL.Add('left join progarantia gar');
    SQL.Add('  on (gar.GAR_COD = det.GAR_COD)');
    if (EditGarCod.Text <> EmptyStr) then
    begin
      SQL.Add('where gar.GAR_COD = :garantia');
      ParamByName('garantia').AsInteger := StrToInt(EditGarCod.Text);
    end;
    SQL.Add('and gar.GAR_CLI = :cliente');
    SQL.Add('and det.PRO_COD = :produto');
    ParamByName('cliente').AsInteger  := StrToInt(EditCliCod.Text);
    ParamByName('produto').AsString   := EditProCod.Text;
    Open;
    if Eof then
    begin
      with QryAux2 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select det.SAL_EST from progarantiadet det');
        SQL.Add('left join progarantia gar');
        SQL.Add('  on (gar.GAR_COD = det.GAR_COD)');
        if (EditGarCod.Text <> EmptyStr) then
        begin
          SQL.Add('where gar.GAR_COD = :garantia');
          ParamByName('garantia').AsInteger := StrToInt(EditGarCod.Text);
        end;
        SQL.Add('and det.PRO_FOR = :cliente');
        SQL.Add('and det.PRO_COD = :produto');
        ParamByName('cliente').AsInteger  := StrToInt(EditCliCod.Text);
        ParamByName('produto').AsString   := EditProCod.Text;
        Open;
        if not Eof then
        begin
          EditSalEst.Value := QryAux2.FieldByName('SAL_EST').AsFloat;
          Exit;
        end;
      end;
      if (EditGarCod.Text <> EmptyStr) then
      begin
        ShowMessage('Este produto não existe neste garantia! Por favor, verifique');
        EditProCod.Clear;
        EditProCod.SetFocus;
      end else
      begin
        ShowMessage('Este cliente tem saldo desta mercadoria em garantia! Por favor, verifique');
        EditProCod.Clear;
        EditProCod.SetFocus;
      end;
    end else
      EditSalEst.Value := QryAux.FieldByName('SAL_EST').AsFloat;
  end;
end;

procedure TF_PedidosGarantia.EditProCodKeyPress(Sender: TObject; var Key: Char);
begin
  Key := SoNumero(Key);
end;

procedure TF_PedidosGarantia.EditQtdeExit(Sender: TObject);
begin
  CalculaTotal(EditQtde.Value, EditPreco.Value);
end;

procedure TF_PedidosGarantia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  F_PedidosGarantia := NIL;
end;

procedure TF_PedidosGarantia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl,0,0);
  end;
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
