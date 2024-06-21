unit uFrmMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
    System.Actions,
  Vcl.ActnList, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ToolWin,
  Vcl.ActnMenus,
  Vcl.ImgList, cxGraphics,  cxPropertiesStore,
  Vcl.RibbonObsidianStyleActnCtrls, Vcl.Ribbon, Vcl.RibbonSilverStyleActnCtrls,
  Vcl.RibbonLunaStyleActnCtrls,  Vcl.StdCtrls, ACBrSATExtratoESCPOS,
  ACBrSATExtratoClass, ACBrSATExtratoFortesFr, ACBrBase,
  ACBrSAT,  Data.DB, Datasnap.DBClient, pcnConversao, ACBrSATClass,
  Vcl.ComCtrls, System.DateUtils, ACBrMail, dxGDIPlusClasses, Vcl.ExtCtrls, Winapi.ShellAPI,
  Vcl.OleCtrls, SHDocVw, MidasLib, ACBrSATExtratoReportClass, System.ImageList;

  const
  CNPJEmpresaDesenvolvimento = '07.033.821/0001-73';

type
  TFrmMenu = class(TForm)
    RbMenu: TRibbon;
    ActionManager1: TActionManager;
    ActCalculadora: TAction;
    ActCalendario: TAction;
    ActSair: TAction;
    ActEfetuarLogOf: TAction;
    ActCadastroProdutos: TAction;
    RpCadastros: TRibbonPage;
    RBGrupoCadastros: TRibbonGroup;
    ActCadastroClientes: TAction;
    cxImageList1: TcxImageList;
    ActEmitente: TAction;
    ActSAT: TAction;
    ActVerificaStatus: TAction;
    ActEnviaPorEmail: TAction;
    ActConfigurarSAT: TAction;
    RpSAT: TRibbonPage;
    RpUtilitarios: TRibbonPage;
    RpSair: TRibbonPage;
    rgGroupSAT: TRibbonGroup;
    RgGroupUtilitarios: TRibbonGroup;
    RgGroupSair: TRibbonGroup;
    ActStatusOperacional: TAction;
    Emitente: TClientDataSet;
    ConfigSAT: TClientDataSet;
    lblmensagens: TLabel;
    StatusBar: TStatusBar;
    ACBrSAT1: TACBrSAT;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
    ACBrMail1: TACBrMail;
    ActImportaNCM: TAction;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Timer1: TTimer;
    Panel1: TPanel;
    navegador: TWebBrowser;
    procedure ActSairExecute(Sender: TObject);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure ActCadastroProdutosExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActCadastroClientesExecute(Sender: TObject);
    procedure ActCalendarioExecute(Sender: TObject);
    procedure ActEmitenteExecute(Sender: TObject);
    procedure ActVerificaStatusExecute(Sender: TObject);
    procedure ActStatusOperacionalExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActConfigurarSATExecute(Sender: TObject);
    procedure AjustarSAT;
    function verificarDiasSemEnviar: Integer;
    procedure ActSATExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
    procedure ACBrSAT1GetsignAC(var Chave: AnsiString);
    procedure ActImportaNCMExecute(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function  RetirarCaracteres(Texto: string; CaracteresRetirar: string): string;
  private
    { Private declarations }
  public
    { Public declarations }
    bSAT : Boolean;

  end;

var
  FrmMenu: TFrmMenu;

implementation

uses
 uFrmCadastroProdutos, uFrmCadastroClientes, uFrmCalendario,
  uFrmCadastroEmitente, uFrmConsultaStatusSAT, uFrmConfigSAT, uFrmVendas,
  uFrmCadastroNCM, uFrmNovidades;

{$R *.dfm}

procedure TFrmMenu.ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
begin
   Chave := ConfigSAT.FieldByName('codigo_ativacao').AsString;
end;

procedure TFrmMenu.ACBrSAT1GetsignAC(var Chave: AnsiString);
begin
  Chave := ConfigSAT.FieldByName('assinaturaSW').AsString;
end;

procedure TFrmMenu.ActCadastroClientesExecute(Sender: TObject);
begin
  if FrmCadastroClientes = nil then
  begin
    Application.CreateForm(TFrmCadastroClientes,FrmCadastroClientes);
  end;
  FrmCadastroClientes.Top := RpCadastros.Height + 50;
  FrmCadastroClientes.Left:= 0;
  FrmCadastroClientes.Show;
end;

procedure TFrmMenu.ActCadastroProdutosExecute(Sender: TObject);
begin
  if FrmCadastroProdutos = nil then
  begin
    Application.CreateForm(TFrmCadastroProdutos, FrmCadastroProdutos);
  end;
  FrmCadastroProdutos.Top := RpCadastros.Height + 50;
  FrmCadastroProdutos.Left:= 0;
  FrmCadastroProdutos.Show;
end;

procedure TFrmMenu.ActCalculadoraExecute(Sender: TObject);
begin
  WinExec('Calc.Exe',SW_Show);
end;

procedure TFrmMenu.ActCalendarioExecute(Sender: TObject);
begin
  if FrmCalendario = nil then
  begin
    Application.CreateForm(TFrmCalendario,FrmCalendario);
  end;
  FrmCalendario.Show;
end;

procedure TFrmMenu.ActConfigurarSATExecute(Sender: TObject);
begin
 if FrmConfigSAT = nil then
  begin
    Application.CreateForm(TFrmConfigSAT,FrmConfigSAT);
  end;
  FrmConfigSAT.Show;
end;

procedure TFrmMenu.ActEmitenteExecute(Sender: TObject);
begin
  if FrmCadastroEmitente = nil then
  begin
    Application.CreateForm(TFrmCadastroEmitente,FrmCadastroEmitente);
  end;
  FrmCadastroEmitente.Top := RpCadastros.Height + 50;
  FrmCadastroEmitente.Left:= 0;
  FrmCadastroEmitente.Show;
end;

procedure TFrmMenu.ActImportaNCMExecute(Sender: TObject);
begin
 if FrmCadastroNCM = nil then
  begin
    Application.CreateForm(TFrmCadastroNCM,FrmCadastroNCM);
  end;
  FrmCadastroNCM.Top := RpCadastros.Height + 50;
  FrmCadastroNCM.Left:= 0;
  FrmCadastroNCM.Show;
end;

procedure TFrmMenu.ActSairExecute(Sender: TObject);
begin
  Application.Terminate
end;

procedure TFrmMenu.ActSATExecute(Sender: TObject);
begin
  if FrmVendas = nil then
  begin
    Application.CreateForm(TFrmVendas,FrmVendas);
  end;
  FrmVendas.Show;
end;

procedure TFrmMenu.ActStatusOperacionalExecute(Sender: TObject);
begin
    if FrmConsultaStatusSAT = nil then
  begin
    Application.CreateForm(TFrmConsultaStatusSAT,FrmConsultaStatusSAT);
  end;
  FrmConsultaStatusSAT.Show;
end;

procedure TFrmMenu.ActVerificaStatusExecute(Sender: TObject);
begin
  ACBrSAT1.ConsultarSAT;
  if ACBrSAT1.Resposta.codigoDeRetorno = 8000 then
  begin
    ShowMessage('Sat Em Operação');
  end else
  begin
    ShowMessage('Falha na Comunicação com o SAT');
  end;
end;

procedure TFrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
  // desliga os eventos da aplicação
   Application.OnMessage := nil;
   Application.OnException := nil;  { Efeito de Fechamento }//     Resolvi o erro Quando ia sair do Sistema
end;

procedure TFrmMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  I : Integer;
begin
  for I := MDIChildCount - 1 downto 0 do
      begin
        MDIChildren[I].Close;
        MDIChildren[I].Free;
      end;
end;

procedure TFrmMenu.FormShow(Sender: TObject);
var
  caminho : string;
begin
  caminho := extractfilepath(Application.ExeName) + '\dados';
  if not DirectoryExists(caminho) then
  begin
    forceDirectories(caminho);
  end;

  //Carrega os dados do Emitente Se Já Existir
  if not (FileExists('dados/emitente.xml')) then
  begin
    ShowMessage('Favor Configure os dados do Emitente!');
    ActEmitente.Execute;
  end else
  begin
    Emitente.LoadFromFile('dados/emitente.xml');
    Emitente.Active;
  end;

  //Carrega os dados do Emitente Se Já Existir
  if not (FileExists('dados/configs.xml')) then
  begin
    ShowMessage('Favor Configure o SAT!');
    ActConfigurarSAT.Execute;
  end else
  begin
    ConfigSAT.LoadFromFile('dados/configs.xml');
    ConfigSAT.Active;
  end;

  try
     AjustarSAT;
     if not ACBrSAT1.Inicializado then
     begin
       ACBrSAT1.Inicializar;
     end;
     bSAT := True;
  except
    on E : Exception do
    begin
      StatusBar.Panels[3].Text := 'SAT NÃO INCIALIZADO, VERIFIQUE AS CONFIGURAÇÕES';
      showmessage('Ocorreu um problema no momento de iniciar o SAT !' + #13 + e.Message);
      bSAT := False;
    end;
  end;


  if bSAT then
  begin
    ACBrSAT1.ConsultarSAT;
    if ACBrSAT1.Resposta.codigoDeRetorno = 8000 then
    begin
      StatusBar.Panels[3].Text := 'SAT COMUNICANDO NORMALMENTE';
      if verificarDiasSemEnviar > 4 then
      begin
        lblmensagens.caption := 'O SAT Está sem transmitir dados a Sefaz à '+ intToStr(verificarDiasSemEnviar) + ' dias' + #13+'Favor verificar o problema!';
        lblmensagens.Visible := True;
      end;
    end else
    begin
      StatusBar.Panels[3].Text := 'SEM COMUNICAÇÃO COM O SAT';
      bSAT := False;
    end;
  end;

  

end;

procedure TFrmMenu.Image1Click(Sender: TObject);
begin
  //Item 1 no Pagseguro Valor de R$20,00 fixo
  ShellExecute(Handle,'open','https://pag.ae/bjlG0KB',nil,nil,SW_SHOW);
end;

procedure TFrmMenu.Image3Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://pag.ae/bdlG09S',nil,nil,SW_SHOW);
end;

procedure TFrmMenu.Image4Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://pag.ae/bflG1lk',nil,nil,SW_SHOW);
end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  try
    navegador.Visible := True;
    navegador.Navigate('http://sistemasnetsolutions.com.br/publicidade/index.php');
  except
    navegador.visible := false;
  end;
end;

procedure TFrmMenu.AjustarSAT;
begin
  with ACBrSAT1 do
  begin
    if not DirectoryExists('SAT') then
    begin
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'SAT');
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'SAT\GERADAS');
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'SAT\TRANSMITIDAS');
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'SAT\CANCELADAS');
    end;

