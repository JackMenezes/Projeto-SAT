unit uFrmVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.ExtCtrls, cxCurrencyEdit, Vcl.Mask,  Data.DB,
  Datasnap.DBClient, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxButtonEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.DBCtrls, cxDBEdit, System.Math, pcnConversao, cxGroupBox, cxRadioGroup,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dateUtils;

type
  TFrmVendas = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    emissao: TcxDateEdit;
    numero: TEdit;
    nome_cliente: TEdit;
    Button1: TButton;
    codigo_cliente: TEdit;
    cpf: TMaskEdit;
    tipo_venda: TRadioGroup;
    Panel2: TPanel;
    BtnSalvar: TButton;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dinheiro: TcxCurrencyEdit;
    cheque: TcxCurrencyEdit;
    cartao: TcxCurrencyEdit;
    outros: TcxCurrencyEdit;
    desconto: TcxCurrencyEdit;
    acrescimo: TcxCurrencyEdit;
    total: TcxCurrencyEdit;
    vendas1: TClientDataSet;
    Panel4: TPanel;
    BtnIncluir: TButton;
    BtnExcluir: TButton;
    cliente: TClientDataSet;
    GridTmpVendas2: TcxGrid;
    GridTmpVendas2DBTableView1: TcxGridDBTableView;
    GridTmpVendas2_codigo_produto: TcxGridDBColumn;
    GridTmpVendas2_nome_produto: TcxGridDBColumn;
    GridTmpVendas2_un: TcxGridDBColumn;
    GridTmpVendas2_valor_un: TcxGridDBColumn;
    GridTmpVendas2_qtd: TcxGridDBColumn;
    GridTmpVendas2_valor_total: TcxGridDBColumn;
    GridTmpVendas2_CFOP: TcxGridDBColumn;
    GridTmpVendas2_NCM: TcxGridDBColumn;
    GridTmpVendas2Level1: TcxGridLevel;
    vendas2: TClientDataSet;
    produtos: TClientDataSet;
    DataSource1: TDataSource;
    vendas2numero: TIntegerField;
    vendas2codigo_produto: TIntegerField;
    vendas2nome_produto: TStringField;
    vendas2un: TStringField;
    vendas2valor_un: TCurrencyField;
    vendas2qtd: TFloatField;
    vendas2cfop: TStringField;
    vendas2ncm: TStringField;
    vendas2totalGeral: TAggregateField;
    vendas2valor_total: TCurrencyField;
    Label4: TLabel;
    subtotal: TcxDBCurrencyEdit;
    debito: TcxCurrencyEdit;
    debitotroco: TLabel;
    BuscaTabelaNCM: TClientDataSet;
    vendas2cst_icms: TStringField;
    vendas2cst_pis: TStringField;
    vendas2cst_cofins: TStringField;
    vendas2cst_ipi: TStringField;
    DataSource2: TDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    vendas1numero: TIntegerField;
    vendas1tipovenda: TIntegerField;
    vendas1codigo_cliente: TIntegerField;
    vendas1nome_cliente: TStringField;
    vendas1cpf_cliente: TStringField;
    vendas1subtotal: TCurrencyField;
    vendas1desconto: TCurrencyField;
    vendas1acrescimo: TCurrencyField;
    vendas1total: TCurrencyField;
    vendas1dinheiro: TCurrencyField;
    vendas1cheque: TCurrencyField;
    vendas1cartao: TCurrencyField;
    vendas1outros: TCurrencyField;
    cxGridDBTableView1numero: TcxGridDBColumn;
    cxGridDBTableView1data: TcxGridDBColumn;
    cxGridDBTableView1codigo_cliente: TcxGridDBColumn;
    cxGridDBTableView1nome_cliente: TcxGridDBColumn;
    cxGridDBTableView1cpf_cliente: TcxGridDBColumn;
    cxGridDBTableView1Total: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    vendas1emissao: TDateField;
    vendas1cancelado: TBooleanField;
    vendas1numeroCfe: TIntegerField;
    vendas1chaveCfe: TStringField;
    vendas1nomeArquivo: TStringField;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1NumeroCFe: TcxGridDBColumn;
    tipo_cartao: TcxRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cpfExit(Sender: TObject);
    procedure cpfKeyPress(Sender: TObject; var Key: Char);
    procedure cpfChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure codigo_clienteExit(Sender: TObject);
    procedure IniciaVenda();
    function GeraId: Integer;
    procedure SalvarVenda();
    procedure BtnSalvarClick(Sender: TObject);
    Procedure FormatXMLFile(XmlFile:string);
    procedure BtnIncluirClick(Sender: TObject);
    procedure AtualizaItens();
    procedure BtnExcluirClick(Sender: TObject);
    procedure GridTmpVendas2_codigo_produtoPropertiesEditValueChanged(
      Sender: TObject);
    procedure descontoPropertiesEditValueChanged(Sender: TObject);
    procedure AtualizaValores();
    procedure GridTmpVendas2_qtdPropertiesEditValueChanged(Sender: TObject);
    procedure GerarVendaSAT;
    procedure cxGridDBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure outrosExit(Sender: TObject);
    procedure cxGridDBTableView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure GridTmpVendas2_codigo_produtoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    function RetirarCaracteres(Texto: string; CaracteresRetirar: string): string;
    function ValidaCGC(NumeroCGC: string): Boolean;
    function ValidaCPF(NumeroCPF: string): Boolean;
    function Dia(Data: TDateTime): Integer;
    function Mes(Data: TDateTime): Integer;
    function Ano(Data: TDateTime): Integer;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendas: TFrmVendas;

