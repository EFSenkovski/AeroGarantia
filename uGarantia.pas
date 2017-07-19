unit uGarantia;

interface

uses Classes;

type
  TGarantia = class;
  TGarantiaDet = class;
  TProdutoGarantia = class;

  TGarantia = class
    private
      FCodigo: Integer;
      FCliente: Integer;
      FDataInicio: TDateTime;
      FDataFinal: TDateTime;
      FStatus: Integer;
      FPedidoOrigemAero: Integer;
      FObservacao: String;
      FGarantiaDet: TGarantiaDet;
      FNova: Boolean;
    procedure SetCliente(const Value: Integer);
    procedure SetCodigo(const Value: Integer);
    procedure SetDataFinal(const Value: TDateTime);
    procedure SetDataInicio(const Value: TDateTime);
    procedure SetGarantiaDet(const Value: TGarantiaDet);
    procedure SetObservacao(const Value: String);
    procedure SetPedidoOrigemAero(const Value: Integer);
    procedure SetStatus(const Value: Integer);
    procedure SetNova(const Value: Boolean);
    published
      property Codigo: Integer read FCodigo write SetCodigo;
      property Cliente: Integer read FCliente write SetCliente;
      property DataInicio: TDateTime read FDataInicio write SetDataInicio;
      property DataFinal: TDateTime read FDataFinal write SetDataFinal;
      property Status: Integer read FStatus write SetStatus;
      property PedidoOrigemAero: Integer read FPedidoOrigemAero write SetPedidoOrigemAero;
      property Observacao: String read FObservacao write SetObservacao;
      property GarantiaDet: TGarantiaDet read FGarantiaDet write SetGarantiaDet;
      property Nova: Boolean read FNova write SetNova;
    public
      constructor Create;
      destructor Destroy; Override;
  end;

  TProdutoGarantia = class (TCollectionItem)
    private
      FProduto: String;
      FQuantidade: Extended;
      FSalEmpresa: Extended;
      FSalFornecedor: Extended;
      FSalCliente: Extended;
      FSalRejeitado: Extended;
    procedure SetProduto(const Value: String);
    procedure SetQuantidade(const Value: Extended);
    procedure SetSalCliente(const Value: Extended);
    procedure SetSalEmpresa(const Value: Extended);
    procedure SetSalFornecedor(const Value: Extended);
    procedure SetSalRejeitado(const Value: Extended);
    published
      property Produto: String read FProduto write SetProduto;
      property Quantidade: Extended read FQuantidade write SetQuantidade;
      property SalEmpresa: Extended read FSalEmpresa write SetSalEmpresa;
      property SalFornecedor: Extended read FSalFornecedor write SetSalFornecedor;
      property SalCliente: Extended read FSalCliente write SetSalCliente;
      property SalRejeitado: Extended read FSalRejeitado write SetSalRejeitado;
    public
      constructor Create(Collection: TCollection); override;
      destructor Destroy; Override;
  end;

  TGarantiaDet = class(TCollection)
    private
      function GetItem(Index: Integer): TProdutoGarantia;
      procedure SetItem(Index: Integer; const Value: TProdutoGarantia);
    public
      oGarantia: TGarantia;
      function Add: TProdutoGarantia;
      function Insert(Index: Integer): TProdutoGarantia;
      procedure Remove(Index: Integer);
      property Items[Index: Integer]: TProdutoGarantia read GetItem Write SetItem;
      constructor Create(aOwner: TGarantia);
      destructor Destroy; Override;
  end;

implementation

{ TGarantia }

uses uFuncoes;

constructor TGarantia.Create;
begin
  Self.SetCodigo(GetProximoPK('PROGARANTIA','GAR_COD'));
  GarantiaDet := TGarantiaDet.Create(Self);
end;

destructor TGarantia.Destroy;
begin

  inherited;
end;

procedure TGarantia.SetCliente(const Value: Integer);
begin
  FCliente := Value;
end;

procedure TGarantia.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TGarantia.SetDataFinal(const Value: TDateTime);
begin
  FDataFinal := Value;
end;

procedure TGarantia.SetDataInicio(const Value: TDateTime);
begin
  FDataInicio := Value;
end;

procedure TGarantia.SetGarantiaDet(const Value: TGarantiaDet);
begin
  FGarantiaDet := Value;
end;

procedure TGarantia.SetNova(const Value: Boolean);
begin
  FNova := Value;
end;

procedure TGarantia.SetObservacao(const Value: String);
begin
  FObservacao := Value;
end;

procedure TGarantia.SetPedidoOrigemAero(const Value: Integer);
begin
  FPedidoOrigemAero := Value;
end;

procedure TGarantia.SetStatus(const Value: Integer);
begin
  FStatus := Value;
end;

{ TProdutoGarantia }

constructor TProdutoGarantia.Create(Collection: TCollection);
begin
  inherited;
end;

destructor TProdutoGarantia.Destroy;
begin
  inherited;
end;

procedure TProdutoGarantia.SetProduto(const Value: String);
begin
  FProduto := Value;
end;

procedure TProdutoGarantia.SetQuantidade(const Value: Extended);
begin
  FQuantidade := Value;
end;

procedure TProdutoGarantia.SetSalCliente(const Value: Extended);
begin
  FSalCliente := Value;
end;

procedure TProdutoGarantia.SetSalEmpresa(const Value: Extended);
begin
  FSalEmpresa := Value;
end;

procedure TProdutoGarantia.SetSalFornecedor(const Value: Extended);
begin
  FSalFornecedor := Value;
end;

procedure TProdutoGarantia.SetSalRejeitado(const Value: Extended);
begin
  FSalRejeitado := Value;
end;

{ TGarantiaDet }

function TGarantiaDet.Add: TProdutoGarantia;
begin
  result := TProdutoGarantia(inherited add);
end;

constructor TGarantiaDet.Create(aOwner: TGarantia);
begin
  inherited Create(TProdutoGarantia);
  oGarantia := aOwner;
end;

destructor TGarantiaDet.Destroy;
begin
  inherited;
end;

function TGarantiaDet.GetItem(Index: Integer): TProdutoGarantia;
begin

end;

function TGarantiaDet.Insert(Index: Integer): TProdutoGarantia;
begin

end;

procedure TGarantiaDet.Remove(Index: Integer);
begin

end;

procedure TGarantiaDet.SetItem(Index: Integer; const Value: TProdutoGarantia);
begin

end;

end.
