unit frmOperacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider,
  Datasnap.DBClient, FireDAC.Comp.DataSet, FireDAC.Comp.Client, MidasLib;

type
  TF_Operacoes = class(TForm)
    Panel1: TPanel;
    LbTopo: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    EditCodigo: TEdit;
    Label1: TLabel;
    EditDescricao: TEdit;
    BtnConfirmar: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    RdgOpcOpe: TRadioGroup;
    QryOperacoes: TFDQuery;
    CdsOperacoes: TClientDataSet;
    DsOperacoes: TDataSource;
    DspOperacoes: TDataSetProvider;
    CdsOperacoesOPE_COD: TIntegerField;
    CdsOperacoesOPE_DES: TStringField;
    DsOpeGaran: TDataSource;
    QryOpeGaran: TFDQuery;
    DspOpeGaran: TDataSetProvider;
    CdsOpeGaran: TClientDataSet;
    CdsOpeGaranOPE_COD: TIntegerField;
    CdsOpeGaranOPE_DES: TStringField;
    CdsOpeGaranOPE_USO: TStringField;
    QryGeral: TFDQuery;
    QryAux: TFDQuery;
    Panel6: TPanel;
    Panel7: TPanel;
    Splitter1: TSplitter;
    Panel8: TPanel;
    Panel9: TPanel;
    DBGridOperacoes: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    EditFiltCodigo: TEdit;
    Label6: TLabel;
    EditFiltDescricao: TEdit;
    EditFiltGarDes: TEdit;
    EditFiltGar: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    CbDescricao: TComboBox;
    Label9: TLabel;
    DbGrid2: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridOperacoesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridOperacoesCellClick(Column: TColumn);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EditFiltCodigoChange(Sender: TObject);
    procedure EditFiltDescricaoChange(Sender: TObject);
    procedure EditFiltGarChange(Sender: TObject);
    procedure EditFiltGarDesChange(Sender: TObject);
    procedure CbDescricaoClick(Sender: TObject);
    procedure CbDescricaoChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure FiltrarGridTodasAsOperacoes(sCampo, sFiltro: String);
    procedure FiltrarGridOperacoesGarantia(sCampo, sFiltro: String);
  public
    { Public declarations }
  end;

var
  F_Operacoes: TF_Operacoes;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TF_Operacoes.BtnConfirmarClick(Sender: TObject);
var
  lAltera: boolean;
begin
  if (EditCodigo.Text = EmptyStr) or (EditDescricao.Text = EmptyStr) then
    Exit;
  with QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select OPE_COD From OPERACOESGARANTIA Where  OPE_COD = :OPERACAO');
    ParamByname('OPERACAO').AsInteger := StrToInt(EditCodigo.Text);
    Open;
    if Eof then
      lAltera := false
    else
      lAltera := true;
  end;
  if lAltera then
  begin
    with QryGeral do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Update OPERACOESGARANTIA Set OPE_USO = :OPE_USO Where OPE_COD = :OPE_COD');
      ParamByName('OPE_COD').AsInteger := StrToInt(EditCodigo.Text);
      ParamByName('OPE_USO').AsInteger := RdgOpcOpe.ItemIndex;
      ExecSQL;
      Close;
    end;
  end else
  begin
    with QryGeral do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Insert Into OPERACOESGARANTIA (OPE_COD, OPE_USO) Values (:OPE_COD, :OPE_USO)');
      ParamByName('OPE_COD').AsInteger := StrToInt(EditCodigo.Text);
      ParamByName('OPE_USO').AsInteger := RdgOpcOpe.ItemIndex;
      ExecSQL;
      Close;
    end;
  end;
  CdsOpeGaran.Active := false;
  CdsOpeGaran.Active := true;
end;

procedure TF_Operacoes.CbDescricaoChange(Sender: TObject);
begin
  if CbDescricao.Text = EmptyStr then
    FiltrarGridOperacoesGarantia('OPE_USO',CbDescricao.Text);

end;

procedure TF_Operacoes.CbDescricaoClick(Sender: TObject);
begin
  FiltrarGridOperacoesGarantia('OPE_USO',CbDescricao.Text);
end;

procedure TF_Operacoes.DBGridOperacoesDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(CdsOperacoes.RecNo) then
  begin
    if not (gdSelected in State) then
    begin
      DBGridOperacoes.Canvas.Brush.Color := $00FEA7A5;
      DBGridOperacoes.Canvas.FillRect(Rect);
      DBGridOperacoes.DefaultDrawDataCell(rect,Column.Field,State);
    end;
  end;
end;

procedure TF_Operacoes.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(CdsOpeGaran.RecNo) then
  begin
    if not (gdSelected in State) then
    begin
      DBGrid2.Canvas.Brush.Color := $00FEA7A5;
      DBGrid2.Canvas.FillRect(Rect);
      DBGrid2.DefaultDrawDataCell(rect,Column.Field,State);
    end;
  end;
end;

procedure TF_Operacoes.DBGridOperacoesCellClick(Column: TColumn);
begin
  EditCodigo.Text     := CdsOperacoes.FieldByName('OPE_COD').AsString;
  EditDescricao.Text  := CdsOperacoes.FieldByName('OPE_DES').AsString;
end;

procedure TF_Operacoes.EditCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  Key := SoNumero(Key);
end;

procedure TF_Operacoes.EditFiltCodigoChange(Sender: TObject);
begin
  FiltrarGridTodasAsOperacoes('OPE_COD',EditFiltCodigo.Text);
end;

procedure TF_Operacoes.EditFiltDescricaoChange(Sender: TObject);
begin
  FiltrarGridTodasAsOperacoes('OPE_DES',EditFiltDescricao.Text);
end;

procedure TF_Operacoes.EditFiltGarChange(Sender: TObject);
begin
  FiltrarGridOperacoesGarantia('OPE_COD',EditFiltGar.Text);
end;

procedure TF_Operacoes.EditFiltGarDesChange(Sender: TObject);
begin
  FiltrarGridOperacoesGarantia('OPE_DES',EditFiltGarDes.Text);
end;

procedure TF_Operacoes.FiltrarGridOperacoesGarantia(sCampo, sFiltro: String);
begin
  CdsOpeGaran.Filtered := false;
  if sFiltro = EmptyStr then
    Exit;
  if (sCampo = 'OPE_COD') then
    CdsOpeGaran.Filter := sCampo + ' = ' + sFiltro
  else if (sCampo = 'OPE_USO') then
    CdsOpeGaran.Filter := sCampo + ' Like ' + (QuotedStr('%'+sFiltro+'%'))
  else
    CdsOpeGaran.Filter := sCampo + ' Like ' + UpperCase(QuotedStr('%'+sFiltro+'%'));
  CdsOpeGaran.Filtered := true;
end;

procedure TF_Operacoes.FiltrarGridTodasAsOperacoes(sCampo, sFiltro: String);
begin
  CdsOperacoes.Filtered := false;
  if sFiltro = EmptyStr then
    Exit;
  if (sCampo = 'OPE_COD') then
    CdsOperacoes.Filter := sCampo + ' = ' + sFiltro
  else
    CdsOperacoes.Filter := sCampo + ' Like ' + UpperCase(QuotedStr('%'+sFiltro+'%'));
  CdsOperacoes.Filtered := true;
end;

procedure TF_Operacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  F_Operacoes := NIL;
end;

procedure TF_Operacoes.FormCreate(Sender: TObject);
begin
  CdsOperacoes.Active := true;
  CdsOpeGaran.Active := true;
end;

procedure TF_Operacoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl,0,0);
  end;
end;

end.