implementation

{$R *.dfm}

uses uFrmMenu, uFrmPesquisa;

procedure TFrmVendas.AtualizaItens;
begin
  //Atualizo os itens da vendas2 de acordo com a Vendas1
  vendas2.Filter := 'numero=' +QuotedStr(numero.Text);
  vendas2.Filtered := True;
end;

procedure TFrmVendas.AtualizaValores;
begin
   total.Value := (subtotal.value + acrescimo.Value) - Desconto.Value;
   debito.Value := total.Value - (dinheiro.Value + cheque.Value + cartao.Value + outros.Value);
   if debito.value < 0 then
   begin
     debito.Value := debito.Value * -1;
     debitotroco.Caption := 'Troco';
   end else
   begin
     debitotroco.Caption := 'Débito';
   end;
   if cartao.Value > 0 then
   begin
     tipo_cartao.Visible := True;
   end else
   begin
     tipo_cartao.Visible := false;
   end;
end;

procedure TFrmVendas.BtnExcluirClick(Sender: TObject);
begin
  vendas2.delete;
end;

procedure TFrmVendas.BtnIncluirClick(Sender: TObject);
begin
  vendas2.Append;
  vendas2.FieldByName('numero').AsInteger := StrToInt(numero.Text);
  AtualizaItens;
  //Coloco o Foco dentro do Campo Codigo do Produto
  GridTmpVendas2.SetFocus;
  GridTmpVendas2DBTableView1.Controller.FocusedItem := GridTmpVendas2_codigo_produto;
  GridTmpVendas2DBTableView1.Controller.EditingItem := GridTmpVendas2_codigo_produto;
end;