//    if ParametrosNFE.fieldByname('sat_modelo').AsString = 'satNenhum' then
  //  begin
  //    Modelo  :=  TACBrSATModelo(0);
  //  end else if ParametrosNFE.fieldByname('sat_modelo').AsString = 'satDinamico_cdecl' then
   // begin
   //   Modelo  := TACBrSATModelo(1);
   // end else
   // begin
      Modelo  := TACBrSATModelo(2); //satDinamico_stdcall
 //   end;

//    ArqLOG               := ParametrosNFE.fieldByname('sat_log').Asstring + '';
    ConfigArquivos.PastaCFeVenda        := ExtractFilePath(Application.ExeName) +'SAT/TRANSMITIDAS';
    ConfigArquivos.PastaCFeCancelamento := ExtractFilePath(Application.ExeName) +'SAT/CANCELADAS';

    if ConfigSAT.fieldByname('caminho_dll').AsString = '' then
    begin
      NomeDLL := ExtractFilePath(Application.ExeName)+'SAT.dll'; //Padrão C:\SAT
    end else
    begin
      NomeDLL := ConfigSAT.fieldByname('caminho_dll').AsString;
    end;

    Config.ide_numeroCaixa := StrToInt('1'); //Estacao
    Config.ide_tpAmb       := TpcnTipoAmbiente( Emitente.fieldByname('ambiente').Asinteger );
    //Se for modo de Homologação
    if Emitente.fieldByname('ambiente').Asinteger = 1 then  //Se for Homologação Carrego os dados da Tanca
    begin
      Config.ide_CNPJ        := Trim(RetirarCaracteres('16.716.114/0001-72','./\-'));  //CNPJ da Software House
      Config.emit_CNPJ       := Trim(RetirarCaracteres('08.723.218/0001-86','./\-'));  //CNPJ do Emitente
      Config.emit_IE         := Trim('149626224113');
    end else //Se estiver em Produção Busco os dados do Emitente
    begin
      Config.ide_CNPJ        := Trim(RetirarCaracteres(CNPJEmpresaDesenvolvimento,'./\-'));  //CNPJ da Software House
      Config.emit_CNPJ       := Trim(RetirarCaracteres( Emitente.fieldByname('cnpj').Asstring,'./\-'));  //CNPJ do Emitente
      Config.emit_IE         := Trim( Emitente.fieldByname('ie').Asstring);
    end;
    Config.emit_IM         := '';

    if  Emitente.FieldByName('regime').AsInteger = 2 then
    begin
      Config.emit_cRegTrib := RTRegimeNormal;
    end else
    begin
      Config.emit_cRegTrib := RTSimplesNacional;
    end;
    //Inicio do Regime de Tributação do ISSQN
    if Emitente.fieldByname('rateio').AsInteger = 0 then
    begin
      //0-Nenhum
      Config.emit_cRegTribISSQN := RTISSNenhum ;
    end else  if  Emitente.fieldByname('rateio').AsInteger = 1 then
    begin
      //1-Micro Empresa Municipal
      Config.emit_cRegTribISSQN := RTISSMicroempresaMunicipal ;
    end else  if  Emitente.fieldByname('rateio').AsInteger = 2 then
    begin
      //2-Estimativa
      Config.emit_cRegTribISSQN := RTISSEstimativa;
    end else if  Emitente.fieldByname('rateio').AsInteger = 3 then
    begin
      //3-Sociedade Profissionais
      Config.emit_cRegTribISSQN := RTISSSociedadeProfissionais;
    end else if  Emitente.fieldByname('rateio').AsInteger = 4 then
    begin
      //4-Cooperativa
      Config.emit_cRegTribISSQN := RTISSCooperativa;
    end else if  Emitente.fieldByname('rateio').AsInteger = 5 then
    begin
      //5-Micro Empresario Individual
      Config.emit_cRegTribISSQN := RTISSMEI;
    end else if  Emitente.fieldByname('rateio').AsInteger = 6 then
    begin
      //6-Micro Empresa EPP
       Config.emit_cRegTribISSQN := RTISSMEEPP;
    end;
    //Fim do Regime de Tributação do ISSQN

    if Emitente.fieldByname('rateio').AsInteger = 0 then
    begin
      Config.emit_indRatISSQN   := irSim ;
    end else
    begin
      Config.emit_indRatISSQN   := irNao ;
    end;
    Config.PaginaDeCodigo     := 0;//ParametrosNFE.fieldByname('sat_pag_cod').AsInteger;
    Config.EhUTF8             := True;// ParametrosNFE.fieldByname('sat_utf8').Asboolean;
  end;

  ACBrSATExtratoFortes1.Margens.Topo     := ConfigSAT.FieldByName('margem_topo'    ).AsInteger;
  ACBrSATExtratoFortes1.Margens.Fundo    := ConfigSAT.FieldByName('margem_fundo'   ).AsInteger;
  ACBrSATExtratoFortes1.Margens.Direita  := ConfigSAT.FieldByName('margem_direita' ).AsInteger;
  ACBrSATExtratoFortes1.Margens.Esquerda := ConfigSAT.FieldByName('margem_esquerda').AsInteger;
end;

function TFrmMenu.verificarDiasSemEnviar: Integer;
var
 dataAtual,dataEnvio : TDate;
 Dias : Integer;
begin
   ACBrSAT1.ConsultarStatusOperacional;
   Dias := 0;
   with ACBrSAT1.Status do begin
        dataAtual := StrToDate(Copy(DateTimeToStr(DH_ATUAL),0,10));
        dataEnvio := StrToDate(Copy(DateTimeToStr(DH_CFe),0,10));
        Dias := DaysBetween(dataEnvio,dataAtual);
   end;
   result := Dias;
end;

function TFrmMenu.RetirarCaracteres(Texto: string; CaracteresRetirar: string): string;
var
  NovoTexto: string;
  x: Integer;
begin
  NovoTexto := '';
  for x := 1 to Length(Texto) do
  begin
    if Pos(Texto[x], CaracteresRetirar) <= 0 then
    begin
      NovoTexto := NovoTexto + Texto[x];
    end;
  end;
  Result := NovoTexto;
end;


end.
