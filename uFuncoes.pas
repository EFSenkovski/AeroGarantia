unit uFuncoes;

interface
uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider,
  Datasnap.DBClient, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

function EncryptStr(const S: String; Key: Word): String;
function DecryptStr(const S: String; Key: Word): String;
function Confirma(txtMsg:String):boolean;
function GetEmpNom(iEmpCod: Integer): String;
function DiaSemana(Data:TDateTime): String;
function GetProximoPK(sTabela, sCampo: String):Integer;
function TelaConsultaExec(sBusca, sParametro: String): Variant;
function FloatToStrCurrency(nVlr: Extended): String;
function StrCurrencyToFloat(sVlr: String): Extended;
function StrToStrCurrency(sVlr: String): String;
function SoNumero(cKey : Char):Char;
function GetDbVal(sValores, sPK, sCampoRetorno, sTabela: String): Variant;
function StrZero(iNum, iTam: Integer): string;

implementation

uses dmMain, frmGenConsulta;

function Confirma(txtMsg:String):boolean;
var Mensagem:TForm;
begin
  {Cria a janela de mensagem}
  Mensagem:=createmessagedialog(txtMsg,MtConfirmation,[MbYes,MbNo]);
  {Trazur o titulo da mensagem}
  Mensagem.Caption:='Confirmação';
  {Traduz os botões da caixa de mensagem}
  (Mensagem.FindComponent('Yes') as TButton).Caption:='Sim';
  (Mensagem.FindComponent('No') as TButton).Caption:='Não';
  {Exibr a caixa de mensagem}
  Mensagem.ShowModal;
  {Verifica aqul botão foi pressionado}
  If Mensagem.ModalResult=MrYes then
    result:=true;{Botão Sim}
  If Mensagem.ModalResult=MrNo then
    result:=false;
  {Botão Não}
end;

function EncryptStr(const S: String; Key: Word): String;
var I: Integer;
const C1 = 53761;
      C2 = 32618;
begin
  Result := S;
  for I := 1 to Length(S) do begin
    Result[I] := char(byte(S[I]) xor (Key shr 8));
    Key := (byte(Result[I]) + Key) * C1 + C2;
  end;
end;

function DecryptStr(const S: String; Key: Word): String;
var I: Integer;
const C1 = 53761;
      C2 = 32618;
begin
  Result := S;
  for I := 1 to Length(S) do begin
   Result[I] := char(byte(S[I]) xor (Key shr 8));
   Key := (byte(S[I]) + Key) * C1 + C2;
  end;
end;

function GetEmpNom(iEmpCod: Integer): String;
var
  oQry: TFdQuery;
begin
  try
    oQry := TFDQuery.Create(nil);
    oQry.Connection := F_DMMAIN.FdConnection;
    with oQry do
    begin
      Close;
      Sql.Clear;
      SQL.Add('select EMP_NOM From EMPRESA Where EMP_COD = :EMPRESA');
      ParamByName('EMPRESA').AsInteger := iEmpCod;
      Open;
      if not Eof then
        result := FieldByname('EMP_NOM').AsString
      else
        result := '';
    end;
  finally
    oQry.Free;
  end;
end;

function DiaSemana(Data:TDateTime): String;
{Retorna dia da semana}
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String[13];
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda-feira';
  DiaDasemana [3]:= 'Terça-feira';
  DiaDasemana [4]:= 'Quarta-feira';
  DiaDasemana [5]:= 'Quinta-feira';
  DiaDasemana [6]:= 'Sexta-feira';
  DiaDasemana [7]:= 'Sábado';
  NoDia:=DayOfWeek(Data);
  DiaSemana:=DiaDasemana[NoDia];
end;

function GetProximoPK(sTabela, sCampo: String):Integer;
var
  lOk: Boolean;
  iProximo, iCount: Integer;
begin
  lOk := false;
  iCount := 1;
  while not lOk do
  begin
    with F_DmMain.QryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select (COALESCE(MAX('+sCampo+'),0) + ' + IntToStr(iCount) + ') AS '+sCampo+' From '+sTabela);
      Open;
      iProximo := FieldByName(sCampo).AsInteger;
      Close;
      SQL.Clear;
      SQL.Add('Select '+sCampo+' From '+sTabela+' Where '+sCampo+' = :NUM');
      ParamByName('NUM').AsInteger := iProximo;
      if Eof then
      begin
        lOk := true;
        result := iProximo;
        Break;
      end else
      begin
        lOk := false;
        iCount := iCount + 1;
      end;
    end; // End With
  end; // End While
end;

function TelaConsultaExec(sBusca, sParametro: String): Variant;
var
  oQry: TFDQuery;
  Colunas: TStringList;
  i: Integer;
  sSQL, sCampoBuscar: String;
