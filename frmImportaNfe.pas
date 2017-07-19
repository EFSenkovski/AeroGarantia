unit frmImportaNfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, ACBrBase, ACBrDFe, ACBrNFe, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, System.Notification, RxPlacemnt, Vcl.Mask,
  RxToolEdit, RxCurrEdit, Vcl.Samples.Gauges, Vcl.DBCtrls, DateUtils, MidasLib;

type
  TF_ImportaNFe = class(TForm)
    Panel1: TPanel;
    LbTopo: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PgModo: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    EditXML: TEdit;
    BtnImp: TSpeedButton;
    BtncarregarXml: TBitBtn;
    Panel5: TPanel;
    BtnAdicionarNota: TSpeedButton;
    PageControl: TPageControl;
    TbCabecalho: TTabSheet;
    TbProdutos: TTabSheet;
    TbTotais: TTabSheet;
    NFe: TACBrNFe;
    Label3: TLabel;
    OpenDialog: TOpenDialog;
    QryAux: TFDQuery;
    Panel7: TPanel;
    EditNumNot: TEdit;
    Label4: TLabel;
    EditSer: TEdit;
    Label5: TLabel;
    EditModelo: TEdit;
    Label6: TLabel;
    EditFornCod: TEdit;
    Label7: TLabel;
    EditFornecedor: TEdit;
    EditCNPJ: TEdit;
    Label8: TLabel;
    EditIE: TEdit;
    Label9: TLabel;
    EditData: TEdit;
    Label10: TLabel;
    EditChave: TEdit;
    Label11: TLabel;
    EditUF: TEdit;
    Label14: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    TbNotasAdicionadas: TTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    GrbNotGar: TGroupBox;
    GrbProduto: TGroupBox;
    GroupBox1: TGroupBox;
    GrbNota: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    CdsProdutosGarantiaNota: TClientDataSet;
    DsProdutosNota: TDataSource;
    dsProdutosgarantiaNota: TDataSource;
    CdsProdutosGarantiaNotaPRO_COD: TStringField;
    CdsProdutosGarantiaNotaPRO_DES: TStringField;
    CdsProdutosGarantiaNotaPRO_UN: TStringField;
    CdsProdutosGarantiaNotaPRO_FOR: TIntegerField;
    CdsProdutosGarantiaNotaPRO_QTD: TFloatField;
    CdsProdutosGarantiaNotaPRO_SALCLI: TFloatField;
    CdsProdutosGarantiaNotaFOR_NOM: TStringField;
    CdsProdutosGarantiaNotaPRO_SALFOR: TFloatField;
    CdsProdutosGarantiaNotaPRO_SALREJ: TFloatField;
    CdsProdutosGarantiaNotaPRO_SALEST: TFloatField;
    CdsProdutosGarantiaNotaPRO_PRE: TFloatField;
    CdsProdutosGarantiaNotaPRO_TOT: TFloatField;
    CdsProdutoNota: TClientDataSet;
    CdsProdutoNotaPRO_COD: TStringField;
    CdsProdutoNotaPRO_DES: TStringField;
    CdsProdutoNotaPRO_UN: TStringField;
    CdsProdutoNotaPRO_QTD: TFloatField;
    CdsProdutoNotaPRO_PRE: TFloatField;
    CdsProdutoNotaPRO_TOT: TFloatField;
    CdsProdutoNotaINCLUIR: TIntegerField;
    PopDbGridNota: TPopupMenu;
    SelecionarTudo1: TMenuItem;
    NotificationCenter: TNotificationCenter;
    CdsProdutoNotaPRO_FAB: TStringField;
    Panel6: TPanel;
    LbAvancProdutos: TLabel;
    LbAguarde: TLabel;
    CdsGarFornecedor: TClientDataSet;
    CdsGarProdutos: TClientDataSet;
    CdsGarFornecedorFOR_COD: TIntegerField;
    CdsGarFornecedorFOR_NOM: TStringField;
    GrbTotNota: TGroupBox;
    GroupBox3: TGroupBox;
    EditNota: TCurrencyEdit;
    Label13: TLabel;
    EditNumItens: TEdit;
    Label20: TLabel;
    LbprecoUnit: TLabel;
    EditPrecoMedio: TCurrencyEdit;
    Label21: TLabel;
    EditQtdeTot: TCurrencyEdit;
    EditTotalGar: TCurrencyEdit;
    Label22: TLabel;
    editNumItensGar: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    EditPremedGar: TCurrencyEdit;
    Label25: TLabel;
    EditQtdTotGarantia: TCurrencyEdit;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DsGarFornecedor: TDataSource;
    DsGarProdutos: TDataSource;
    CdsGarFornecedorGAR_COD: TIntegerField;
    CdsGarProdutosGAR_COD: TIntegerField;
    CdsGarProdutosPRO_COD: TStringField;
    CdsGarProdutosPRO_DES: TStringField;
    CdsGarProdutosPRO_UN: TStringField;
    CdsGarProdutosPRO_FOR: TIntegerField;
    CdsGarProdutosFOR_NOM: TStringField;
    CdsGarProdutosPRO_QTD: TFloatField;
    CdsGarProdutosPRO_PRE: TFloatField;
    CdsGarProdutosPRO_TOT: TFloatField;
    CdsGarProdutosPRO_SALEST: TFloatField;
    CdsGarProdutosPRO_SALCLI: TFloatField;
    CdsGarProdutosPRO_SALFOR: TFloatField;
    CdsGarProdutosPRO_SALREJ: TFloatField;
    PnAguarde: TPanel;
    Gauge: TGauge;
    Label26: TLabel;
    CdsGarFornecedorGAR_COUNT: TIntegerField;
    PnConferencia: TPanel;
    Label27: TLabel;
    DBEdit1: TDBEdit;
    Label28: TLabel;
    DBEdit2: TDBEdit;
    Label29: TLabel;
    DBEdit3: TDBEdit;
    Label30: TLabel;
    DBEdit4: TDBEdit;
    Label31: TLabel;
    DBEdit5: TDBEdit;
    Label32: TLabel;
    DBEdit6: TDBEdit;
    Label33: TLabel;
    DBEdit7: TDBEdit;
    Label34: TLabel;
    DBEdit8: TDBEdit;
    Label35: TLabel;
    DBEdit9: TDBEdit;
    Label36: TLabel;
    DBEdit10: TDBEdit;
    Label37: TLabel;
    DBEdit11: TDBEdit;
    Label38: TLabel;
    DBEdit12: TDBEdit;
    Label39: TLabel;
    DBEdit13: TDBEdit;
    BtnConfPainel: TBitBtn;
    QryGeral: TFDQuery;
    TrayIcon: TTrayIcon;
    GrbVenda: TGroupBox;
    BtnPesq: TSpeedButton;
    Label42: TLabel;
    Label43: TLabel;
    LbVenValor: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    EditVenRep: TEdit;
    EditNot: TEdit;
    EditNotSer: TEdit;
    EditVlrVenda: TCurrencyEdit;
    EditDataVenda: TDateEdit;
    PnAt: TPanel;
    EditProCod: TEdit;
    Label40: TLabel;
    EditProUn: TEdit;
    BtnOk: TBitBtn;
    Label46: TLabel;
    LbprodFor: TLabel;
    EditProDes: TEdit;
    CdsProdutosGarantiaNotaPRO_FAB: TStringField;
    procedure BtnImpClick(Sender: TObject);
    procedure BtncarregarXmlClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SelecionarTudo1Click(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LbAvancProdutosClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Label16Click(Sender: TObject);
    procedure BtnAdicionarNotaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnConfPainelClick(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditProCodDblClick(Sender: TObject);
    procedure EditProCodExit(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnPesqClick(Sender: TObject);
    procedure EditProCodKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    _iGarCod: Integer;
    procedure limparCampos;
    procedure CarregaCabecalhoNota;
    procedure CarregaProdutosNota;
    procedure CarregaTotaisNota;
    procedure Mensagem(sNome, sTitulo, sAlerta: String);
    procedure AlimentarTelaFornecedor;
    procedure AtrelarProduto(icodFor: Integer; sProCod, sProFab: String);
    procedure PainelAtrelar(sProFor: string);
  public
    { Public declarations }
    _iGarOpe: Integer;
  end;

var
  F_ImportaNFe: TF_ImportaNFe;

implementation

{$R *.dfm}

uses dmMain, uFuncoes, frmFornecedorProduto, frmMain, frmConsultaNota;

procedure TF_ImportaNFe.AlimentarTelaFornecedor;
begin
  if not Assigned(F_FornecedorProduto) then
    F_FornecedorProduto := TF_FornecedorProduto.Create(nil);
  F_FornecedorProduto.EditProCod.Text := CdsProdutosGarantiaNotaPRO_COD.AsString;
  F_FornecedorProduto.EditProDes.Text := CdsProdutosGarantiaNotaPRO_DES.AsString;
  F_FornecedorProduto.EditQtdNota.Value := CdsProdutosGarantiaNotaPRO_QTD.AsFloat;
  F_FornecedorProduto.EditSalEst.Value := CdsProdutosGarantiaNotaPRO_SALEST.AsFloat;
  F_FornecedorProduto.EditSalCli.Value := CdsProdutosGarantiaNotaPRO_SALCLI.AsFloat;
  F_FornecedorProduto.EditSalFor.Value := CdsProdutosGarantiaNotaPRO_SALFOR.AsFloat;
  F_FornecedorProduto.EditSalRej.Value := CdsProdutosGarantiaNOtaPRO_SALREJ.AsFloat;
  F_Fornecedorproduto.QryForPro.Close;
  F_Fornecedorproduto.QryForPro.ParamByName('PRO').AsString := CdsProdutosGarantiaNotaPRO_COD.AsString;
  F_Fornecedorproduto.QryForPro.Open;
  F_FornecedorProduto.EditForCod.Text := F_Fornecedorproduto.QryForPro.FieldByname('CLI_COD').AsString;
  F_FornecedorProduto.EditForNom.Text := F_Fornecedorproduto.QryForPro.FieldByname('CLI_NOM').AsString;
  F_FornecedorProduto.ShowModal;
  if (F_FornecedorProduto.ModalResult <> mrOk) then
    ShowMessage('Fornecedor não selecionado');

end;

procedure TF_ImportaNFe.AtrelarProduto(icodFor: Integer; sProCod, sProFab: String);
var
  sCodigoFabricanteNoBanco: string;
  sMsg: String;
begin
  try
    with QryGeral do begin
      SQL.Clear;
      SQL.Add(' SELECT  FOR_CODFOR FROM FORNECEDORPRODUTO ');
      SQL.Add(' WHERE FOR_ITE = :ITEM AND FOR_COD = :FORNECEDOR ');
      ParamByName('ITEM').AsString := CdsProdutoNotaPRO_COD.AsString;
      ParamByName('FORNECEDOR').AsInteger := iCodFor;
      Open;
      // Passo valor ao codigo do fabricante atual
      sCodigoFabricanteNoBanco := FieldByName('FOR_CODFOR').AsString;

      if not Eof then begin
        sMsg := 'Foi encontrado na base de dados do sistema, um registro ' +
          'que possui o mesmo código de produto e fornecedor, mas que possui' +
          ' o código do fabricante diferente. Deseja substituí-lo? ';

        // Verifico primeiro se esse produto é de uma nota que já foi importada ou não
        // Caso sim faço apenas um Update, Caso não, eu pergunto ao usuário o que ele deseja fazer
        if (CdsProdutoNotaPRO_FAB.AsString <> sCodigoFabricanteNoBanco) then begin
          if Confirma(sMsg) then begin
            // Usuário do sistema confirmou! Faço um update na base
            SQL.Clear;
            SQL.Add(' UPDATE FORNECEDORPRODUTO SET ');
            SQL.Add(' FOR_CODFOR = :FOR_CODFOR ');
            SQL.Add(' WHERE FOR_ITE = :FOR_ITE AND FOR_COD = :FOR_COD ');
            ParamByName('FOR_COD').AsInteger := iCodFor;
            ParamByName('FOR_ITE').AsString := sProCod;
            ParamByName('FOR_CODFOR').AsString := sProFab;
            ExecSQL;
          end else begin
            // Usuário do sistem não confirmou! Faço um insert na base
            SQL.Clear;
            SQL.Add(' INSERT INTO FORNECEDORPRODUTO ( ');
            SQL.Add(' FOR_COD, FOR_ITE, FOR_CODFOR ');
            SQL.Add(' )VALUES( ');
            SQL.Add(' :FOR_COD, :FOR_ITE, :FOR_CODFOR )');
            ParamByName('FOR_COD').AsInteger := iCodFor;
            ParamByName('FOR_ITE').AsString := sProCod;
            ParamByName('FOR_CODFOR').AsString := sProFab;
            ExecSQL;
          end;
        end else begin
          // Caso seja uma nota que ja foi importada faço apenas um update no caso de algo ter mudado
          SQL.Clear;
          SQL.Add(' UPDATE FORNECEDORPRODUTO SET ');
          SQL.Add(' FOR_CODFOR = :FOR_CODFOR ');
          SQL.Add(' WHERE FOR_ITE = :FOR_ITE AND FOR_COD = :FOR_COD ');
          ParamByName('FOR_COD').AsInteger := iCodFor;
          ParamByName('FOR_ITE').AsString := sProCod;
          ParamByName('FOR_CODFOR').AsString := sProFab;
          ExecSQL;
        end;
      end else begin
        // Não encontrou nada, simplesmente faz um Insert
        SQL.Clear;
        SQL.Add(' INSERT INTO FORNECEDORPRODUTO ( ');
        SQL.Add(' FOR_COD, FOR_ITE, FOR_CODFOR ');
        SQL.Add(' )VALUES( ');
        SQL.Add(' :FOR_COD, :FOR_ITE, :FOR_CODFOR )');
        ParamByName('FOR_COD').AsInteger := iCodFor;
        ParamByName('FOR_ITE').AsString := sProCod;
        ParamByName('FOR_CODFOR').AsString := sProFab;
        ExecSQL;
      end;
    end;
  except
    ShowMessage('Não foi possível atrelar este produto ao sistema!');
    Exit;
  end;
end;

procedure TF_ImportaNFe.BtnAdicionarNotaClick(Sender: TObject);
var
  iNumPed, iNumNot: Integer;
  dDtaVenda: TDateTime;
  sSerie: String;
  iCountGarantias, iCountProdutos: Integer;
begin
  if not (CdsGarFornecedor.Active) or not (CdsGarProdutos.Active) then
    Exit;
  CdsGarFornecedor.First;
  CdsGarProdutos.First;
  if (CdsGarFornecedor.Eof) or (CdsGarProdutos.Eof) then
    Exit;
  if not Confirma('Deseja cadastrar automaticamente as garantias a partir dos dados acima?') then
    Exit;

  iCountgarantias := 0;
  iCountprodutos := 0;
  while not CdsGarFornecedor.Eof do
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
      ParamByName('GAR_COD').AsInteger    := CdsGarFornecedorGAR_COD.AsInteger;
      ParamByName('GAR_CLI').AsInteger    := CdsGarFornecedorFOR_COD.AsInteger;
      ParamByName('GAR_OPE').AsInteger    := _iGarOpe;
      ParamByName('GAR_DTA').AsDate       := DateOf(F_Main.dDtaMov);
      ParamByName('GAR_EMP').AsInteger    := F_Main._oSessao.EmpresaCod;
      dDtaVenda := EditDataVenda.Date;
      iNumPed := 0;
      if (EditNumNot.Text = EmptyStr) then
        iNumNot := 0
      else
        iNumNot := StrToInt(EditNumNot.Text);
      ParamByName('GAR_SAIDTA').AsDate    := DateOf(dDtaVenda);
      ParamByName('GAR_SAIPED').AsInteger := iNumPed;
      ParamByName('GAR_SAINOT').AsInteger := iNumNot;
      ParamByName('GAR_SAISER').AsString  := EditNOtSer.Text;
      ParamByName('GAR_STATUS').AsInteger := 0; // pendente - 1 = efetivada
      ExecSQL;
      iCountgarantias := iCountgarantias + 1;
    end;
    CdsGarProdutos.Filter := ' GAR_COD = ' + CdsGarFornecedor.FieldByName('GAR_COD').AsString;
    CdsGarProdutos.Filtered := true;
    CdsGarProdutos.First;
    while not CdsGarProdutos.Eof do
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
        ParamByName('GAR_COD').AsInteger := CdsGarProdutosGAR_COD.AsInteger;
        ParamByName('PRO_COD').AsString  := CdsGarProdutosPRO_COD.AsString;
        ParamByname('PRO_QTD').AsFloat   := CdsGarProdutosPRO_QTD.AsFloat;
        ParamByName('PRO_PRE').AsFloat   := CdsGarProdutosPRO_PRE.AsFloat;
        ParamByName('PRO_TOT').AsFloat   := CdsGarProdutosPRO_TOT.AsFloat;
        ParamByName('PRO_FOR').AsInteger := CdsGarProdutosPRO_FOR.AsInteger;
        paramByName('SAL_CLI').AsFloat   := CdsGarProdutosPRO_SALCLI.AsFloat;
        paramByName('SAL_FOR').AsFloat   := CdsGarProdutosPRO_SALFOR.AsFloat;
        paramByName('SAL_REJ').AsFloat   := CdsGarProdutosPRO_SALREJ.AsFloat;
        paramByName('SAL_EST').AsFloat   := CdsGarProdutosPRO_SALEST.AsFloat;
        ExecSQL;
        iCountprodutos := iCountprodutos + 1;
      end;
      CdsGarProdutos.Next;
    end;
    CdsGarFornecedor.Next;
  end;
  Mensagem('','Garantia(s) cadastrada com sucesso','Foram cadastradas ' + IntToStr(iCountGarantias) + ' garantia(s), com ' + IntTostr(iCountProdutos) + ' produto(s)!');
  LimparCampos;
  PageControl.ActivePage := TbCabecalho;
  CdsGarProdutos.EmptyDataset;
  CdsGarFornecedor.EmptyDataSet;
end;

procedure TF_ImportaNFe.BtncarregarXmlClick(Sender: TObject);
var
  i: Integer;
begin
  if EditXml.Text = EmptyStr then
    Exit;
  LbAguarde.Show;
  Application.ProcessMessages;
  Nfe.NotasFiscais.Clear;
  nfe.NotasFiscais.LoadFromFile(EditXML.Text, false);
  if (CdsProdutosGarantiaNota.recordCount > 1) then
  begin
    if Not Confirma('Você ainda não concluiu o lançamento da nota. Deseja prosseguir e carregar esta nota? o processo de lançamento desta nota será PERDIDO!') then
      Exit;
  end;
  try
    PageControl.ActivePage := TbCabecalho;
    CarregaCabecalhoNota;
    CarregaProdutosNota;
    CarregaTotaisNota;
    //ShowMessage('Nota ' + EditFornecedor.Text + ' importada com sucesso!');
    Mensagem('XML Importado com sucesso','Nota Nº ' + EditNumNot.Text+' importada com sucesso!','Prossiga para a aba "Produtos" para continuar o lançamento da garantia!');
  except
    on E: Exception do
    begin
      MessageDlg('Não foi possível importar a NFe' + #13 + e.Message, mterror, mbOKCancel, 0);
      Exit;
    end;
  end;
  Application.ProcessMessages;
  LbAguarde.Hide;
end;

procedure TF_ImportaNFe.BtnConfPainelClick(Sender: TObject);
begin
  PnConferencia.Hide;
end;

procedure TF_ImportaNFe.BtnImpClick(Sender: TObject);
begin
  PageControl.Activepage := TbCabecalho;
  Application.Processmessages;
  if (OpenDialog.Execute()) then
  begin
    EditXML.Text := OpenDialog.FileName;
  end;

end;

procedure TF_ImportaNFe.BtnOkClick(Sender: TObject);
begin
  if CdsProdutoNotaPRO_COD.AsString = EmptyStr then
    Exit;
  if CdsProdutoNotaPRO_DES.AsString = EmptyStr then
    Exit;
  if CdsProdutoNotaPRO_UN.AsString = EmptyStr then
    Exit;

  PnAt.Hide;
  with CdsProdutoNota do
  begin
    Edit;
    CdsProdutoNotaPRO_COD.AsString := EditProCod.Text;
    CdsProdutoNotaPRO_DES.AsString := EditProDes.Text;
    CdsProdutoNotaPRO_UN.AsString  := EditProUn.Text;
    Post;
  end;
end;

procedure TF_ImportaNFe.BtnPesqClick(Sender: TObject);
begin
  if not Assigned(F_ConsultaNota) then
    F_ConsultaNota := TF_ConsultaNota.Create(nil);
  F_ConsultaNota.ShowModal;
  if (F_ConsultaNota.ModalResult = mrOk) then
  begin
    EditNot.Text      := F_ConsultaNota._sNot;
    EditNotSer.Text      := F_ConsultaNota._sSer;
    EditVenRep.Text   := F_ConsultaNota._sRep;
    EditDataVenda.Date := F_ConsultaNota._dDtaVen;
    EditVlrVenda.Value := F_ConsultaNota._nTotVen;
  end;
end;

procedure TF_ImportaNFe.CarregaCabecalhoNota;
begin
  with nfe.NotasFiscais.Items[0].NFe do
  begin
    EditNumNot.Text  := IntToStr(Ide.nNF);
    EditSer.Text     := IntToStr(Ide.serie);
    EditModelo.Text  := IntToStr(ide.modelo);
    EditCNPJ.Text    := emit.CNPJCPF;
    EditIE.Text      := emit.IE;
    with QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select cli_cod, cli_nom, cli_est from cliente where cli_cgc = :cgc');
      ParamByName('cgc').AsString := EditCNPJ.Text;
      Open;
      if Eof then
      begin
        ShowMessage('Fornecedor não encontrado!');
        //Exit;
      end;
      EditFornCod.Text := FieldByName('CLI_COD').AsString;
      EditFornecedor.Text := FieldByName('CLI_NOM').AsString;
      EditUF.Text := FieldByName('CLI_EST').AsString;
    end;
    EditData.Text := DateToStr(ide.dEmi);
    EditChave.Text := StringReplace(infNFe.ID,'NFe','',[rfReplaceAll]);
  end;
end;

procedure TF_ImportaNFe.CarregaProdutosNota;
var
  i: Integer;
  sUniAbr: String;
begin
  CdsProdutoNota.Active := false;
  cdsprodutosgarantiaNota.Active := false;
  CdsProdutoNota.Active := true;
  cdsprodutosgarantiaNota.Active := true;
  CdsProdutoNota.EmptyDataSet;
  CdsProdutosGarantiaNota.EmptyDataSet;
  for i := 0 to nfe.NotasFiscais.Items[0].NFe.Det.Count-1 do
  begin
    with nfe.NotasFiscais.Items[0].NFe.Det.Items[i] do
    begin
      CdsProdutoNota.Append;
      CdsProdutoNotaPRO_FAB.AsString := prod.cProd;
      with QryAux do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Select FOR_ITE From FORNECEDORPRODUTO');
        SQL.Add('Where FOR_COD = :fornecedor');
        SQL.Add('And For_CODFOR = :codigo');
        ParamByName('fornecedor').AsInteger := StrToInt(EditFornCod.Text);
        ParamByName('codigo').AsString      := CdsProdutoNotaPRO_FAB.AsString;
        Open;
        if not Eof then
        begin
          CdsProdutoNotaPRO_COD.AsString := FieldByName('FOR_ITE').AsString;
          CdsProdutoNotaPRO_DES.AsString := GetDbVal(CdsProdutoNotaPRO_COD.AsString,'PRO_COD','PRO_DES','PRODUTO');
        end else
          CdsProdutoNotaPRO_DES.AsString := prod.xProd;
      end;
      with QryAux do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Select UNI.UNI_ABR From UNIDADE UNI');
        SQL.Add('Inner Join PRODUTO PRO');
        SQL.Add('  On (PRO.PRO_UNI = UNI.UNI_COD)');
        SQL.Add('Where PRO.PRO_COD = :CODIGO');
        ParamByName('CODIGO').AsString := CdsProdutoNotaPRO_COD.AsString;
        Open;
        if not Eof then
          CdsProdutoNotaPRO_UN.AsString := FieldByName('UNI_ABR').AsString;
      end;
      CdsProdutoNotaPRO_QTD.AsFloat := prod.qCom;
      CdsProdutoNotaPRO_PRE.AsFloat := prod.vUnCom;
      CdsProdutoNotaPRO_TOT.AsFloat := (prod.qCom * prod.vUnCom);
      CdsProdutoNotaINCLUIR.AsInteger := 0;
      CdsProdutoNota.Post;
    end;
  end;
end;

procedure TF_ImportaNFe.CarregaTotaisNota;
begin
//
end;

procedure TF_ImportaNFe.DBGrid1CellClick(Column: TColumn);
begin
  Application.ProcessMessages;
  CdsProdutoNota.Edit;
  if (CdsProdutoNotaINCLUIR.AsInteger = 0) then
  begin
    if cdsProdutoNotaPRO_COD.AsString = EmptyStr then
    begin
      PainelAtrelar(nfe.NotasFiscais.Items[0].NFe.Det.Items[cdsProdutoNota.RecNo-1].Prod.cProd + ' - ' + nfe.NotasFiscais.Items[0].NFe.Det.Items[cdsProdutoNota.RecNo-1].Prod.xProd);
      Exit;
    end;
    CdsProdutoNotaINCLUIR.AsInteger := 1;
  end else
    CdsProdutoNotaINCLUIR.AsInteger := 0;
  CdsprodutoNota.Post;
  Application.ProcessMessages;
end;

procedure TF_ImportaNFe.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if (CdsProdutoNotaINCLUIR.AsInteger = 0) then
  begin
    DBGrid1.Canvas.Font.Color := clBlack;
    DBGrid1.Canvas.Brush.Color := clWhite;
    DBGrid1.DefaultDrawDataCell(rect, Column.Field, State);
  end else
  begin
    DBGrid1.Canvas.Font.Color := clBlack;
    DBGrid1.Canvas.Brush.Color := $008BBE91;
    DBGrid1.DefaultDrawDataCell(rect, Column.Field, State);
  end;
  if (Column.FieldName = 'INCLUIR') then
  begin
    DbGrid1.Canvas.FillRect(Rect);
    check := 0;
    if (CdsProdutoNotaINCLUIR.AsInteger = 1) then
      Check := DFCS_CHECKED
    else
      Check := 0;
    R := Rect;
    InflateRect(R, -2,-2);
    DrawFrameControl(DbGrid1.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TF_ImportaNFe.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_F2) then
  begin
    PainelAtrelar(nfe.NotasFiscais.Items[0].NFe.Det.Items[cdsProdutoNota.RecNo-1].Prod.cProd + ' - ' + nfe.NotasFiscais.Items[0].NFe.Det.Items[cdsProdutoNota.RecNo-1].Prod.xProd);
  end;
end;

procedure TF_ImportaNFe.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    Abort;
end;

procedure TF_ImportaNFe.DBGrid2CellClick(Column: TColumn);
begin
  AlimentarTelaFornecedor;
end;

procedure TF_ImportaNFe.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (CdsProdutosGarantiaNotaPRO_FOR.AsInteger = 0) then
  begin
    DBGrid2.Canvas.Font.Color := clBlack;
    DBGrid2.Canvas.Brush.Color := clWhite;
    DBGrid2.DefaultDrawDataCell(rect, Column.Field, State);
  end else
  begin
    DBGrid2.Canvas.Font.Color := clBlack;
    DBGrid2.Canvas.Brush.Color := $008BBE91;
    DBGrid2.DefaultDrawDataCell(rect, Column.Field, State);
  end;
end;

procedure TF_ImportaNFe.DBGrid4CellClick(Column: TColumn);
begin
  PnConferencia.Show;
end;

procedure TF_ImportaNFe.EditProCodDblClick(Sender: TObject);
begin
  EditProCod.Text := TelaConsultaExec('PRO001','');
end;

procedure TF_ImportaNFe.EditProCodExit(Sender: TObject);
begin
  if EditProCod.Text = EmptyStr then
    Exit;
  EditProCod.Text := StrZero(StrToInt(EditProCod.Text),6);
  with QryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select PRO.PRO_COD, UNI.UNI_ABR, PRO.PRO_DES From PRODUTO PRO');
    SQL.Add('Left Join UNIDADE UNI');
    SQL.Add('On (UNI.UNI_COD = PRO.PRO_UNI)');
    SQL.Add('Where PRO.PRO_COD = :PRODUTO');
    ParamByname('PRODUTO').AsString := EditProCod.Text;
    Open;
    if not Eof then
    begin
      EditProDes.Text := QryAux.FieldByName('PRO_DES').AsString;
      EditProUn.Text  := QryAux.FieldByName('UNI_ABR').AsString;
    end;
  end;
end;

procedure TF_ImportaNFe.EditProCodKeyPress(Sender: TObject; var Key: Char);
begin
  Key := SoNumero(Key);
end;

procedure TF_ImportaNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  F_ImportaNFe := NIL;
end;

procedure TF_ImportaNFe.FormCreate(Sender: TObject);
begin
  _iGarCod := 0;
end;

procedure TF_ImportaNFe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl,0,0);
  end;
end;

procedure TF_ImportaNFe.FormShow(Sender: TObject);
begin
  PageControl.ActivePage := TbCabecalho;
end;

procedure TF_ImportaNFe.Label15Click(Sender: TObject);
begin
  if (EditFornCod.Text = EmptyStr) or (EditFornCod.Text = '0') then
  begin
    ShowMessage('Não é possível criar uma garantia para um cliente/fornecedor não cadastrado!');
    Exit;
  end;
  {
  if (EditDtaVenda.Text = '  /  /    ') or (EditDtaVenda.Date < '01.01.2000') then
  begin
    ShowMessage('Informe a data de quando ocorreu a venda!');
    Exit;
  end;
  }
  PageControl.ActivePage := TbProdutos;
end;

procedure TF_ImportaNFe.Label16Click(Sender: TObject);
begin
  PageControl.ActivePage := TbNotasAdicionadas;
  Mensagem('Nota adicionada!', 'Nota Nº ' + EditNumNot.Text + ' adicionada com sucesso!', 'Por favor, verifique os valores gerados pelo sistema!');
  limparCampos;
end;

procedure TF_ImportaNFe.LbAvancProdutosClick(Sender: TObject);
var
  nTot, nPrecMedio, nQtdTot: Extended;
  iGarCodAux, iNumItens: Integer;
  iClienteGar: Integer; // cliente da garantia
begin
  if not (CdsProdutoNota.Active) then
    Exit;
  CdsProdutoNota.First;
  if (CdsProdutoNota.Eof) then
    Exit;
  if not (CdsProdutosGarantiaNota.Active) then
    Exit;
  CdsProdutosGarantiaNota.First;
  if (CdsProdutosGarantiaNota.eof) then
  begin
    CdsProdutoNota.Filtered := false;
    CdsProdutoNota.Filter := 'INCLUIR=1';
    CdsProdutoNota.Filtered := true;
    if (CdsProdutoNota.Eof) then
    begin
      CdsProdutoNota.Filtered := false;
      Exit;
    end;   // quando estava vazio dava mensagem igual de produto inseridos :/
    while not CdsProdutoNota.Eof do
    begin
      if (CdsProdutoNotaPRO_COD.AsString = EmptyStr) then
      begin
        CdsProdutoNota.Filtered := false;
        ShowMessage('Por Favor, selecione código no AeroSML correspondente ao do fornecedor');
        Abort;
      end;
      CdsProdutoNota.Next;
    end;
    CdsProdutoNota.First;
    while not CdsProdutoNota.Eof do
    begin // vou passar os produtos da nota pra garantia
      CdsProdutosGarantiaNota.Append;
      CdsProdutosGarantiaNotaPRO_COD.AsString   := CdsProdutoNotaPRO_COD.AsString;
      CdsprodutosgarantiaNotaPRO_FAB.AsString   := CdsProdutoNotaPRO_FAB.AsString;
      CdsProdutosGarantiaNotaPRO_DES.AsString   := CdsProdutoNotaPRO_DES.AsString;
      CdsProdutosGarantiaNotaPRO_UN.AsString    := CdsProdutoNotaPRO_UN.AsString;
      CdsProdutosGarantiaNotaPRO_FOR.AsInteger  := 0;
      CdsProdutosGarantiaNotaFOR_NOM.AsString   := '';
      CdsProdutosGarantiaNotaPRO_QTD.AsFloat    := CdsProdutoNotaPRO_QTD.AsFloat;
      CdsProdutosGarantiaNotaPRO_SALCLI.AsFloat := 0;
      CdsProdutosGarantiaNotaPRO_SALFOR.AsFloat := 0;
      CdsProdutosGarantiaNotaPRO_SALREJ.AsFloat := 0;
      CdsProdutosGarantiaNotaPRO_SALEST.AsFloat := CdsProdutoNotaPRO_QTD.AsFloat;
      CdsProdutosGarantiaNotaPRO_PRE.AsFloat    := CdsProdutoNotaPRO_PRE.AsFloat;
      CdsProdutosGarantiaNotaPRO_TOT.AsFloat    := CdsProdutoNotaPRO_TOT.AsFloat;
      CdsprodutosgarantiaNota.Post;
      CdsProdutoNota.Next;
    end;
    if CdsProdutosGarantiaNota.RecordCount = 1 then
      Mensagem('Produtos adicionados','Produto adicionado a esta garantia!','Selecione o fornecedor deste produto!')
    else
      Mensagem('Produtos adicionados','Produtos adicionados a esta garantia!','Selecione os fornecedores dos produtos!');
    LbAvancProdutos.Caption := 'Avançar >>';
  end else
  begin // já tem os produtos definidos, passo pra próxima etapas
    try
      CdsProdutosGarantiaNota.DisableControls;
      CdsProdutosGarantiaNota.First;
      CdsProdutoNota.DisableControls;
      CdsProdutoNota.Filter := '';
      CdsProdutoNota.Filtered := false;
      Application.ProcessMessages;
      PnAguarde.Show;
      Gauge.Progress := 0;
      Gauge.MaxValue := CdsProdutoNota.RecordCount + CdsProdutosGarantiaNota.RecordCount;
      nTot := 0;
      iNumItens := 0;
      nPrecMedio := 0;
      nQtdTot := 0;
      while not CdsProdutosGarantiaNota.Eof do
      begin
        if CdsProdutosGarantiaNotaPRO_FOR.AsInteger = 0 then
        begin
          ShowMessage('Escolha todos os fornecedores dos produtos!');
          CdsProdutosGarantiaNota.EnableControls;
          CdsProdutoNota.EnableControls;
          CdsProdutoNota.Filter := 'INCLUIR=1';
          CdsProdutoNota.Filtered := true;
          Application.ProcessMessages;
          PnAguarde.Hide;
          Exit;
        end;
        CdsProdutosGarantiaNota.Next;
      end;
      CdsProdutosGarantiaNota.First;
      // vou calcular os totais da nota pra jogar na proxima aba
      CdsProdutoNota.First;
      while not CdsProdutoNota.Eof do
      begin // vou passar os produtos da nota pra garantia
        nTot := nTot + CdsProdutoNotaPRO_TOT.AsFloat;
        iNumItens := iNumItens + 1;
        nQtdTot := nQtdTot + CdsProdutoNotaPRO_QTD.AsFloat;
        Gauge.Progress := Gauge.Progress + 1;
        Application.ProcessMessages;
        CdsProdutoNota.Next;
      end;
      nPrecMedio := (nTot / nQtdTot);
      EditNota.Value       := nTot;
      EditNumItens.Text    := IntToStr(iNumItens);
      editPrecoMedio.Value := nPrecMedio;
      EditQtdeTot.Value    := nQtdTot;
      nTot := 0;
      iNumItens := 0;
      nPrecMedio := 0;
      nQtdTot := 0;
      if (EditFornCod.Text <> EmptyStr) and (EditFornCod.Text <> '0') then
        iClienteGar := StrToInt(EditFornCod.Text)
      else begin
        ShowMessage('Não é possível criar uma garantia para um cliente/fornecedor não cadastrado!');
        Exit;
      end;
      {adicionar fornecedor e atrelar a garantia}
      if not CdsGarFornecedor.Locate('FOR_COD',iClienteGar,[loPartialKey]) then
      begin
        { nenhuma nota deste cliente foi adicionada a garantia, então esta é a primeira}
        if (_iGarCod = 0) then
          _iGarCod := GetProximoPK('PROGARANTIA','GAR_COD')
        else
          _iGarCod := _iGarCod + 1;
        iGarCodAux := _iGarCod;
        CdsGarFornecedor.Append;
        CdsGarFornecedorFOR_COD.AsInteger := iClienteGar;
        CdsGarFornecedorFOR_NOM.AsString  := EditFornecedor.Text; // campo da aba cabeçalho
        CdsGarFornecedorGAR_COD.AsInteger := iGarCodAux;
        CdsGarFornecedorGAR_COUNT.AsInteger := 1;
        CdsGarFornecedor.Post;
      end else
      begin
        {já existe este fornecedor na garantia sendo criada. então somo ao contador}
        iGarCodAux := CdsGarFornecedorGAR_COD.AsInteger;
        CdsGarFornecedor.Edit;
        CdsGarFornecedorGAR_COUNT.AsInteger := CdsGarFornecedorGAR_COUNT.AsInteger + 1;
        CdsGarFornecedor.Post;
      end;
      while not CdsProdutosGarantiaNota.Eof do
      begin // vou passar os produtos da nota pra garantia
        { aqui o bagulho fica loco, e o processo fica lento (literalmente)
        se um produto não for localizado pela garantia, significa que a garantia
        não tem nenhum produto ainda e tenho que inserir. Se não for localizado pelo
        produto/garantia,
        então não existe aquele produto na garantia e tenho que inserir.
        Se não localizar pela garantia/produto/fornecedor}
        if not CdsGarProdutos.Locate('GAR_COD;PRO_COD;PRO_FOR',
        VarArrayOf([iGarCodAux, CdsProdutosGarantiaNotaPRO_COD.AsString,CdsProdutosGarantiaNotaPRO_FOR.AsInteger]),[loPartialKey]) then
        begin
          CdsGarProdutos.Append;
          CdsGarProdutosGAR_COD.AsInteger  :=  iGarCodAux;
          CdsGarProdutosPRO_COD.AsString   :=  CdsProdutosGarantiaNotaPRO_COD.AsString;
          CdsGarProdutosPRO_DES.AsString   :=  CdsProdutosGarantiaNotaPRO_DES.AsString;
          CdsGarProdutosPRO_UN.AsString    :=  CdsProdutosGarantiaNotaPRO_UN.AsString;
          CdsGarProdutosPRO_FOR.AsInteger  :=  CdsProdutosGarantiaNotaPRO_FOR.AsInteger;
          CdsGarProdutosFOR_NOM.AsString   :=  CdsProdutosGarantiaNotaFOR_NOM.AsString;
          CdsGarProdutosPRO_QTD.AsFloat    :=  CdsProdutosGarantiaNotaPRO_QTD.AsFloat;
          CdsGarProdutosPRO_SALCLI.AsFloat :=  CdsProdutosGarantiaNotaPRO_SALCLI.AsFloat;
          CdsGarProdutosPRO_SALFOR.AsFloat :=  CdsProdutosGarantiaNotaPRO_SALFOR.AsFloat;
          CdsGarProdutosPRO_SALREJ.AsFloat :=  CdsProdutosGarantiaNotaPRO_SALREJ.AsFloat;
          CdsGarProdutosPRO_SALEST.AsFloat :=  CdsProdutosGarantiaNotaPRO_SALEST.AsFloat;
          CdsGarProdutosPRO_PRE.AsFloat    :=  CdsProdutosGarantiaNotaPRO_PRE.AsFloat;
          CdsGarProdutosPRO_TOT.AsFloat    :=  CdsProdutosGarantiaNotaPRO_TOT.AsFloat;
          CdsGarProdutos.Post;
        end else
        begin
          CdsGarProdutos.Edit;
          CdsGarProdutosPRO_QTD.AsFloat    :=  CdsGarProdutosPRO_QTD.AsFloat + CdsProdutosGarantiaNotaPRO_QTD.AsFloat;
          CdsGarProdutosPRO_SALCLI.AsFloat :=  CdsGarProdutosPRO_SALCLI.AsFloat + CdsProdutosGarantiaNotaPRO_SALCLI.AsFloat;
          CdsGarProdutosPRO_SALFOR.AsFloat :=  CdsGarProdutosPRO_SALFOR.AsFloat + CdsProdutosGarantiaNotaPRO_SALFOR.AsFloat;
          CdsGarProdutosPRO_SALREJ.AsFloat :=  CdsGarProdutosPRO_SALREJ.AsFloat + CdsProdutosGarantiaNotaPRO_SALREJ.AsFloat;
          CdsGarProdutosPRO_SALEST.AsFloat :=  CdsGarProdutosPRO_SALEST.AsFloat + CdsProdutosGarantiaNotaPRO_SALEST.AsFloat;
          CdsGarProdutosPRO_PRE.AsFloat    :=  CdsGarProdutosPRO_PRE.AsFloat + CdsProdutosGarantiaNotaPRO_PRE.AsFloat;
          CdsGarProdutosPRO_TOT.AsFloat    :=  CdsGarProdutosPRO_TOT.AsFloat + CdsProdutosGarantiaNotaPRO_TOT.AsFloat;
          CdsGarProdutos.Post;
        end;
        nTot := nTot + CdsProdutosGarantiaNotaPRO_TOT.AsFloat;
        iNumItens := iNumItens + 1;
        nQtdTot := nQtdTot + CdsProdutosGarantiaNotaPRO_QTD.AsFloat;
        Gauge.Progress := Gauge.Progress + 1;
        Application.ProcessMessages;
        //AtrelarProduto(iClienteGar,CdsProdutosGarantiaNotaPRO_COD.AsString, CdsProdutosgarantiaNotaPRO_FAB.AsString);
        CdsProdutosGarantiaNota.Next;
      end;
      nPrecMedio := (nTot / nQtdTot);
      EditTotalGar.Value   := nTot;
      EditNumItensGar.Text := IntToStr(iNumItens);
      EditPremedGar.Value  := nPrecMedio;
      EditQtdTotGarantia.Value    := nQtdTot;
      PageControl.ActivePage := TbTotais;
      LbAvancProdutos.Caption := 'Incluir Produtos +';
    finally
      CdsProdutoNota.EnableControls;
      CdsProdutosGarantiaNota.EnableControls;
      Application.ProcessMessages;
      PnAguarde.Hide;
    end;
  end;
end;

procedure TF_ImportaNFe.limparCampos;
begin
  EditNumNot.Clear;
  EditSer.Clear;
  EditModelo.Clear;
  EditFornCod.Clear;
  EditFornecedor.Clear;
  EditCNPJ.Clear;
  EditUF.Clear;
  EditData.Clear;
  EditChave.Clear;
  EditNota.Value := 0;
  EditNumItens.Clear;
  EditPrecoMedio.Value := 0;
  EditPremedGar.Value := 0;
  EditQtdetot.Value := 0;
  EditTotalGar.Value := 0;
  editNumItensGar.Clear;
  EditQtdTotGarantia.Value := 0;
  CdsProdutosGarantiaNota.EmptyDataSet;
  CdsProdutoNota.EmptyDataSet;
end;

procedure TF_ImportaNFe.Mensagem(sNome, sTitulo, sAlerta: String);
begin
{  MyNotification := NotificationCenter.CreateNotification;
  try
    MyNotification.Name := sNome;
    MyNotification.Title := sTitulo;
    MyNotification.AlertBody := sAlerta;

    NotificationCenter.PresentNotification(MyNotification);
  finally
    MyNotification.Free;
  end;
}
  TrayIcon.Visible := false;
  TrayIcon.BalloonTitle := sTitulo;
  TrayIcon.BalloonHint := sAlerta;
  TrayIcon.BalloonTimeout := 40;
  TrayIcon.Visible := true;
  TrayIcon.ShowBalloonHint;
end;

procedure TF_ImportaNFe.PainelAtrelar(sProFor: String);
begin
  PnAt.Show;
  LbprodFor.Caption := sProfor;
  EditProCod.Clear;
  EditProDes.Clear;
  EditProCod.SetFocus;
end;

procedure TF_ImportaNFe.SelecionarTudo1Click(Sender: TObject);
begin
  with CdsProdutoNota do
  begin
    First;
    while not Eof do
    begin
      Edit;
      if FieldByName('INCLUIR').AsInteger = 0 then
        FieldByName('INCLUIR').AsInteger := 1
      else
        FieldByName('INCLUIR').AsInteger := 0;
      Post;
      Next;
    end;
  end;
end;

end.
