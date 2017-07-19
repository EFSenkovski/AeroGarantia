unit frmFornecedorProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  RxToolEdit, RxCurrEdit, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, MidasLib;

type
  TF_FornecedorProduto = class(TForm)
    Panel1: TPanel;
    LbTopo: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    EditProCod: TEdit;
    EditProDes: TEdit;
    Splitter1: TSplitter;
    EditSalEst: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditSalFor: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    EditSalRej: TCurrencyEdit;
    Label7: TLabel;
    EditForCod: TEdit;
    EditForNom: TEdit;
    BtnConfirmar: TBitBtn;
    QryForPro: TFDQuery;
    DsForPro: TDataSource;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    EditQtdNota: TCurrencyEdit;
    EditSalCli: TCurrencyEdit;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
    procedure ValidaSaldos;
  public
    { Public declarations }
  end;

var
  F_FornecedorProduto: TF_FornecedorProduto;

implementation

{$R *.dfm}

uses frmImportaNfe, dmMain;

procedure TF_FornecedorProduto.BtnConfirmarClick(Sender: TObject);
var
  iFor: Integer;
begin
  ModalResult := mrOK;
  if (EditForCod.Text = EmptyStr) then
    iFor := 0
  else
    iFor := StrToInt(EditForCod.Text);
  with F_ImportaNFe do
  begin
    CdsProdutosGarantiaNota.Edit;
    CdsProdutosGarantiaNotaPRO_FOR.AsInteger := iFor;
    CdsProdutosGarantiaNotaFOR_NOM.AsString  := EditForNom.Text;
    CdsProdutosGarantiaNotaPRO_SALCLI.AsFloat := EditSalCli.Value;
    CdsProdutosGarantiaNotaPRO_SALEST.AsFloat := EditSalest.Value;
    CdsProdutosGarantiaNotaPRO_SALFOR.AsFloat := EditSalFor.Value;
    CdsProdutosGarantiaNotaPRO_SALREJ.AsFloat := EditSalRej.Value;
    CdsProdutosGarantiaNota.Post;
  end;
end;

procedure TF_FornecedorProduto.DBGrid1CellClick(Column: TColumn);
begin
  if not (QryForPro.Active) then
    Exit;

  EditForCod.Text := QryForPro.FieldByName('CLI_COD').AsString;
  EditForNom.Text := QryForPro.FieldByName('CLI_NOM').AsString;
end;

procedure TF_FornecedorProduto.ValidaSaldos;
begin
  if (EditSalEst.Value + EditSalCli.Value + EditSalFor.Value + EditSalRej.Value > EditQtdNota.Value) then
  begin
    ShowMessage('A Soma de saldos não pode ser maior do que o que veio na nota fiscal de garantia!');
    Abort;
  end;
end;

end.
