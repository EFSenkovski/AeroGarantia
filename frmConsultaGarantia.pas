unit frmConsultaGarantia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Mask, RxToolEdit, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.Provider, Datasnap.DBClient, IdThreadComponent, IdBaseComponent,
  frxClass, frxDBSet;

type
  TF_ConsultaGarantia = class(TForm)
    Panel1: TPanel;
    LbTopo: TLabel;
    Panel2: TPanel;
    PageControl: TPageControl;
    TbConsulta: TTabSheet;
    TbManut: TTabSheet;
    QryConsulta: TFDQuery;
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    DspConsulta: TDataSetProvider;
    CdsConsultaGARANTIA: TIntegerField;
    CdsConsultaCLIENTE: TIntegerField;
    CdsConsultaNOME_CLIENTE: TStringField;
    CdsConsultaOPERACAO: TIntegerField;
    CdsConsultaDESCRICAO_OPERACAO: TStringField;
    CdsConsultaDATA: TSQLTimeStampField;
    CdsConsultaEMPRESA: TIntegerField;
    CdsConsultaDATA_SAIDA: TSQLTimeStampField;
    CdsConsultaPEDIDO_SAIDA: TIntegerField;
    CdsConsultaNOTA_SAIDA: TIntegerField;
    CdsConsultaSERIE_SAIDA: TStringField;
    CdsConsultaSTATUS: TStringField;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditClicod: TEdit;
    EditCod: TEdit;
    EditCliNom: TEdit;
    EditDtaIni: TDateEdit;
    EditDtaFim: TDateEdit;
    BtnConsultar: TBitBtn;
    EditNota: TEdit;
    EditSerie: TEdit;
    ThreadConsulta: TIdThreadComponent;
    PnConsu: TPanel;
    EditMGarCod: TEdit;
    Label7: TLabel;
    EditMCliCod: TEdit;
    Label8: TLabel;
    EditMCliNom: TEdit;
    EditMOpeCod: TEdit;
    Label9: TLabel;
    EditMOpeDes: TEdit;
    EditMDtaGar: TDateEdit;
    Label10: TLabel;
    EditMDtaSai: TDateEdit;
    Label11: TLabel;
    EditMPedCod: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    EditMNota: TEdit;
    Label14: TLabel;
    EditMSerie: TEdit;
    RdgStatus: TRadioGroup;
    frxReport: TfrxReport;
    r: TDBGrid;
    BtnImprimir: TBitBtn;
    QrySingle: TFDQuery;
    QryProdutos: TFDQuery;
    DsProdutos: TDataSource;
    QryProdutosPRO_COD: TStringField;
    QryProdutosPRO_DES: TStringField;
    QryProdutosPRO_QTD: TFloatField;
    QryProdutosPRO_PRE: TFloatField;
    QryProdutosPRO_TOT: TFloatField;
    QryProdutosPRO_FOR: TIntegerField;
    QryProdutosCLI_NOM: TStringField;
    QryProdutosSAL_EST: TFloatField;
    QryProdutosSAL_CLI: TFloatField;
    QryProdutosSAL_FOR: TFloatField;
    QryProdutosSAL_REJ: TFloatField;
    frxDBDatasetMaster: TfrxDBDataset;
    frxDBDatasetDet: TfrxDBDataset;
    BtnConfirmar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnConsultarClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure ThreadConsultaRun(Sender: TIdThreadComponent);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbreQuery();
    procedure CarregaCabecalhoGarantia;
    procedure CarregaProdutosGarantia;
  public
    { Public declarations }
    _lModal: Boolean;
    _iGarCod: Integer;
  end;

var
  F_ConsultaGarantia: TF_ConsultaGarantia;

implementation

{$R *.dfm}

uses dmMain, DateUtils, frmMain;

