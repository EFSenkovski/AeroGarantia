unit frmNovaGarantia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  ACBrBase, ACBrDFe, ACBrNFe, Data.DB, Vcl.Grids, Vcl.DBGrids, uGarantia,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask, RxToolEdit, RxCurrEdit, Datasnap.DBClient;

type
  TF_NovaGarantia = class(TForm)
    Panel1: TPanel;
    LbTopo: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    BtnNova: TBitBtn;
    BtnImp: TSpeedButton;
    Label1: TLabel;
    OpenDialog: TOpenDialog;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    BtnImprimir: TSpeedButton;
    QryAux: TFDQuery;
    GrbProd: TGroupBox;
    DBGridProds: TDBGrid;
    Panel5: TPanel;
    GrbVenda: TGroupBox;
    BtnPesq: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    LbVenValor: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    EditVenRep: TEdit;
    EditNot: TEdit;
    EditSer: TEdit;
    GrbOpe: TGroupBox;
    EditOpeDes: TEdit;
    EditOpeCod: TEdit;
    GrbCli: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EditCliente: TEdit;
    EditCliNom: TEdit;
    EditCNPJ: TEdit;
    EditIE: TEdit;
    EditEndereco: TEdit;
    EditBairro: TEdit;
    EditNum: TEdit;
    EditCidade: TEdit;
    EditTelefone: TEdit;
    EditEmail: TEdit;
    Panel6: TPanel;
    Label3: TLabel;
    EditProCod: TEdit;
    Label12: TLabel;
    EditProdes: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EditforCod: TEdit;
    EditForNom: TEdit;
    lbForn: TLabel;
    Panel7: TPanel;
    Label2: TLabel;
    EditGarCod: TEdit;
    EditQtd: TCurrencyEdit;
    EditSalEst: TCurrencyEdit;
    EditSalCli: TCurrencyEdit;
    EditSalFor: TCurrencyEdit;
    EditSalRej: TCurrencyEdit;
    EditPreco: TCurrencyEdit;
    EditTotal: TCurrencyEdit;
    EditVlrNota: TCurrencyEdit;
    EditDtaNota: TDateEdit;
    BtnAddProduto: TBitBtn;
    CdsProdutosGarantia: TClientDataSet;
    DsProdutosGarantia: TDataSource;
    CdsProdutosGarantiaPRO_COD: TStringField;
    CdsProdutosGarantiaPRO_DES: TStringField;
    CdsProdutosGarantiaPRO_QTD: TFloatField;
    CdsProdutosGarantiaPRO_PRE: TFloatField;
    CdsProdutosGarantiaPRO_TOT: TFloatField;
    CdsProdutosGarantiaPRO_FOR: TIntegerField;
    CdsProdutosGarantiaPRO_SALEST: TFloatField;
    CdsProdutosGarantiaPRO_SALCLI: TFloatField;
    CdsProdutosGarantiaPRO_SALFOR: TFloatField;
    CdsProdutosGarantiaPRO_SALREJ: TFloatField;
    CdsProdutosGarantiaFOR_NOM: TStringField;
    LbSumSal: TLabel;
    QryGeral: TFDQuery;
    procedure BtnImpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnNovaClick(Sender: TObject);
    procedure EditClienteKeyPress(Sender: TObject; var Key: Char);
    procedure EditClienteDblClick(Sender: TObject);
    procedure EditCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure EditIEKeyPress(Sender: TObject; var Key: Char);
    procedure EditOpeCodKeyPress(Sender: TObject; var Key: Char);
    procedure EditClienteExit(Sender: TObject);
    procedure EditOpeCodExit(Sender: TObject);
    procedure EditOpeCodDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditProCodDblClick(Sender: TObject);
    procedure BtnPesqClick(Sender: TObject);
    procedure EditProCodExit(Sender: TObject);
    procedure EditProCodKeyPress(Sender: TObject; var Key: Char);
    procedure EditQtdExit(Sender: TObject);
    procedure EditSalEstExit(Sender: TObject);
    procedure EditSalCliExit(Sender: TObject);
    procedure EditSalForExit(Sender: TObject);
    procedure EditSalRejExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAddProdutoClick(Sender: TObject);
    procedure EditforCodDblClick(Sender: TObject);
    procedure EditforCodExit(Sender: TObject);
    procedure EditforCodKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EditPrecoExit(Sender: TObject);
  private
    { Private declarations }
    _oGarantia: TGarantia;
    _lSaldosValidos: Boolean;
    procedure LimparCamposCliente;
    procedure AtivaDesativaCamposCliente(sAcao: String);
    function ValidaSaldos(): boolean;
  public
    { Public declarations }
  end;