begin
  try
    oQry := TFDQuery.Create(NIL);
    with oQry do begin
      Connection := F_DMMain.FDConnection;
      // Aqui, faço conforme está no cadastro de produto do AeroSML.
      Close;
      with SQL do begin
        Clear;
        Add('Select *');
        Add('From TABCONSULTA');
        Add('Where CON_COD = :CON_COD');
      end;
      ParamByName('CON_COD').AsString := sBusca;
      Open;
      if Not Eof then begin
        sSQL         := FieldByName('CON_SQL').AsString;
        sCampoBuscar := FieldByName('CON_RET').AsString;
        Colunas      := TStringList.Create;
        Colunas.Text := FieldByName('CON_FID').AsString;
      end else begin
        Result := 'Consulta não encontrada ' + sBusca;
        Exit;
      end;
    end; // End With oQry

    if not Assigned(F_GenConsulta) then
      F_GenConsulta := TF_GenConsulta.Create(F_GenConsulta);

    with F_GenConsulta do begin
      EditVlrBusca.Clear;
      EditVlrBusca.ReadOnly := false;
      try
        if (CdsConsulta.Active) then begin
          CdsConsulta.EmptyDataSet;
          CdsConsulta.Close;
        end;
        CdsConsulta.Active := false;
        CdsConsulta.Fields.Clear;
        QryConsulta.Close;
        DBGrid.Columns.Clear;
        // Passo o SQL que veio da tab consulta
        QryConsulta.SQL.Clear;
        QryConsulta.SQL.Text := sSQL;
        // Abro o Cds e a query, pra exibir
        QryConsulta.Open;
        CdsConsulta.Open;
        if not (CdsConsulta.Eof) then begin
          for i := 0 to CdsConsulta.FieldCount - 1 do begin
            CdsConsulta.FieldList[i].DisplayLabel := StringReplace(Colunas[i], '$','', [rfReplaceAll]);
          end; // End For
        end; // End For
        CbCamposBusca.Items := Colunas;
        _CampoBusca := sCampoBuscar;
        ShowModal;
        if (ModalResult = mrOk ) then
          if (_retorno <> Null) then
            Result := _retorno
          else
             Result := '';
      except
        CdsConsulta.Active := false;
        EditVlrBusca.Text := 'Erro ao efetuar a consulta';
        EditVlrBusca.ReadOnly := true;
        QryConsulta.Close;
      end;

    end; // End WIth F_GenConsulta
  finally
    Colunas.Free;
    oQry.Free;
  end;
end;

function StrToStrCurrency(sVlr: String): String;
var
  nVlr: Extended;
begin
  if (sVlr = EmptyStr) then
    Exit;
  sVlr := sVlr.Replace('R$ ', '',  [rfReplaceAll, rfIgnoreCase]);
  sVlr := sVlr.Replace('.','', [rfReplaceAll, rfIgnoreCase]);
  nVlr := StrToFloat(sVlr);
  result := FormatFloat('###,###0.00', nVlr);
end;

function StrCurrencyToFloat(sVlr: String): Extended;
begin
  if (sVlr = EmptyStr) then
    Exit;
  sVlr := sVlr.Replace('R$ ','', [rfReplaceAll, rfIgnoreCase]);
  sVlr := sVlr.Replace('.','',[rfReplaceAll, rfIgnoreCase]);
  result := StrToFloat(sVlr);
end;

function FloatToStrCurrency(nVlr: Extended): String;
begin
  result := FormatFloat('###,###0.00', nVlr);
end;

function SoNumero(cKey : Char) : Char;
begin
  SoNumero := cKey;
  if not (cKey in ['0'..'9', #8, #13, '.', ',', ^C, ^V, ^X]) then
    SoNumero := #0;
end;

function GetDBVal(sValores, sPK, sCampoRetorno, sTabela: String): Variant;
var
  oQry: TFDQuery;
  sCamposSelect: String;
  sCondicoes: String;
  iPospvVal: Integer;
begin
  Try
    Try
      oQry               := TFDQuery.Create(NIL);
      oQry.Connection    := F_DMMAIN.FDConnection;
      OQry.Transaction   := F_DMMAIN.FDTransaction;
      with oQry do begin
        Close;
        SQL.Clear;
        SQL.Add('Select ' +  sCampoRetorno + ' From ' + sTabela);
        SQL.Add(' Where ' +  sPK + ' = :PARAMETRO ');
        ParamByName('PARAMETRO').AsString := sValores;
        Open;
        First;
        if not Eof then
          Result := FieldByName(sCampoRetorno).Value
        else
          Result := EmptyStr;
      end;
    Except
      on e:exception do
      begin
        MessageDlg('Não foi possível executar a consulta' + #13 + e.Message, mtError, [mbOk], 0);
        Exit;
      end; // End On Exception
    End; // End Try
  Finally
    FreeAndNil(oQry);
  End;
end; // End Function

function StrZero(iNum, iTam: Integer): string;
var
  sNum, sResult: String;
  iResto: Integer;
  i: Integer;
begin
  sNum := IntToStr(iNum);
  iResto := iTam - sNum.Length;
  if (iResto <= 0) then
  begin
    Result := sNum;
    Exit;
  end;
  sResult := '';
  for i := 0 to iResto-1 do
  begin
    sResult := sResult + '0';
  end;
  sResult := sResult + sNum;
  result := sResult;

end;

end.
