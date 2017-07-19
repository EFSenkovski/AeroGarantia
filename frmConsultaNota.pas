unit frmConsultaNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider,
  Datasnap.DBClient, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask,
  RxToolEdit, DateUtils;

type
  TF_ConsultaNota = class(TForm)
    Panel1: TPanel;
    LbTopo: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    EditNot: TEdit;
    EditSer: TEdit;
    EditCli: TEdit;
    EditCliNom: TEdit;
    BtnPesquisar: TBitBtn;
    PnDetail: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QryMaster: TFDQuery;
    DsMaster: TDataSource;
    CdsMaster: TClientDataSet;
    DspMaster: TDataSetProvider;
    QryDetail: TFDQuery;
    CdsDetail: TClientDataSet;
    DsDetail: TDataSource;
    DspDetail: TDataSetProvider;
    Label3: TLabel;
    EditInicio: TDateEdit;
    EditFinal: TDateEdit;
    Label6: TLabel;
    CdsMasterNOT_COD: TIntegerField;
    CdsMasterNOT_SER: TStringField;
    CdsMasterNOT_MOD: TStringField;
    CdsMasterNOT_DTA: TSQLTimeStampField;
    CdsMasterNOT_CLICOD: TIntegerField;
    CdsMasterCLI_NOM: TStringField;
    CdsMasterNOT_VEN: TIntegerField;
    CdsMasterVEN_NOM: TStringField;
    Panel4: TPanel;
    BtnConfirmar: TBitBtn;
    CdsDetailPRO_COD: TStringField;
    CdsDetailPRO_DES: TStringField;
    CdsDetailPRO_QTD: TFloatField;
    CdsDetailPRO_PRE: TFloatField;
    CdsDetailPRO_TOT: TFloatField;
    CdsMasterNOT_VLRTOT: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure EditCliDblClick(Sender: TObject);
    procedure EditCliExit(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbreQry(sOrdernar: String);
  public
    { Public declarations }
    _sNot, _sSer, _sRep: String;
    _dDtaVen: TDateTime;
    _nTotVen: Extended;
  end;

var
  F_ConsultaNota: TF_ConsultaNota;

implementation

{$R *.dfm}

uses dmMain, uFuncoes;

procedure TF_ConsultaNota.AbreQry(sOrdernar: string);
begin
  CdsMaster.Close;
  with QryMaster do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select NOTA.NOT_COD, NOTA.NOT_SER, NOTA.NOT_MOD, NOTA.NOT_DTA, NOTA.NOT_CLICOD, CLI.CLI_NOM,');
    SQL.Add('       NOTA.NOT_VEN, VEN.VEN_NOM, NOTA.NOT_VLRTOT');
    SQL.Add('From NOTAFISCAL NOTA');
    SQL.Add('Left Join VENDEDOR VEN');
    SQL.Add(' On (VEN.VEN_COD = NOTA.NOT_VEN)');
    SQL.Add('Left Join CLIENTE CLI');
    SQL.Add(' On (CLI.CLI_COD = NOTA.NOT_CLICOD)');
    SQL.Add('Where NOTA.NOT_DTA Between :INICIO And :FINAL');
    ParamByName('INICIO').AsDate := DateOf(EditInicio.Date);
    ParamByName('FINAL').AsDate  := DateOf(EditFinal.Date);
    if EditNot.Text <> EmptyStr then
    begin
      SQL.Add('And NOTA.NOT_COD = :NOTA');
      ParamByName('NOTA').AsInteger := StrToInt(EditNot.Text);
    end;
    if EditSer.Text <> EmptyStr then
    begin
      SQL.Add('And NOTA.NOT_SER = :SERIE');
      ParamByName('SERIE').AsString := EditSer.Text;
    end;
    if EditCli.Text <> EmptyStr then
    begin
      SQL.Add('And NOTA.NOT_CLICOd = :CLIENTE');
      ParamByName('CLIENTE').AsInteger := StrToInt(EditSer.Text);
    end;
    SQL.Add('Order By NOTA.NOT_DTA DESC');
  end;
  CdsMaster.Open;
end;

procedure TF_ConsultaNota.BtnConfirmarClick(Sender: TObject);
begin
  _sNot    := CdsMasterNOT_COD.AsString;
  _sSer    := CdsMasterNOT_SER.AsString;
  _sRep    := CdsMasterVEN_NOM.AsString;
  _dDtaVen := DateOf(CdsMasterNOT_DTA.AsDateTime);
  _nTotVen := CdsMasterNOT_VLRTOT.AsFloat;
  self.ModalResult := mrOK;
end;

procedure TF_ConsultaNota.BtnPesquisarClick(Sender: TObject);
var
  oThread: TThread;
begin
  AbreQry('');
end;

procedure TF_ConsultaNota.DBGrid1CellClick(Column: TColumn);
begin
  QryDetail.Close;
  CdsDetail.Close;
  QryDetail.ParamByName('NOTA').AsInteger := CdsMasterNOT_COD.AsInteger;
  CdsDetail.Open;
  PnDetail.Show;
end;

procedure TF_ConsultaNota.EditCliDblClick(Sender: TObject);
begin
  EditCli.Text := TelaConsultaExec('CLI001','');
end;

procedure TF_ConsultaNota.EditCliExit(Sender: TObject);
begin
  if EditCli.Text = EmptyStr then
    Exit;
  EditCliNom.Text := getDbVal(EditCli.Text,'CLI_COD','CLI_NOM','CLIENTE');
end;

procedure TF_ConsultaNota.FormCreate(Sender: TObject);
begin
  EditInicio.Date := DateOf(Now - 30);
  EditFinal.Date  := DateOf(Now);
end;

end.
