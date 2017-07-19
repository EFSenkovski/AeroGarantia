unit dmMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, Registry, Controls, Dialogs, Forms, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TF_DMMAIN = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDTransaction: TFDTransaction;
    QryAux: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_DMMAIN: TF_DMMAIN;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uFuncoes, frmCaminhoBanco, frmMain;

{$R *.dfm}

procedure TF_DMMAIN.DataModuleCreate(Sender: TObject);
var
  oReg: TRegistry;
begin
  try
    oReg := TRegistry.Create;
    try
      if (oreg.OpenKey('Software/AeroInf/CGarAeroSML',true)) then
      begin
        with FDConnection do
        begin
          Connected := false;
          Close;
          params.Clear;
          DriverName := 'FB';
          Params.Database := oreg.ReadString('DB');
          Params.UserName := oreg.ReadString('User');
          Params.Password := DecryptStr(oreg.ReadString('Pass'),9);
          Params.Add('lc_ctype=ISO8859_1');
          Connected := true;
        end;
      end;
    except
      Application.CreateForm(TF_CaminhoBanco,F_CaminhoBanco);
    end;
  finally
    oReg.Free;
  end;
end;

end.