procedure TF_ConsultaGarantia.AbreQuery;
begin
  try
    try
      CdsConsulta.Close;
      with QryConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Select');
        SQL.Add('  GAR.GAR_COD As GARANTIA,');
        SQL.Add('  GAR.GAR_CLI AS CLIENTE,');
        SQL.Add('  CLI.CLI_NOM AS NOME_CLIENTE,');
        SQL.Add('  GAR.GAR_OPE AS OPERACAO,');
        SQL.Add('  OPE.OPE_DES AS D_OPERACAO,');
        SQL.Add('  GAR.GAR_DTA AS DATA,');
        SQL.Add('  GAR.GAR_EMP AS EMPRESA,');
        SQL.Add('  GAR.GAR_SAIDTA AS DATA_SAIDA,');
        SQL.Add('  GAR.GAR_SAIPED AS PEDIDO_SAIDA,');
        SQL.Add('  GAR.GAR_SAINOT AS NOTA_SAIDA,');
        SQL.Add('  GAR.GAR_SAISER AS SERIE_SAIDA,');
        SQL.Add('  CASE GAR.GAR_STATUS');
        SQL.Add('    When 0 THEN ''PENDENTE''');
        SQL.Add('    When 1 THEN ''EFETIVADA''');
        SQL.Add('  END As STATUS');
        SQL.Add('From PROGARANTIA GAR');
        SQL.Add('Left Join CLIENTE CLI');
        SQL.Add('  On (CLI.CLI_COD = GAR.GAR_CLI)');
        SQL.Add('Left Join OPERACOES OPE');
        SQL.Add('  On (OPE.OPE_COD = GAR.GAR_OPE)');
        SQL.Add('Where GAR.GAR_DTA Between :INICIO And :FINAL');
        SQL.Add('And GAR.GAR_EMP = :EMPRESA');
        ParamByName('EMPRESA').AsInteger := F_Main._oSessao.EmpresaCod;
        ParamByName('INICIO').AsDateTime := DateOf(EditDtaIni.Date);
        ParamByName('FINAL').AsDateTime  := DateOf(EditDtaFim.Date);
        if not (EditCod.Text = EmptyStr) then
        begin
          SQL.Add('And GAR.GAR_COD = :CODIGO');
          ParamByName('CODIGO').AsInteger := StrToInt(EditCod.Text);
        end;
        if not (EditCliCod.Text = EmptyStr) then
        begin
          SQL.Add('And GAR.GAR_CLI = :CLIENTE');
          ParamByName('CLIENTE').AsInteger := StrToInt(EditCliCod.Text);
        end;
        if not (EditNota.Text = EmptyStr) then
        begin
          SQL.Add('And GAR.GAR_SAINOT = :NOTA');
          ParamByName('NOTA').AsInteger := StrToInt(EditNota.Text);
        end;
        if not (EditSerie.Text = EmptyStr) then
        begin
          SQL.Add('And GAR.GAR_SAISER = :SERIE');
          ParamByName('SERIE').AsInteger := StrToInt(EditSerie.Text);
        end;
      end;
      CdsConsulta.Open;
    except
      on e:exception do
      begin
        messageDlg('Não foi possível consultar' + #13 + e.Message, mtError, mbOkCancel,0);
      end;
    end;
  finally
    ThreadConsulta.Stop;
  end;
end;

procedure TF_ConsultaGarantia.BtnConfirmarClick(Sender: TObject);
begin
  _iGarCod := CdsConsultaGARANTIA.AsInteger;
end;

procedure TF_ConsultaGarantia.BtnConsultarClick(Sender: TObject);
begin
  Application.ProcessMessages;
  PnConsu.Show;
  AbreQuery();
  PnConsu.Hide;
  Application.ProcessMessages;
//  ThreadConsulta.Active := true;
end;

procedure TF_ConsultaGarantia.CarregaCabecalhoGarantia;
begin
  EditMGarCod.Clear;
  EditMCliCod.Clear;
  EditMCliNom.Clear;
  EditMOpeCod.Clear;
  EditMOpeDes.Clear;
  EditMDtaGar.Clear;
  EditMDtaSai.Clear;
  EditMPedCod.Clear;
  EditMNota.Clear;
  EditMSerie.Clear;
  with QrySingle do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select');
    SQL.Add('  GAR.GAR_COD,');
    SQL.Add('  GAR.GAR_CLI,');
    SQL.Add('  CLI.CLI_NOM,');
    SQL.Add('  GAR.GAR_OPE,');
    SQL.Add('  OPE.OPE_DES,');
    SQL.Add('  GAR.GAR_DTA,');
    SQL.Add('  GAR.GAR_EMP,');
    SQL.Add('  GAR.GAR_SAIDTA,');
    SQL.Add('  GAR.GAR_SAIPED,');
    SQL.Add('  GAR.GAR_SAINOT,');
    SQL.Add('  GAR.GAR_SAISER,');
    SQL.Add('  GAR.GAR_STATUS');
    SQL.Add('From PROGARANTIA GAR');
    SQL.Add('Left Join CLIENTE CLI');
    SQL.Add('  On (CLI.CLI_COD = GAR.GAR_CLI)');
    SQL.Add('Left Join OPERACOES OPE');
    SQL.Add('  On (OPE.OPE_COD = GAR.GAR_OPE)');
    SQL.Add('Where GAR.GAR_COD = :GARANTIA');
    ParamByName('GARANTIA').AsInteger := CdsConsultaGARANTIA.AsInteger;
    Open;
    if not Eof then
    begin
      EditMGarCod.Text := QrySingle.FieldByName('GAR_COD').AsString;
      EditMCliCod.Text := QrySingle.FieldByName('GAR_CLI').AsString;
      EditMCliNom.Text := QrySingle.FieldByName('CLI_NOM').AsString;
      EditMOpeCod.Text := QrySingle.FieldByName('GAR_OPE').AsString;
      EditMOpeDes.Text := QrySingle.FieldByName('OPE_DES').AsString;
      EditMDtaGar.Date := QrySingle.FieldByName('GAR_DTA').AsDateTime;
      EditMDtaSai.Date := QrySingle.FieldByName('GAR_SAIDTA').AsDateTime;
      EditMPedCod.Text := QrySingle.FieldByName('GAR_SAIPED').AsString;
      EditMNota.Text   := QrySingle.FieldByName('GAR_SAINOT').AsString;
      EditMSerie.Text  := QrySingle.FieldByName('GAR_SAISER').AsString;
      RdgStatus.ItemIndex := FieldByName('GAR_STATUS').AsInteger;
    end;
  end;
end;

procedure TF_ConsultaGarantia.CarregaProdutosGarantia;
begin
  with QryProdutos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select');
    SQL.Add('  DET.PRO_COD,');
    SQL.Add('  PRO.PRO_DES,');
    SQL.Add('  DET.PRO_QTD,');
    SQL.Add('  DET.PRO_PRE,');
    SQL.Add('  DET.PRO_TOT,');
    SQL.Add('  DET.PRO_FOR,');
    SQL.Add('  CLI.CLI_NOM,');
    SQL.Add('  DET.SAL_EST,');
    SQL.Add('  DET.SAL_CLI,');
    SQL.Add('  DET.SAL_FOR,');
    SQL.Add('  DET.SAL_REJ');
    SQL.Add('From PROGARANTIADET DET');
    SQL.Add('Left Join PRODUTO PRO');
    SQL.Add('  On (PRO.PRO_COD = DET.PRO_COD)');
    SQL.Add('Left Join CLIENTE CLI');
    SQL.Add('  On (CLI.CLI_COD = DET.PRO_FOR)');
    SQL.Add('Where DET.GAR_COD = :GARANTIA');
    ParamByName('GARANTIA').AsInteger := CdsConsultaGARANTIA.AsInteger;
    Open;
  end;
end;

procedure TF_ConsultaGarantia.DBGrid1DblClick(Sender: TObject);
begin
//
  CarregaCabecalhoGarantia;
  CarregaProdutosGarantia;
  PageControl.ActivePage := TbManut;
end;

procedure TF_ConsultaGarantia.DBGrid1TitleClick(Column: TColumn);
begin
  CdsConsulta.IndexFieldNames := Column.FieldName;
end;

procedure TF_ConsultaGarantia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  F_ConsultaGarantia := NIL;
end;

procedure TF_ConsultaGarantia.FormCreate(Sender: TObject);
begin
  EditDtaIni.Date := DateOf(Now - 30);
  EditDtaFim.Date := DateOf(Now + 1);
  BtnConsultar.Click;
end;

procedure TF_ConsultaGarantia.ThreadConsultaRun(Sender: TIdThreadComponent);
begin
  AbreQuery;
end;

end.
