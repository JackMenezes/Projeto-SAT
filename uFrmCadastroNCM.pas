unit uFrmCadastroNCM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxProgressBar, ACBrBase, ACBrSocket, ACBrIBPTax, Winapi.UrlMon,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmCadastroNCM = class(TForm)
    Label1: TLabel;
    Tabela: TClientDataSet;
    DataSource1: TDataSource;
    Paginas: TPageControl;
    TBCadastro: TTabSheet;
    Panel2: TPanel;
    BtnAtualizaNCM: TButton;
    GPProdutos: TGroupBox;
    tipo: TRadioGroup;
    DBGrid1: TDBGrid;
    ACBrIBPTax1: TACBrIBPTax;
    Label2: TLabel;
    cxProgressBar1: TcxProgressBar;
    OpenDialog1: TOpenDialog;
    XMLDocument1: TXMLDocument;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnAtualizaNCMClick(Sender: TObject);
    procedure atualizaNCM;
    procedure RecriaXml;
    Procedure FormatXMLFile(XmlFile:string);
    function SemAcentos ( Texto: string ): string;
    function RetirarCaracteres(Texto: string; CaracteresRetirar: string): string;
  private
    { Private declarations }
    Dir: string;
  public
    { Public declarations }
  end;

var
  FrmCadastroNCM: TFrmCadastroNCM;

implementation

{$R *.dfm}

uses uFrmMenu;

procedure TFrmCadastroNCM.atualizaNCM;
var
  I: Integer;
  ERRO : Boolean;
begin
  // configurar a URL do arquivo para ser baixado
  // Você configurar como quiser, para o seu site ou servidor proprios
  // deixarei a tabela atualizada sempre no endereço
  // http://regys.com.br/arquivos/AcspDeOlhoNoImpostoIbptV.0.0.1.csv
//  if Trim(ACBrIBPTax1.URLDownload) <> '' then
  //ACBrIBPTax1.DownloadTabela;

  if tipo.itemindex = 0 then
  begin
    OpenDialog1.Title := 'Selecione o Arquivo';
    OpenDialog1.DefaultExt := '*.XLS';
    OpenDialog1.Filter := 'Arquivos De Excel (*.xls;*.xlsx;*.csv)|*.xls;*.xlsx;*.csv';

    OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
    if OpenDialog1.Execute then
      dir := OpenDialog1.FileName
    else
      Dir := '';
  end
  else
  begin
    if FileExists(ExtractFilePath(Application.ExeName) + '\tabelancm.csv') then
    begin
      DeleteFile(ExtractFilePath(Application.ExeName) + '\tabelancm.csv');
    end;

    {$REGION 'FAZ O DOWNLOAD DO ARQUIVO DO ESTADO SELECIONADO NOS PARAMETROS GERAIS'}
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'AC' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/AC.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'AL' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/AL.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'AM' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/AM.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'BA' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/BA.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'CE' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/CE.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'DF' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/DF.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'ES' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/ES.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'GO' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/GO.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'MA' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/MA.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'MT' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/MT.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'MS' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/MS.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'MG' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/MG.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'PA' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/PA.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'PB' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/PB.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'PR' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/PR.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'PE' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/PE.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'PI' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/PI.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'RJ' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'RN' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/RN.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'RS' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/RS.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'RO' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/RO.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'RR' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/RR.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'SC' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/SC.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'SP' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/SP.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'SE' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/SE.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end
    else
    if FrmMenu.Emitente.FieldByName('estado').AsString = 'TO' then
    begin
      if not UrlDownloadToFile(nil, PChar('http://desenvolvimento1.sistemasnetsolutions.com.br/Arquivos_Sistemas/NCM/TO.csv'),PChar(ExtractFilePath(Application.ExeName) + '\tabelancm.csv'), 0, nil) = 0 then
        ERRO := True;
    end;

    if ERRO then
    BEGIN
      ShowMessage('Não Foi Possivel Fazer o download do novo arquivo, tente novamente mais tarde!');
      Exit;
    END;
    {$ENDREGION}

    Dir := ExtractFilePath(Application.ExeName) + '\tabelancm.csv';
  end;
    // se o path do arquivo não for passado o componente tenta baixar da URL
    // informada na propriedade URLDownload
    // Se o path for passado ele abre diretamente o arquivo informado
  if FileExists(dir) then
  begin
    if ACBrIBPTax1.AbrirTabela(Dir) then
    begin
     if FileExists('dados/ncm.xml') then
     begin
       DeleteFile('dados/ncm.xml') ;
       RecriaXml;
     end;
     //Definicoes gerais
      cxProgressBar1.Properties.Max := ACBrIBPTax1.Itens.Count;
      try
        for I := 0 to ACBrIBPTax1.Itens.Count - 1 do
        begin
          try
           Tabela.Append;
           tabela.FieldByName('versao').AsString := RetirarCaracteres(ACBrIBPTax1.VersaoArquivo,'.');
           tabela.FieldByName('ncm').AsString := Trim(ACBrIBPTax1.Itens[I].NCM);
           if ACBrIBPTax1.Itens[I].Excecao <> '' then
           begin
             tabela.FieldByName('ex').AsString := ACBrIBPTax1.Itens[I].Excecao;
           end;
           //tabela.ParamByName('ptabela').AsInteger := integer(ACBrIBPTax1.Itens[I].Tabela) ;
           tabela.FieldByName('descricao').AsString := Copy(SemAcentos(ACBrIBPTax1.Itens[I].Descricao),1,254);
