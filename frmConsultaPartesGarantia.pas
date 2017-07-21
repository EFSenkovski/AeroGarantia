unit frmConsultaPartesGarantia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_ConsultaPartesGarantia = class(TForm)
    Panel1: TPanel;
    LbTopo: TLabel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TbCLient: TTabSheet;
    TabSheet2: TTabSheet;
    GrbCliente: TGroupBox;
    GrbFornecedor: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QryClientes: TFDQuery;
    DsClientes: TDataSource;
    pnGarantia: TPanel;
    QryFornecedores: TFDQuery;
    DsFornecedores: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _lCabecalho: Boolean;
    _iGarantia: Integer;
    _varRetorno: Variant;
  end;

var
  F_ConsultaPartesGarantia: TF_ConsultaPartesGarantia;

implementation

{$R *.dfm}

uses dmMain;

procedure TF_ConsultaPartesGarantia.DBGrid1DblClick(Sender: TObject);
begin
  _varRetorno := QryClientes.FieldBYName('CLI_COD').AsInteger;
  ModalResult := mrOK;
end;

procedure TF_ConsultaPartesGarantia.DBGrid2DblClick(Sender: TObject);
begin
  _varRetorno := QryFornecedores.FieldBYName('PRO_FOR').AsInteger;
  ModalResult := mrOK;
end;

procedure TF_ConsultaPartesGarantia.FormShow(Sender: TObject);
begin
  pnGarantia.Caption := 'Garantia Nº' + IntToStr(_iGarantia);
  with QryClientes do
  begin
    Close;
    ParamByName('GARANTIA').AsInteger := _iGarantia;
    Open;
  end;
  with QryFornecedores do
  begin
    Close;
    ParamByName('GARANTIA').AsInteger := _iGarantia;
    Open;
  end;
end;

end.