var
  F_NovaGarantia: TF_NovaGarantia;

implementation

{$R *.dfm}

uses uFuncoes, dmMain, frmImportaNfe, frmConsultaNota, frmFornecedorProduto,
  frmMain, DateUtils;

procedure TF_NovaGarantia.AtivaDesativaCamposCliente(sAcao: String);
begin
  if (sAcao = 'ATIVAR') then
  begin
    // Color
    EditCliente.Color := clWhite;
    // ReadOnly
    EditCliente.ReadOnly := false;
  end else
  if (sAcao = 'DESATIVAR') then
  begin
    // Color
    EditCliente.Color := clSilver;
    // ReadOnly
    EditCliente.ReadOnly := true;
  end;
end;

procedure TF_NovaGarantia.BtnNovaClick(Sender: TObject);
begin
  _oGarantia := TGarantia.Create;
  _oGarantia.Nova := true;
  EditGarCod.Text := IntToStr(_oGarantia.Codigo);
  EditOpeCod.SetFocus;
  AtivaDesativaCamposCliente('ATIVAR');
  EditOpeCod.Color := clWhite;
  EditOpeCod.ReadOnly := false;
end;

procedure TF_NovaGarantia.BtnPesqClick(Sender: TObject);
begin
  if (EditGarCod.Text = EmptyStr) then
  begin
    Exit;
  end;
  if not Assigned(F_ConsultaNota) then
    F_ConsultaNota := TF_ConsultaNota.Create(nil);
  F_ConsultaNota.ShowModal;
  if (F_ConsultaNota.ModalResult = mrOk) then
  begin
    EditNot.Text      := F_ConsultaNota._sNot;
    EditSer.Text      := F_ConsultaNota._sSer;
    EditVenRep.Text   := F_ConsultaNota._sRep;
    EditDtaNota.Date  := F_ConsultaNota._dDtaVen;
    EditVlrNOta.Value := F_ConsultaNota._nTotVen;
  end;
end;

procedure TF_NovaGarantia.EditPrecoExit(Sender: TObject);
begin
  EditTotal.Value := EditQtd.Value * EditPreco.Value;
end;

procedure TF_NovaGarantia.EditProCodDblClick(Sender: TObject);
begin
  EditProCod.Text := TelaConsultaExec('PRO001','');
end;

procedure TF_NovaGarantia.EditProCodExit(Sender: TObject);
begin
  if EditProCod.Text = EmptyStr then
    Exit;
  EditProCod.Text := StrZero(StrToInt(EditProCod.Text),6);
  with QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select PRO.PRO_COD, UNI.UNI_ABR, PRO.PRO_DES, PRO.PRO_VEN From PRODUTO PRO');
    SQL.Add('Left Join UNIDADE UNI');
    SQL.Add('On (UNI.UNI_COD = PRO.PRO_UNI)');
    SQL.Add('Where PRO.PRO_COD = :PRODUTO');
    ParamByname('PRODUTO').AsString := EditProCod.Text;
    Open;
    if not Eof then
    begin
      EditProDes.Text := QryAux.FieldByName('PRO_DES').AsString;
      EditPreco.Value := QryAux.FieldByName('PRO_VEN').AsFloat;

    end;
  end;
end;

procedure TF_NovaGarantia.EditProCodKeyPress(Sender: TObject; var Key: Char);
begin
  Key := SoNumero(Key);
end;

procedure TF_NovaGarantia.EditQtdExit(Sender: TObject);
begin
  if EditQtd.Value > 0 then
  begin
    if (EditSalEst.Value = 0) and
       (EditsalCli.Value = 0) and
       (EditSalRej.Value = 0) and
       (EditSalFor.Value = 0) then
    begin
      EditSalEst.Value := EditQtd.Value;
    end;
  end;
  EditTotal.Value := EditQtd.Value * EditPreco.Value;
end;

procedure TF_NovaGarantia.EditSalCliExit(Sender: TObject);
begin
  _lSaldosValidos := ValidaSaldos;
end;

procedure TF_NovaGarantia.EditSalEstExit(Sender: TObject);
begin
  _lSaldosValidos := ValidaSaldos;
end;

procedure TF_NovaGarantia.EditSalForExit(Sender: TObject);
begin
  _lSaldosValidos := ValidaSaldos;
end;

procedure TF_NovaGarantia.EditSalRejExit(Sender: TObject);
begin
  _lSaldosValidos := ValidaSaldos;
end;

