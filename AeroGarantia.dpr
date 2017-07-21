program AeroGarantia;

uses
  Vcl.Forms,
  frmMain in 'frmMain.pas' {F_Main},
  uSessao in 'uSessao.pas',
  frmLogin in 'frmLogin.pas' {F_Login},
  dmMain in 'dmMain.pas' {F_DMMAIN: TDataModule},
  frmCaminhoBanco in 'frmCaminhoBanco.pas' {F_CaminhoBanco},
  uFuncoes in 'uFuncoes.pas',
  frmEmpresaSelect in 'frmEmpresaSelect.pas' {F_EmpresaSelect},
  uGarantia in 'uGarantia.pas',
  frmNovaGarantia in 'frmNovaGarantia.pas' {F_NovaGarantia},
  frmGenCOnsulta in 'frmGenCOnsulta.pas' {F_GenConsulta},
  frmOperacoes in 'frmOperacoes.pas' {F_Operacoes},
  frmImportaNfe in 'frmImportaNfe.pas' {F_ImportaNFe},
  frmFornecedorProduto in 'frmFornecedorProduto.pas' {F_FornecedorProduto},
  frmConsultaNota in 'frmConsultaNota.pas' {F_ConsultaNota},
  frmConsultaGarantia in 'frmConsultaGarantia.pas' {F_ConsultaGarantia},
  frmPedidosGarantia in 'frmPedidosGarantia.pas' {F_PedidosGarantia},
  frmConsultaPartesGarantia in 'frmConsultaPartesGarantia.pas' {F_ConsultaPartesGarantia};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_DMMAIN, F_DMMAIN);
  Application.CreateForm(TF_Main, F_Main);
  Application.Run;
end.