procedure TFrmVendas.BtnSalvarClick(Sender: TObject);
begin
  if not FrmMenu.bSAT then
  begin
    ShowMessage('Impossivel Gerar Venda, SAT sem comunicação, verifique');
    Exit;
  end;
  if (codigo_cliente.Text = '') or (codigo_cliente.Text = trim('0')) then
  begin
    codigo_cliente.text := '0';
    nome_cliente.Text := 'CONSUMIDOR';
  end;
  if subtotal.Value <= 0 then
  begin
    ShowMessage('Cupom Sem Valor! Favor confira!');
    Exit;
  end;
  if vendas2.RecordCount <=0 then
  begin
    ShowMessage('Cupom Sem Itens, favor verifique!');
    Exit;
  end;
  if (debitotroco.Caption = 'Débito') and (debito.value > 0) then
  begin
    ShowMessage('Venda não pode Deixar Débito');
    dinheiro.SetFocus;
    Exit;
  end;

  GerarVendaSAT;
  //Transmite a venda SAT para o Equipamento
  if not FileExists( ExtractFilePath(Application.ExeName) + 'SAT\GERADAS\CFe-'+ numero.Text+'.xml') then
  begin
    showmessage('Arquivo XML Não Encontrado!');
    Exit;
  end;
  FrmMenu.ACBrSAT1.EnviarDadosVenda( FrmMenu.ACBrSAT1.CFe.AsXMLString );
  if FrmMenu.ACBrSAT1.Resposta.codigoDeRetorno = 6000 then
  begin
    SalvarVenda;
    FrmMenu.ACBrSAT1.ImprimirExtrato;
    IniciaVenda;
    showmessage('CUPOM EMITIDO COM SUCESSO!');
  end else
  begin
    showmessage('Erro Ao Enviar dados da Venda: Código:'+ IntToStr(FrmMenu.ACBrSAT1.Resposta.codigoDeRetorno)+ #13+ 'Mensagem:'+FrmMenu.ACBrSAT1.Resposta.RetornoStr);
  end;
end;

procedure TFrmVendas.Button1Click(Sender: TObject);
var
  FPesquisa : TFrmPesquisa;
begin
    FPesquisa:= TFrmPesquisa.Create(Nil);
    try
      FPesquisa.pesquisade := 1;
      FPesquisa.ShowModal;
      if not FPesquisa.cancelou then
      begin
        codigo_cliente.Text := IntToStr(fPesquisa.codigo);
        nome_cliente.Text   := fpesquisa.nome;
      end;
    finally
      FPesquisa.Free;
    end;
end;

procedure TFrmVendas.codigo_clienteExit(Sender: TObject);
begin
  try
    if (codigo_cliente.Text <> '') then
    begin
      if not (FileExists('dados/clientes.xml')) then
      begin
        cliente.SaveToFile('dados/clientes.xml',dfXML);
      end;
      cliente.LoadFromFile('dados/clientes.xml');
      cliente.Active;
      //Pesquisar Cliente pelo Código
      cliente.Filter := 'Codigo=' +QuotedStr(codigo_cliente.text);
      cliente.Filtered := True;
      cliente.locate('Codigo',codigo_cliente.text,[]);
      if cliente.RecordCount <= 0 then
      begin
        ShowMessage('Código Não Encontrado!');
        nome_cliente.Clear;
        codigo_cliente.SetFocus;
        Exit;
      end else
      begin
        nome_cliente.Text := cliente.FieldByName('nome').AsString;
        cpf.SetFocus;
      end;
    end;
  finally
    cliente.Filtered := False;
  end;
end;

procedure TFrmVendas.cpfChange(Sender: TObject);
var
  cpfAtual : string;
begin
  cpfAtual := Trim(RetirarCaracteres(cpf.Text, './\-_ '));
  if Length(cpfAtual) < 11 then
  begin
    cpf.EditMask := '';
  end;

end;

procedure TFrmVendas.cpfExit(Sender: TObject);
begin
  if Trim(cpf.Text) <> '' then
  begin
    if Length(cpf.Text) > 11 then
    begin
       if ValidaCGC(Trim(cpf.Text)) then
      begin
        cpf.EditMask := '99.999.999/9999-99';
      end else
      begin
        showmessage('O CPF Informado é Inválido');
        cpf.SetFocus;
        Exit;
      end;
    end else
    begin
      if ValidaCPF(Trim(cpf.Text)) then
      begin
        cpf.EditMask := '999.999.999-99';
      end else
      begin
        showmessage('O CPF Informado é Inválido');
        cpf.SetFocus;
        Exit;
      end;
    end;
  end else
  begin
    BtnIncluir.SetFocus;
  end;
end;

procedure TFrmVendas.cpfKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TFrmVendas.cxGridDBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  pastadata, mescomZero : string;
begin
  if (vendas1.RecordCount) > vendas1.FieldByName('numero').AsInteger then
  begin
    ShowMessage('Você só pode Cancelar o Último Cupom emitido!');
    Exit;
  end;
  if Mes(vendas1.FieldByName('emissao').AsDateTime) < 10 then
  begin
    mescomZero := '0'+ IntToStr(Mes(vendas1.FieldByName('emissao').AsDateTime));
  end else
  begin
    mescomZero := IntToStr(Mes(vendas1.FieldByName('emissao').AsDateTime));
  end;
  pastadata := IntToStr(Ano(vendas1.FieldByName('emissao').AsDateTime)) + mescomZero;
  FrmMenu.ACBrSAT1.CFe.LoadFromFile('SAT/TRANSMITIDAS/'+ pastadata + '/'+ vendas1.FieldByName('nomeArquivo').AsString);
  FrmMenu.ACBrSAT1.CFe2CFeCanc;

  frmmenu.ACBrSAT1.CancelarUltimaVenda;

  if (FrmMenu.ACBrSAT1.Resposta.codigoDeRetorno = 7000) or (FrmMenu.ACBrSAT1.Resposta.codigoDeRetorno = 7007)  then
  begin
     Vendas1.Edit;
     Vendas1.FieldByName('cancelado').AsBoolean := true;
     Vendas1.Post;
     vendas1.SaveToFile('dados/vendas.xml',dfXML);
     FormatXMLFile('dados/vendas.xml');
     showmessage('Cupom SAT Cancelado com sucesso');
  end;
  FrmMenu.ACBrSAT1.ImprimirExtratoCancelamento;
end;

procedure TFrmVendas.cxGridDBTableView1Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  pastadata, mescomZero : string;
begin
  if not Vendas1.FieldByName('cancelado').AsBoolean then
  begin
    if Mes(vendas1.FieldByName('emissao').AsDateTime) < 10 then
    begin
      mescomZero := '0'+ IntToStr(Mes(vendas1.FieldByName('emissao').AsDateTime));
    end else
    begin
      mescomZero := IntToStr(Mes(vendas1.FieldByName('emissao').AsDateTime));
    end;
    pastadata := IntToStr(Ano(vendas1.FieldByName('emissao').AsDateTime)) + mescomZero;
    FrmMenu.ACBrSAT1.CFe.LoadFromFile('SAT/TRANSMITIDAS/'+ pastadata + '/'+ vendas1.FieldByName('nomeArquivo').AsString);

     FrmMenu.ACBrSAT1.ImprimirExtrato;
  end else
  begin
    ShowMessage('Este Cupom Foi Está cancelado!');
  end;
end;

procedure TFrmVendas.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  indice : Integer;
begin
 indice := (Sender as TcxGridDBTableView).GetColumnByFieldName('cancelado').Index;
  if (AViewInfo.GridRecord.Values[Indice] <> null ) then
  begin
    indice := (Sender as TcxGridDBTableView).GetColumnByFieldName('cancelado').Index;
    if (AViewInfo.GridRecord.Values[Indice] = true ) then
    begin
      ACanvas.Canvas.Font.Style := [fsBold];
      ACanvas.Canvas.Brush.Color := clRed;
      ACanvas.Canvas.Font.Color := clBlack;
    end else
    begin
      ACanvas.Canvas.Font.Style := [fsBold];
      ACanvas.Canvas.Brush.Color := clGreen;
      ACanvas.Canvas.Font.Color := clBlack;
    end;
  end;
end;

procedure TFrmVendas.descontoPropertiesEditValueChanged(Sender: TObject);
begin
  AtualizaValores;
end;

procedure TFrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmVendas.FormDestroy(Sender: TObject);
begin
  FrmVendas := nil;
end;

procedure TFrmVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //se for pressionado ESC
  if (key = vk_escape ) then
  begin
    //fecha o Form
    close;
  end
end;

procedure TFrmVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
  begin
    Key := #0;
    SelectNext(activeControl,true,true);
  end;
end;

procedure TFrmVendas.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  if not (FileExists('dados/vendas.xml')) then
  begin
    vendas1.CreateDataSet;
    vendas1.SaveToFile('dados/vendas.xml',dfXML);
  end;
  vendas1.LoadFromFile('dados/vendas.xml');
  vendas1.Active;

  if not (FileExists('dados/vendas2.xml')) then
  begin
    vendas2.CreateDataSet;
    vendas2.SaveToFile('dados/vendas2.xml',dfXML);
  end;
  vendas2.LoadFromFile('dados/vendas2.xml');
  vendas2.Active;
  //Carrega os Produtos
  if not (FileExists('dados/produtos.xml')) then
  begin
    produtos.CreateDataSet;
    produtos.SaveToFile('dados/produtos.xml',dfXML);
  end;
  produtos.LoadFromFile('dados/produtos.xml');
  produtos.Active;

  IniciaVenda;
end;

procedure TFrmVendas.IniciaVenda;
begin
  //Inicia os dados Básicos da Venda
  vendas1.Append;
  emissao.Date := Date;
  numero.Text  := IntToStr(GeraId);
  tipo_venda.ItemIndex := 0;
  codigo_cliente.Clear;
  nome_cliente.Clear;
  cpf.Clear;
  subtotal.Value := 0;
  desconto.Value := 0;
  acrescimo.Value := 0;
  total.Value := 0;
  dinheiro.Value := 0;
  cheque.Value := 0;
  cartao.Value := 0;
  outros.Value := 0;
  codigo_cliente.SetFocus;
  AtualizaItens;
end;

procedure TFrmVendas.outrosExit(Sender: TObject);
begin
  BtnSalvar.SetFocus;
end;

procedure TFrmVendas.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 1 then
  begin
    if vendas1.State in [dsEdit, dsInsert] then
    begin
     vendas1.Cancel;
    end;
  end;
end;

procedure TFrmVendas.SalvarVenda;
begin
  if not (vendas1.State in [dsEdit, dsInsert]) then
  begin
    vendas1.Append;
  end;
  vendas1.FieldByName('numero').AsInteger         := StrToInt(numero.Text);
  vendas1.FieldByName('emissao').AsDateTime       := emissao.Date;
  vendas1.FieldByName('tipovenda').AsInteger      := tipo_venda.ItemIndex;
  vendas1.FieldByName('codigo_cliente').AsInteger := StrToInt(codigo_cliente.Text);
  vendas1.FieldByName('nome_cliente').AsString    := Trim(nome_cliente.Text);
  vendas1.FieldByName('cpf_cliente').AsString     := Trim(cpf.Text);
  vendas1.FieldByName('subtotal').AsCurrency      := subtotal.Value;
  vendas1.FieldByName('desconto').AsCurrency      := desconto.Value;
  vendas1.FieldByName('acrescimo').AsCurrency     := acrescimo.Value;
  vendas1.FieldByName('total').AsCurrency         := total.Value;
  vendas1.FieldByName('dinheiro').AsCurrency      := dinheiro.Value;
  vendas1.FieldByName('cheque').AsCurrency        := cheque.Value;
  vendas1.FieldByName('cartao').AsCurrency        := cartao.Value;
  vendas1.FieldByName('outros').AsCurrency        := outros.Value;
  Vendas1.FieldByName('NomeArquivo').AsString     := ExtractFileName(FrmMenu.ACBrSAT1.CFe.NomeArquivo);
  Vendas1.FieldByName('numeroCfe').AsInteger      := FrmMenu.ACBrSAT1.CFe.ide.nCFe;
  Vendas1.FieldByName('chaveCfe').AsString        := FrmMenu.ACBrSAT1.CFe.infCFe.ID;
  Vendas1.FieldByName('cancelado').AsBoolean      := False;
  Vendas1.Post;

  vendas1.SaveToFile('dados/vendas.xml',dfXML);
  FormatXMLFile('dados/vendas.xml');
  //Grava os dados da tabela Vendas2
  vendas2.SaveToFile('dados/vendas2.xml',dfXML);
  FormatXMLFile('dados/vendas2.xml');

//  Alerta('Venda Salva com Sucesso!');
end;

function TFrmVendas.GeraId: Integer;
var
   NewID: Integer;
begin
//Assuming that your table has been created
   with vendas1 do
   begin
      AggregatesActive := False;
      Aggregates.Clear;
      with Aggregates.Add do
      begin
        Expression := 'Max(numero)';
        AggregateName := 'Runtime';
        Active := True;
      end;

      AggregatesActive := True;

      try
        NewID := Aggregates[0].Value;
        // ...or alternatively
        // NewID := Aggregates.Find('Runtime').Value;
        Inc(NewID);
      except
        NewID := 1;
      end;
     //   on E: Exception do SomeHandle; //Probably shouldn't throw exception
      end;

      // Next set field value to NewID
    //  Insert;
       result := NewID;

end;

procedure TFrmVendas.GridTmpVendas2_codigo_produtoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  FPesquisa : TFrmPesquisa;
begin
    FPesquisa:= TFrmPesquisa.Create(Nil);
    try
      FPesquisa.pesquisade := 2;//Pesquisa no Arquivo de Produtos
      FPesquisa.ShowModal;
      if not FPesquisa.cancelou then
      begin
        vendas2.Edit;
        GridTmpVendas2_codigo_produto.DataBinding.Field.AsString := IntToStr(fPesquisa.codigo);
        GridTmpVendas2_nome_produto.DataBinding.Field.AsString   := fpesquisa.nome;
        GridTmpVendas2_un.DataBinding.Field.AsString             := fpesquisa.un;
        GridTmpVendas2_valor_un.DataBinding.Field.AsCurrency     := fpesquisa.valor;
        GridTmpVendas2_qtd.DataBinding.Field.AsString            := '1';
        GridTmpVendas2_valor_total.DataBinding.Field.AsCurrency  := fpesquisa.valor;
        GridTmpVendas2_CFOP.DataBinding.Field.AsString           := '5102';
        GridTmpVendas2_NCM.DataBinding.Field.AsString            := fpesquisa.ncm;
        vendas2.FieldByName('cst_icms').AsString                 := fpesquisa.cst_icms;
        vendas2.FieldByName('cst_pis').AsString                  := fpesquisa.cst_pis;
        vendas2.FieldByName('cst_cofins').AsString               := fpesquisa.cst_cofins;
        vendas2.FieldByName('cst_ipi').AsString                  := fpesquisa.cst_ipi;
        vendas2.Post;
        vendas2.Edit;
        AtualizaValores;
      end;
    finally
      FPesquisa.Free;
    end;
end;

procedure TFrmVendas.GridTmpVendas2_codigo_produtoPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    //Pesquiso o produto por código
    if (TcxButtonEdit(Sender).Text <> '') then
    begin
      produtos.Filter := 'Codigo=' +QuotedStr(TcxButtonEdit(Sender).Text);
      produtos.Filtered := True;
      produtos.locate('Codigo',TcxButtonEdit(Sender).Text,[]);
      if produtos.RecordCount <= 0 then
      begin
        ShowMessage('Código Não Encontrado!');
        GridTmpVendas2_codigo_produto.Focused;
        Exit;
      end else
      begin
        GridTmpVendas2_codigo_produto.DataBinding.Field.AsString := TcxButtonEdit(Sender).Text;
        GridTmpVendas2_nome_produto.DataBinding.Field.AsString := produtos.FieldByName('nome').AsString;
        GridTmpVendas2_un.DataBinding.Field.AsString := produtos.FieldByName('un').AsString;
        GridTmpVendas2_valor_un.DataBinding.Field.AsCurrency := produtos.FieldByName('Valor').AsCurrency;
        GridTmpVendas2_qtd.DataBinding.Field.AsString := '1';
        GridTmpVendas2_valor_total.DataBinding.Field.AsCurrency := produtos.FieldByName('Valor').AsCurrency;
        GridTmpVendas2_CFOP.DataBinding.Field.AsString := '5102';
        GridTmpVendas2_NCM.DataBinding.Field.AsString  := produtos.FieldByName('ncm').AsString;
        vendas2.FieldByName('cst_icms').AsString       := produtos.FieldByName('cst_icms').AsString;
        vendas2.FieldByName('cst_pis').AsString        := produtos.FieldByName('cst_pis').AsString;
        vendas2.FieldByName('cst_cofins').AsString     := produtos.FieldByName('cst_cofins').AsString;
        vendas2.FieldByName('cst_ipi').AsString        := produtos.FieldByName('cst_ipi').AsString;
        vendas2.Post;
        vendas2.Edit;
        AtualizaValores;
      end;
    end;
  finally
    produtos.Filtered := False;
  end;
end;

procedure TFrmVendas.GridTmpVendas2_qtdPropertiesEditValueChanged(
  Sender: TObject);
begin
  if TcxButtonEdit(Sender).EditValue < 0 then
  begin
    showmessage('Quantidade não pode ser menor que 0!');
    TcxButtonEdit(Sender).EditValue := 1;
    Exit;
  end;
  if Trim(TcxCurrencyEdit(Sender).Text) = '' then
  begin
    GridTmpVendas2_qtd.DataBinding.Field.AsFloat := 1;
  end else begin
     GridTmpVendas2_qtd.DataBinding.Field.AsFloat := StrToFloat(Trim(TcxCurrencyEdit(Sender).Text));
  end;
  GridTmpVendas2_valor_total.EditValue := GridTmpVendas2_qtd.EditValue * GridTmpVendas2_valor_un.EditValue;
  AtualizaValores;
end;

Procedure TFrmVendas.FormatXMLFile(XmlFile:string);
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

procedure TFrmVendas.GerarVendaSAT;
var
  TotalItem, valor_trib_Fe : Double;
  n_Item, cso : Integer;
  InformacoesAdicionias : String;
begin
    FrmMenu.ACBrSAT1.CFe.IdentarXML := True;
    FrmMenu.ACBrSAT1.CFe.TamanhoIdentacao := 3;

  // Trasnferindo Informações de Config para o CFe //
    FrmMenu.AjustarSAT;
    FrmMenu.ACBrSAT1.InicializaCFe ;

  // Montando uma Venda //
  with FrmMenu.ACBrSAT1.CFe do
  begin
    ide.numeroCaixa := 1;
    Emit.xNome := FrmMenu.Emitente.FieldByName('nome' ).AsString;
    Emit.xFant := FrmMenu.emitente.FieldByName('nome').AsString;

    Dest.CNPJCPF := cpf.Text;
    if Trim(nome_cliente.Text) = '' then
    begin
      Dest.xNome := 'CONSUMIDOR';
    end else
    begin
      Dest.xNome := nome_cliente.Text;
    end;


    InformacoesAdicionias := '';
   
   // if vendas1.FieldByName('obs1').AsString <> '' then
   //   InformacoesAdicionias := InformacoesAdicionias + vendas1.FieldByName('obs1').AsString;


    //Verificar se é para Informar o Endereço de Entrega
   // Entrega.xLgr := 'logradouro';
   // Entrega.nro := '112233';
   // Entrega.xCpl := 'complemento';
   // Entrega.xBairro := 'bairro';
   // Entrega.xMun := 'municipio';
  //  Entrega.UF := 'RJ';

    vendas2.First;
    n_Item := 1;
    valor_trib_Fe := 0;
    while not vendas2.Eof do
    begin
      with Det.Add do
      begin
        nItem  := n_Item;
        n_Item := n_Item + 1;
        Prod.cProd  :=   vendas2.FieldByName('codigo_produto').AsString;

        if Length(vendas2.FieldByName('codigo_produto').AsString) = 13 then
          Prod.cEAN   :=   vendas2.FieldByName('codigo_produto').AsString;

        Prod.xProd     :=   vendas2.FieldByName('nome_produto').AsString;
        prod.NCM       :=   vendas2.FieldByName('ncm').AsString;
        Prod.CFOP      :=   vendas2.FieldByName('cfop').AsString; //'5500'
        Prod.uCom      :=   vendas2.FieldByName('UN').AsString;
        Prod.qCom      :=   vendas2.FieldByName('qtd').AsFloat;
        Prod.vUnCom    :=   vendas2.FieldByName('valor_un').AsCurrency;
        Prod.indRegra  := irArredondamento;
        //Prod.vDesc     := vendas2.FieldByName('desconto').AsCurrency;

    //   with Prod.obsFiscoDet.Add do
    //   begin
    //     xCampoDet := 'campo';
    //     xTextoDet := 'texto';
    //   end;

        TotalItem := vendas2.FieldByName('valor_total').AsFloat;
        Imposto.ICMS.orig    := oeNacional;

        if FrmMenu.Emitente.FieldByName('regime').AsInteger = 0 then // 0 - Simples Nacional then
        begin
          //Busca as Configurações do CFOP para completar os dados dos Impostos
          cso := strtoint(trim(Copy(vendas2.fieldbyname('cst_icms').AsString,1,3))); //CsoSN
          case cso of
            //101: Imposto.ICMS.CSOSN := csosn101;
            102: Imposto.ICMS.CSOSN := csosn102;
            103: Imposto.ICMS.CSOSN := csosn103;
            201: Imposto.ICMS.CSOSN := csosn201;
            202: Imposto.ICMS.CSOSN := csosn202;
            203: Imposto.ICMS.CSOSN := csosn203;
            300: Imposto.ICMS.CSOSN := csosn300;
            400: Imposto.ICMS.CSOSN := csosn400;
            500: Imposto.ICMS.CSOSN := csosn500;
            900: Imposto.ICMS.CSOSN := csosn900;
          else Imposto.ICMS.CSOSN := csosn102;
          end;
          Imposto.ICMS.pICMS := 1;
          Imposto.PIS.CST := pis49;    //Se For Simples Nacional não pode ser diferente de 49
          Imposto.COFINS.CST := cof49;

        end else if FrmMenu.Emitente.FieldByName('regime').AsInteger = 2 then // 2 - Regime Normal
        begin
          cso := strtoint(trim(Copy(vendas2.fieldbyname('cst_icms').AsString,1,3))); //CST
          case cso of
            00: Imposto.ICMS.CST := cst00;
            10: Imposto.ICMS.CST := cst10;
            20: Imposto.ICMS.CST := cst20;
            30: Imposto.ICMS.CST := cst30;
            40: Imposto.ICMS.CST := cst40;
            41: Imposto.ICMS.CST := cst41;
            45: Imposto.ICMS.CST := cst45;
            50: Imposto.ICMS.CST := cst50;
            51: Imposto.ICMS.CST := cst51;
            60: Imposto.ICMS.CST := cst60;
            70: Imposto.ICMS.CST := cst70;
            80: Imposto.ICMS.CST := cst80;
            91: Imposto.ICMS.CST := cst81;
            90: Imposto.ICMS.CST := cst90;
          else Imposto.ICMS.CST := cst40;
          end;

          if cso = 00 then
          begin
            Imposto.ICMS.pICMS := vendas2.FieldByName('icms').AsCurrency;
            imposto.icms.vICMS := vendas2.FieldByName('valor_icms').AsCurrency;
          end;
           //Imposto.vItem12741 := TotalItem * 0.12;    //Verificar se 0.12 é para aliquita de 12% e adicionar a aliquota aqui!
           //

         // Imposto.PIS.CST := pis01;
         // Imposto.PIS.vBC := TotalItem;
        //  Imposto.PIS.pPIS := 0.65;

        //  Imposto.COFINS.CST := cof01;
        //  Imposto.COFINS.vBC := TotalItem;
        //  Imposto.COFINS.pCOFINS := 3;
          //Imposto.COFINSST.vBC := 87206.46;
          //Imposto.COFINSST.pCOFINS := 1.8457;

        end;

        infAdProd := 'Informacoes adicionais';
      end;
      //Detalhamento de Impostos Busco na tabela NCM para efetuar o calculo
    //Fazer o Calculo dos tributos aproximados
    {
      BuscaTabelaNCM.Active := True;
      //EX do calculo do Imposto para detalhar
      // Exemplo
      //Valor total do Produto 150,00
      //Aliquota da IBPT 32,66
      //ValorTributo = (150,00 * 32,66) / 100;
      //nacional
     } //FIm do calculo dos tributos aproximados preciso implementar
     if not (FileExists('dados/ncm.xml')) then
      begin
        BuscaTabelaNCM.SaveToFile('dados/ncm.xml',dfXML);
      end;
      BuscaTabelaNCM.LoadFromFile('dados/ncm.xml');
      BuscaTabelaNCM.Active;
      //Pesquisar Cliente pelo Código
      BuscaTabelaNCM.Filter := 'NCM=' +QuotedStr(vendas2.FieldByName('ncm').AsString);
      BuscaTabelaNCM.Filtered := True;
      BuscaTabelaNCM.locate('NCM',vendas2.FieldByName('ncm').AsString,[]);


      valor_trib_Fe := valor_trib_Fe + RoundTo(((vendas2.FieldByName('qtd').AsFloat * vendas2.FieldByName('valor_un').AsFloat)  * BuscaTabelaNCM.FieldByName('ALIQ_NACIONAL').AsFloat)/100, -2);
    // valor_trib_Fe := 0;
      vendas2.Next;
    end;
    Total.DescAcrEntr.vDescSubtot  :=  desconto.Value;
    Total.DescAcrEntr.vAcresSubtot :=  acrescimo.Value;

    Total.vCFeLei12741 := valor_trib_Fe;

    if tipo_venda.ItemIndex <> 0 then
    begin
       with Pagto.Add do
      begin
        cMP := mpCreditoLoja;
        vMP := vendas1.FieldByName('total').AsCurrency - vendas1.FieldByName('dinheiro').Asfloat - vendas1.FieldByName('cartao').Asfloat - vendas1.FieldByName('cheque_bom').Asfloat - vendas1.FieldByName('cheque_pre').Asfloat - vendas1.FieldByName('ticket').Asfloat - vendas1.FieldByName('outros').Asfloat ;
      end;
    end;

    if dinheiro.Value > 0 then
    begin
      with Pagto.Add do
      begin
        cMP := MPDinheiro;
        vMP := dinheiro.Value;
      end;
    end;

    if cartao.Value > 0 then
    begin
      with Pagto.Add do
      begin
         if tipo_cartao.ItemIndex = 0 then
           cMP := MPCartaodeCredito
         else
         cMP := mpCartaodeDebito;
         vMP := cartao.Value;
      end;
    end;

    if cheque.value > 0 then
    begin
      with Pagto.Add do
      begin
        cMP := mpCheque;
        vMP := vendas1.FieldByName('cheque').AsCurrency;
      end;
    end;


    if vendas1.FieldByName('outros').Asfloat > 0 then
    begin
      with Pagto.Add do
      begin
        cMP := mpOutros;
        vMP := vendas1.FieldByName('outros').AsCurrency;
      end;
    end;


    if InformacoesAdicionias <> '' then
      InfAdic.infCpl := InformacoesAdicionias + #13+#13;

    InfAdic.infCpl := InfAdic.infCpl + 'Conheça o SAC (Sistema de Automação Comercial)'+
                                       'Faça o download em - www.sistemasnetsolutions.com.br'
  end;


   FrmMenu.ACBrSAT1.CFe.GerarXML( true ) ; //Gera o XML para Transmitir
   FrmMenu.ACBrSAT1.CFe.SaveToFile(ExtractFilePath(Application.ExeName) + 'SAT\GERADAS\CFe-'+ numero.Text+'.xml')
end;

function TFrmVendas.RetirarCaracteres(Texto: string; CaracteresRetirar: string): string;
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


function TFrmVendas.ValidaCGC(NumeroCGC: string): Boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: Integer;
  d1, d2: Integer;
  digitado, calculado: string;
begin
  Result := False;
  if Length(NumeroCGC) < 12 then
  begin
    Exit;
  end;
  try
    n1 := StrToInt(NumeroCGC[1]);
    n2 := StrToInt(NumeroCGC[2]);
    n3 := StrToInt(NumeroCGC[3]);
    n4 := StrToInt(NumeroCGC[4]); // Retira cada numero do Edit, e joda p/ variavel
    n5 := StrToInt(NumeroCGC[5]);
    n6 := StrToInt(NumeroCGC[6]);
    n7 := StrToInt(NumeroCGC[7]);
    n8 := StrToInt(NumeroCGC[8]);
    n9 := StrToInt(NumeroCGC[9]);
    n10 := StrToInt(NumeroCGC[10]);
    n11 := StrToInt(NumeroCGC[11]);
    n12 := StrToInt(NumeroCGC[12]);
    d1 := n12 * 2 + n11 * 3 + n10 * 4 + n9 * 5 + n8 * 6 + n7 * 7 + n6 * 8 + n5 * 9 + n4 * 2 + n3 * 3 + n2 * 4 + n1 * 5;
    d1 := 11 - (d1 mod 11);
    if d1 >= 10 then
      d1 := 0;
    d2 := d1 * 2 + n12 * 3 + n11 * 4 + n10 * 5 + n9 * 6 + n8 * 7 + n7 * 8 + n6 * 9 + n5 * 2 + n4 * 3 + n3 * 4 + n2 * 5 + n1 * 6;
    d2 := 11 - (d2 mod 11);
    if d2 >= 10 then
      d2 := 0;
    calculado := inttostr(d1) + inttostr(d2);
    digitado := NumeroCGC[13] + NumeroCGC[14];
    if calculado = digitado then
      Result := True;
  except
    exit;
  end;
end;

function TFrmVendas.ValidaCPF(NumeroCPF: string): Boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9: Integer;
  d1, d2: Integer;
  digitado, calculado: string;
begin
  Result := False;
  try
    n1 := StrToInt(NumeroCPF[1]);
    n2 := StrToInt(NumeroCPF[2]);
    n3 := StrToInt(NumeroCPF[3]);
    n4 := StrToInt(NumeroCPF[4]);
    n5 := StrToInt(NumeroCPF[5]);
    n6 := StrToInt(NumeroCPF[6]);
    n7 := StrToInt(NumeroCPF[7]);
    n8 := StrToInt(NumeroCPF[8]);
    n9 := StrToInt(NumeroCPF[9]);
    d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10;
    d1 := 11 - (d1 mod 11);
    if d1 >= 10 then
      d1 := 0;
    d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11;
    d2 := 11 - (d2 mod 11);
    if d2 >= 10 then
      d2 := 0;
    calculado := inttostr(d1) + inttostr(d2);
    digitado := NumeroCPF[10] + NumeroCPF[11];
    if calculado = digitado then
      Result := True;
  except
    Exit;
  end;
end;

function TFrmVendas.Dia(Data: TDateTime): Integer;
begin
  Result := DayOf(Data);
end;

function TFrmVendas.Mes(Data: TDateTime): Integer;
begin
  Result := MonthOf(Data);
end;

function TFrmVendas.Ano(Data: TDateTime): Integer;
begin
  Result := YearOf(Data);
end;



end.