procedure TF_NovaGarantia.EditClienteDblClick(Sender: TObject);
begin
  EditCliente.Text := TelaConsultaExec('CLI001','');
end;

procedure TF_NovaGarantia.EditClienteExit(Sender: TObject);
begin
  if EditCliente.Text = EmptyStr then
    Exit;
  with QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select CLI_NOM, CLI_CGC, CLI_INS, CLI_END, CLI_NUM, CLI_BAI,');
    SQL.Add('CID.CID_NOM, CLI_TEL, CLI_EMA From CLIENTE CLI ');
    SQl.Add('Left Join CIDADE CID');
    SQL.Add('On (CID.CID_COD = CLI.CLI_CID)');
    SQl.Add('Where CLI_COD = :CLIENTE');
    ParamByName('CLIENTE').AsInteger := StrToInt(EditCliente.Text);
    Open;
    if not Eof then
    begin
      EditCliNom.Text   := FieldByName('CLI_NOM').AsString;
      EditCNPJ.Text     := FieldByName('CLI_CGC').AsString;
      EditIE.Text       := FieldByName('CLI_INS').AsString;
      EditEndereco.Text := FieldByName('CLI_END').AsString;
      EditNum.Text      := FieldByName('CLI_NUM').AsString;
      EditBairro.Text   := FieldByName('CLI_END').AsString;
      EditCidade.Text   := FieldByName('CID_NOM').AsString;
      EditTelefone.Text := FieldByName('CLI_TEL').AsString;
      EditEmail.Text    := FieldByName('CLI_EMA').AsString;
    end;

  end;
end;

procedure TF_NovaGarantia.EditClienteKeyPress(Sender: TObject; var Key: Char);
begin
  Key := soNumero(Key);
end;

procedure TF_NovaGarantia.EditCNPJKeyPress(Sender: TObject; var Key: Char);
begin
  Key := soNumero(Key);
end;

procedure TF_NovaGarantia.EditforCodDblClick(Sender: TObject);
begin
  EditforCod.Text := TelaConsultaExec('CLI001','');
end;

procedure TF_NovaGarantia.EditforCodExit(Sender: TObject);
begin
  EditForNom.Text := GetDbVal(EditForCod.Text,'CLI_COD','CLI_NOM','CLIENTE');
end;

procedure TF_NovaGarantia.EditforCodKeyPress(Sender: TObject; var Key: Char);
begin
  Key := SoNumero(Key);
end;

procedure TF_NovaGarantia.EditIEKeyPress(Sender: TObject; var Key: Char);
begin
  Key := soNumero(Key);
end;

procedure TF_NovaGarantia.EditOpeCodDblClick(Sender: TObject);
begin
  EditopeCod.Text := TelaConsultaExec('OPE002','');
end;

procedure TF_NovaGarantia.EditOpeCodExit(Sender: TObject);
var
  sUso: string;
begin
  if (EditOpeCod.Text = EmptyStr) then
    Exit;
  with QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select OPE.OPE_DES, GAR.OPE_USO from OPERACOES OPE');
    SQL.Add('Inner Join OPERACOESGARANTIA GAR');
    SQL.Add('On (GAR.OPE_COD = OPE.OPE_COD)');
    SQL.Add('Where OPE.OPE_COD = :OPERACAO');
    ParamByName('OPERACAO').AsInteger := StrToInt(EditOpeCod.Text);
    Open;
    if not Eof then
    begin
      case FieldByName('OPE_USO').AsInteger of
        0: sUso := 'Entrada Garantia Fornecedor';
        1: sUso := 'Entrada Garantia Cliente';
        2: sUso := 'Saída Garantia Fornecedor';
        3: sUso := 'Saída Garantia Cliente';
      end;
      EditOpeDes.Text := FieldByName('OPE_DES').AsString + ' | ' + sUso;
    end;
  end;
end;

procedure TF_NovaGarantia.EditOpeCodKeyPress(Sender: TObject; var Key: Char);
begin
  Key := soNumero(Key);
end;

procedure TF_NovaGarantia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  F_NovaGarantia := NIL;
end;

procedure TF_NovaGarantia.FormCreate(Sender: TObject);
begin
  _lSaldosValidos := false;
end;

procedure TF_NovaGarantia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl,0,0);
  end;
end;

procedure TF_NovaGarantia.LimparCamposCliente;
begin

end;

procedure TF_NovaGarantia.SpeedButton2Click(Sender: TObject);
var
  iNumPed, iNumNot: Integer;
  ddtaVenda: TDateTime;
  iGarCod: Integer;