//         tabela.ParamByName('paliq_Nac').AsFloat := ACBrIBPTax1.Itens[I].AliqNacional;
//         tabela.ParamByName('pAliq_Imp').AsFloat := ACBrIBPTax1.Itens[I].AliqImportado;
           tabela.FieldByName('aliq_Nacional').AsFloat := ACBrIBPTax1.Itens[I].FederalNacional;
           tabela.FieldByName('Aliq_Importada').AsFloat := ACBrIBPTax1.Itens[I].FederalImportado;
           tabela.FieldByName('Aliq_Estadual').AsFloat := ACBrIBPTax1.Itens[I].Estadual;
           tabela.FieldByName('Aliq_Municipal').AsFloat := ACBrIBPTax1.Itens[I].Municipal;
           tabela.Post;
          except

          end;
           cxProgressBar1.Position := i;
           cxProgressBar1.Refresh;
        end;
        Tabela.SaveToFile('dados/ncm.xml',dfXML);
       // FormatXMLFile('dados/ncm.xml');
        ShowMessage('Tabela Atualizada com Sucesso');
      except on e : exception do
        ShowMessage('Erro ao Importar'+e.Message);
      end;
    end;
  end;
end;

procedure TFrmCadastroNCM.BtnAtualizaNCMClick(Sender: TObject);
begin
try
    Label1.Visible := True;
    FrmCadastroNCM.Refresh;
    BtnAtualizaNCM.Enabled := false;
    atualizaNCM;
  finally
    Label1.Visible := FALSE;
    BtnAtualizaNCM.Enabled := true;
  end;
end;

procedure TFrmCadastroNCM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCadastroNCM.FormDestroy(Sender: TObject);
begin
  FrmCadastroNCM := nil;
end;

procedure TFrmCadastroNCM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //se for pressionado ESC
  if (key = vk_escape ) then
  begin
    //fecha o Form
    close;
  end
end;

procedure TFrmCadastroNCM.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
  begin
    Key := #0;
    SelectNext(activeControl,true,true);
  end;
end;

