unit frmGenConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider,
  Datasnap.DBClient, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_GenConsulta = class(TForm)
    Panel2: TPanel;
    CbCamposBusca: TComboBox;
    Label1: TLabel;
    CbOperadoresBusca: TComboBox;
    EditVlrBusca: TEdit;
    BtnOkConsul: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    QryConsulta: TFDQuery;
    CdsConsulta: TClientDataSet;
    DtspConsulta: TDataSetProvider;
    DsConsulta: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid: TDBGrid;
    BtnResult: TBitBtn;
    Panel5: TPanel;
    LbTopo: TLabel;
    procedure BtnOkConsulClick(Sender: TObject);
    procedure BtnResultClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CbOperadoresBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure EditVlrBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _retorno: Variant;
    _CampoBusca: String;
  end;

var
  F_GenConsulta: TF_GenConsulta;

implementation

{$R *.dfm}

uses dmMain;

procedure TF_GenConsulta.BtnOkConsulClick(Sender: TObject);
var
  sOperador: String;
  sCampo: String;
  i: Integer;
begin
  sOperador := '';
  if ((CbCamposBusca.Text = '') or (CbOperadoresBusca.Text = '') or (EditVlrBusca.Text = '')) then begin
    CdsConsulta.Filtered := false;
    Exit;
  end;
  try
    CdsConsulta.Filtered := false;

  for i := 0 to (CdsConsulta.FieldCount - 1) do begin
    if (CdsConsulta.Fields[i].DisplayLabel = CbCamposBusca.Text) then
      sCampo := CdsConsulta.Fields[i].FieldName;
  end;

    if (CdsConsulta.FieldByName(sCampo).DataType in [ftString, ftWord, ftBlob]) then begin
      case CbOperadoresBusca.ItemIndex of
        0: begin
          CdsConsulta.Filter := sCampo + ' LIKE (''%'  + UpperCase(EditVlrBusca.Text) +  '%'')';
        end;
        1: begin
          CdsConsulta.Filter := 'NOT (' +  sCampo + ' LIKE (''%'  + UpperCase(EditVlrBusca.Text) +  '%''))';
        end;
        else
          CbOperadoresBusca.ItemIndex := 0;

      end;
      CdsConsulta.Filtered := true;
    end; //

    if (CdsConsulta.FieldByName(sCampo).DataType in [ftInteger, ftSmallint, ftFloat, ftCurrency,
                                                                 ftBCD, ftFMTBcd, FtDate, ftTime, FtDate, ftDateTime]) then begin
      case CbOperadoresBusca.ItemIndex of
        0: sOperador := ' = ';
        1: sOperador := ' <> ';
        2: sOperador := ' > ';
        3: sOperador := ' < ';
        4: sOperador := ' >= ';
        5: sOperador := ' <= ';
      end;
      CdsConsulta.Filter := (sCampo + sOperador + EditVlrBusca.Text);
      CdsConsulta.Filtered := true;
    end; //
    CdsConsulta.First;

  except
    on E: Exception do begin
      MessageDlg('Erro ao pesquisar' + #13 + E.Message, mtInformation, [mbOK], 0);
    end;
  end;

end;

procedure TF_GenConsulta.BtnResultClick(Sender: TObject);
begin
  _retorno := CdsConsulta.FieldByName(_CampoBusca).AsVariant;
  ModalResult := mrOk;
end;

procedure TF_GenConsulta.CbOperadoresBuscaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
    BtnOKConsul.Click;
end;

procedure TF_GenConsulta.DBGridDblClick(Sender: TObject);
begin
  if not CdsConsulta.Active then
    Exit;
  BtnResult.Click;
end;

procedure TF_GenConsulta.EditVlrBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    BtnOKConsul.Click;
end;

procedure TF_GenConsulta.FormShow(Sender: TObject);
begin
  CbCamposBusca.ItemIndex := 0;
  EditVlrBusca.SetFocus;
end;

end.
