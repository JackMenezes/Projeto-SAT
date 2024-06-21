program EmissorGratuitoSAT;

uses
  Vcl.Forms,
  uFrmMenu in 'uFrmMenu.pas' {FrmMenu},
  uFrmCadastroClientes in 'uFrmCadastroClientes.pas' {FrmCadastroClientes},
  uFrmCalendario in 'uFrmCalendario.pas' {FrmCalendario},
  uFrmConsultaStatusSAT in 'uFrmConsultaStatusSAT.pas' {FrmConsultaStatusSAT},
  uFrmConfigSAT in 'uFrmConfigSAT.pas' {FrmConfigSAT},
  uFrmCadastroEmitente in 'uFrmCadastroEmitente.pas' {FrmCadastroEmitente},
  uFrmVendas in 'uFrmVendas.pas' {FrmVendas},
  uFrmCadastroProdutos in 'uFrmCadastroProdutos.pas' {FrmCadastroProdutos},
  uFrmSplash in 'uFrmSplash.pas' {FrmSplash},
  uFrmCadastroNCM in 'uFrmCadastroNCM.pas' {FrmCadastroNCM},
  uFrmPesquisa in 'uFrmPesquisa.pas' {FrmPesquisa};

{$R *.res}
var
i : integer;
begin
  frmSplash := TfrmSplash.Create(Application);
  frmSplash.Show;
  //Atualiza a tela
  frmSplash.Update;

   FrmSplash.progresso.Properties.Max := 100;
   FrmSplash.progresso.Properties.Min := 0;
   for i := 0 to 100 do
   begin
     FrmSplash.progresso.Position := i;
     FrmSplash.progresso.Refresh;
     if FrmSplash.progresso.Position = 100 then
     begin
      FrmSplash.progresso.Position := 100;
      FrmSplash.progresso.Refresh;
      FrmSplash.progresso.Visible := False;
      end;
   end;

  //libera o form de splash da memória
  frmSplash.Release;
  //Abre o Formulario Principal
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TFrmPesquisa, FrmPesquisa);
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