begin
    with QryGeral do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Insert Into PROGARANTIA(');
      SQL.Add('GAR_COD,');
      SQL.Add('GAR_CLI,');
      SQL.Add('GAR_OPE,');
      SQL.Add('GAR_DTA,');
      SQL.Add('GAR_EMP,');
      SQL.Add('GAR_SAIDTA,');
      SQL.Add('GAR_SAIPED,');
      SQL.Add('GAR_SAINOT,');
      SQL.Add('GAR_SAISER,');
      SQL.Add('GAR_STATUS');
      SQL.Add(') Values (');
      SQL.Add(':GAR_COD,');
      SQL.Add(':GAR_CLI,');
      SQL.Add(':GAR_OPE,');
      SQL.Add(':GAR_DTA,');
      SQL.Add(':GAR_EMP,');
      SQL.Add(':GAR_SAIDTA,');
      SQL.Add(':GAR_SAIPED,');
      SQL.Add(':GAR_SAINOT,');
      SQL.Add(':GAR_SAISER,');
      SQL.Add(':GAR_STATUS');
      SQL.Add(')');
      iGarCod := StrToInt(EditGarCod.Text);
      ParamByName('GAR_COD').AsInteger    := iGarCod;
      ParamByName('GAR_CLI').AsInteger    := StrToInt(EditCliente.Text);
      ParamByName('GAR_OPE').AsInteger    := StrToInt(EditOpeCod.Text);
      ParamByName('GAR_DTA').AsDate       := DateOf(F_Main.dDtaMov);
      ParamByName('GAR_EMP').AsInteger    := F_Main._oSessao.EmpresaCod;
      dDtaVenda := EditDtaNota.Date;
      iNumPed := 0;
      if (EditNot.Text = EmptyStr) then
        iNumNot := 0
      else
        iNumNot := StrToInt(EditNot.Text);
      ParamByName('GAR_SAIDTA').AsDate    := DateOf(dDtaVenda);
      ParamByName('GAR_SAIPED').AsInteger := iNumPed;
      ParamByName('GAR_SAINOT').AsInteger := iNumNot;
      ParamByName('GAR_SAISER').AsString  := EditSer.Text;
      ParamByName('GAR_STATUS').AsInteger := 0; // pendente - 1 = efetivada
      ExecSQL;
    end;
    try
      CdsProdutosGarantia.DisableControls;
      while not CdsProdutosGarantia.Eof do
      begin
        with QryGeral do
        begin
          Close;
          SQL.Clear;
          SQL.Add('Insert Into PROGARANTIADET (');
          SQL.Add('    GAR_COD, PRO_COD, PRO_QTD, PRO_PRE, PRO_TOT,');
          SQL.Add('    PRO_FOR, SAL_CLI, SAL_FOR, SAL_REJ, SAL_EST');
          SQl.Add(') Values (');
          SQL.Add('    :GAR_COD, :PRO_COD, :PRO_QTD, :PRO_PRE, :PRO_TOT,');
          SQL.Add('    :PRO_FOR, :SAL_CLI, :SAL_FOR, :SAL_REJ, :SAL_EST');
          SQL.Add(')');
          ParamByName('GAR_COD').AsInteger := iGarCod;
          ParamByName('PRO_COD').AsString  := CdsProdutosGarantiaPRO_COD.AsString;
          ParamByname('PRO_QTD').AsFloat   := CdsProdutosGarantiaPRO_QTD.AsFloat;
          ParamByName('PRO_PRE').AsFloat   := CdsProdutosGarantiaPRO_PRE.AsFloat;
          ParamByName('PRO_TOT').AsFloat   := CdsProdutosGarantiaPRO_TOT.AsFloat;
          ParamByName('PRO_FOR').AsInteger := CdsProdutosGarantiaPRO_FOR.AsInteger;
          paramByName('SAL_CLI').AsFloat   := CdsProdutosGarantiaPRO_SALCLI.AsFloat;
          paramByName('SAL_FOR').AsFloat   := CdsProdutosGarantiaPRO_SALFOR.AsFloat;
          paramByName('SAL_REJ').AsFloat   := CdsProdutosGarantiaPRO_SALREJ.AsFloat;
          paramByName('SAL_EST').AsFloat   := CdsProdutosGarantiaPRO_SALEST.AsFloat;
          ExecSQL;
        end;
        CdsProdutosGarantia.Next;
      end;
    finally
      CdsProdutosGarantia.EnableControls;
    end;

end;

function TF_NovaGarantia.ValidaSaldos(): boolean;
var
  nQtd, nSal: Extended;
begin
  nSal := EditSalEst.Value + EditSalCli.Value + EditSalFor.Value + EditSalRej.Value;
  nQtd := EditQtd.Value;
  LbSumSal.Caption := FormatFloat('###,##0.00',nSal);
  if (nSal > nQtd) then
  begin
    LbSumSal.Font.Color := clRed;
    result := False;
  end else
  begin
    LbSumSal.Font.Color := $00873E01;
    result := True;
  end;

end;

procedure TF_NovaGarantia.BtnAddProdutoClick(Sender: TObject);
var
 iFor: Integer;
 sForNom: String;
begin
  if not CdsProdutosGarantia.Active  then
    Exit;
  if (EditProCod.Text = EmptyStr) then
    Exit;
  if (EditforCod.Text = EmptyStr) then
    Exit;
  if not (_lSaldosValidos) then
  begin
    ShowMessage('Os Saldos/Quantidade não conferem! Por favor, verifique');
    Exit;
  end;
  if (EditforCod.Text = EmptyStr) or
     (EditForNom.Text = EmptyStr) then
  begin
      if not Assigned(F_FornecedorProduto) then
        F_FornecedorProduto := TF_FornecedorProduto.Create(nil);
      F_FornecedorProduto.EditProCod.Text := CdsProdutosGarantiaPRO_COD.AsString;
      F_FornecedorProduto.EditProDes.Text := CdsProdutosGarantiaPRO_DES.AsString;
      F_FornecedorProduto.EditQtdNota.Value := CdsProdutosGarantiaPRO_QTD.AsFloat;
      F_FornecedorProduto.EditSalEst.Value := CdsProdutosGarantiaPRO_SALEST.AsFloat;
      F_FornecedorProduto.EditSalCli.Value := CdsProdutosGarantiaPRO_SALCLI.AsFloat;
      F_FornecedorProduto.EditSalFor.Value := CdsProdutosGarantiaPRO_SALFOR.AsFloat;
      F_FornecedorProduto.EditSalRej.Value := CdsProdutosGarantiaPRO_SALREJ.AsFloat;
      F_Fornecedorproduto.QryForPro.Close;
      F_Fornecedorproduto.QryForPro.ParamByName('PRO').AsString := CdsProdutosGarantiaPRO_COD.AsString;
      F_Fornecedorproduto.QryForPro.Open;
      F_FornecedorProduto.EditForCod.Text := F_Fornecedorproduto.QryForPro.FieldByname('CLI_COD').AsString;
      F_FornecedorProduto.EditForNom.Text := F_Fornecedorproduto.QryForPro.FieldByname('CLI_NOM').AsString;
      F_FornecedorProduto.ShowModal;
      if (F_FornecedorProduto.ModalResult <> mrOk) then
        ShowMessage('Fornecedor não selecionado');

  end;
  CdsProdutosGarantia.Append;
  CdsProdutosGarantiaPRO_COD.AsString   := EditProCod.Text;
  CdsProdutosGarantiaPRO_DES.AsString   := EditProDes.Text;
  CdsProdutosGarantiaPRO_QTD.AsFloat    := EditQtd.Value;
  CdsProdutosGarantiaPRO_PRE.AsFloat    := EditPreco.Value;
  CdsProdutosGarantiaPRO_TOT.AsFloat    := EditTotal.Value;
  CdsProdutosGarantiaPRO_FOR.AsInteger  := StrToInt(EditforCod.Text);
  CdsProdutosGarantiaFOR_NOM.AsString   := EditForNom.Text;
  CdsProdutosGarantiaPRO_SALEST.AsFloat := EditSalEst.Value;
  CdsProdutosGarantiaPRO_SALCLI.AsFloat := EditSalCli.Value;
  CdsProdutosGarantiaPRO_SALFOR.AsFloat := EditSalfor.Value;
  CdsProdutosGarantiaPRO_SALREJ.AsFloat := EditsalRej.Value;
  CdsProdutosGarantia.Post;
end;

procedure TF_NovaGarantia.BtnImpClick(Sender: TObject);
begin
  if (EditGarCod.Text = EmptyStr) then
  begin
    BtnNova.Click;
    Exit;
  end;
  if (EditOpeCod.Text = EmptyStr) then
  begin
    ShowMessage('Informe a operação da garantia!');
    EditOpeCod.SetFocus;
    Exit;
  end;
  if not Assigned(F_ImportaNFe) then
    F_ImportaNFe := TF_ImportaNFe.Create(nil);
  F_ImportaNFe._iGarOpe := StrToInt(EditOpeCod.Text);
  F_ImportaNFe.Show;
  F_ImportaNFe.BtnImp.Click;
  Self.Close;
end;

end.