procedure TFrmCadastroNCM.FormShow(Sender: TObject);
begin
  if Tabela.FieldCount=0 then
  begin
    Tabela.FieldDefs.Clear;
    Tabela.FieldDefs.Add('NCM',ftString,10,false);
    tabela.FieldDefs.Add('EX', ftString, 3, false);
    tabela.FieldDefs.Add('TIPO', ftString, 2, false);
    tabela.FieldDefs.Add('DESCRICAO', ftString, 45, false);
    Tabela.FieldDefs.Add('ALIQ_NACIONAL',ftCurrency,0,false);
    tabela.FieldDefs.Add('ALIQ_IMPORTADA', ftCurrency, 0, false);
    tabela.FieldDefs.Add('ALIQ_ESTADUAL', ftCurrency, 0, false);
    tabela.FieldDefs.Add('ALIQ_MUNICIPAL', ftCurrency, 0, false);
    tabela.FieldDefs.Add('INICIO_VIGENCIA', ftDate, 0, false);
    tabela.FieldDefs.Add('FIM_VIGENCIA', ftDate, 0, false);
    tabela.FieldDefs.Add('CHAVE', ftString, 30, false);
    tabela.FieldDefs.Add('VERSAO', ftString, 20, false);
    tabela.FieldDefs.Add('FONTE', ftString, 40, false);
    Tabela.CreateDataSet;
  end;
  if not (FileExists('dados/ncm.xml')) then
  begin
    Tabela.SaveToFile('dados/ncm.xml',dfXML);
  end;
  tabela.LoadFromFile('dados/ncm.xml');
  Tabela.Active;
end;

procedure TFrmCadastroNCM.RecriaXml;
begin
if Tabela.FieldCount=0 then
  begin
    Tabela.FieldDefs.Clear;
    Tabela.FieldDefs.Add('NCM',ftString,10,false);
    tabela.FieldDefs.Add('EX', ftString, 3, false);
    tabela.FieldDefs.Add('TIPO', ftString, 2, false);
    tabela.FieldDefs.Add('DESCRICAO', ftString, 45, false);
    Tabela.FieldDefs.Add('ALIQ_NACIONAL',ftCurrency,0,false);
    tabela.FieldDefs.Add('ALIQ_IMPORTADA', ftCurrency, 0, false);
    tabela.FieldDefs.Add('ALIQ_ESTADUAL', ftCurrency, 0, false);
    tabela.FieldDefs.Add('ALIQ_MUNICIPAL', ftCurrency, 0, false);
    tabela.FieldDefs.Add('INICIO_VIGENCIA', ftDate, 0, false);
    tabela.FieldDefs.Add('FIM_VIGENCIA', ftDate, 0, false);
    tabela.FieldDefs.Add('CHAVE', ftString, 30, false);
    tabela.FieldDefs.Add('VERSAO', ftString, 20, false);
    tabela.FieldDefs.Add('FONTE', ftString, 40, false);
    Tabela.CreateDataSet;
  end;
  if not (FileExists('dados/ncm.xml')) then
  begin
    Tabela.SaveToFile('dados/ncm.xml',dfXML);
  end;
  tabela.LoadFromFile('dados/ncm.xml');
  Tabela.Active;
end;

Procedure TFrmCadastroNCM.FormatXMLFile(XmlFile:string);
var
  oXml : TXMLDocument;
  s : utf8String;
begin
  oXml := TXMLDocument.Create(nil);
  try
   oXml.LoadFromFile(XmlFile);
   s := oxml.XML.Text;
   s := StringReplace(s, '><', '>' + #13#10 + '<' , [rfReplaceAll]);
   oXml.XML.Text:= FormatXMLData(oxml.XML.Text);
   oxml.XML.Text := s;
   oXml.Active := true;
   oXml.SaveToFile(XmlFile);
  finally
   oXml := nil;
  end;
end;


function TFrmCadastroNCM.SemAcentos ( Texto: string ): string;
var
  Contar, Posicao: integer;
  Acentos, TiraAcentos: string;
begin
  Acentos:='áäàãâÁÄÀÃÂéëèêÉËÈÊíïìîÍÏÌÎóöòõôÓÖÒÕÔúüùûÚÜÙÛçÇ';
  TiraAcentos:='aaaaaAAAAAeeeeEEEEiiiiIIIIoooooOOOOOuuuuUUUUcC';
  Result:='';
  For Contar:=1 to Length(Texto) do
  begin
    Posicao:=Pos(Copy(Texto,Contar,1),Acentos);
    If Posicao=0 then
      Result:=Result+Copy(Texto,Contar,1)
    else
      Result:=Result+Copy(TiraAcentos,Posicao,1);
  end;
end;

function TFrmCadastroNCM.RetirarCaracteres(Texto: string; CaracteresRetirar: string): string;
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
