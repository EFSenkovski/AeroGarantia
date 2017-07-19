unit frmEmpresaSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TF_EmpresaSelect = class(TForm)
    Panel1: TPanel;
    LbTopo: TLabel;
    Panel2: TPanel;
    LbEmpresa: TLabel;
    cbEmpresa: TDBLookupComboBox;
    BtnSelec: TSpeedButton;
    QryEmpresa: TFDQuery;
    DsEmpresa: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecClick(Sender: TObject);
    procedure cbEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    _iEmpresa: Integer;
    _sEmpresa: String;
  end;

var
  F_EmpresaSelect: TF_EmpresaSelect;

implementation

{$R *.dfm}

uses dmMain, uFuncoes;

procedure TF_EmpresaSelect.BtnSelecClick(Sender: TObject);
begin
  if not QryEmpresa.Active then
    Exit;
  ModalResult := mrOk;
  _iEmpresa   := cbEmpresa.KeyValue;
  _sEmpresa   := GetEmpNom(_iEmpresa);
end;

procedure TF_EmpresaSelect.cbEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    BtnSelec.Click;
end;

procedure TF_EmpresaSelect.FormCreate(Sender: TObject);
begin
  QryEmpresa.Close;
  QryEmpresa.Open;
  QryEmpresa.First;
  cbEmpresa.KeyValue := QryEmpresa.FieldByName('EMP_COD').AsInteger;
end;

end.
