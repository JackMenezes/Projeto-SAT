unit uFrmCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Xml.adomxmldom,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, Datasnap.Provider, Datasnap.Xmlxform,
  Vcl.Mask;

type
  TFrmCadastroProdutos = class(TForm)
    Paginas: TPageControl;
    TBPesquisa: TTabSheet;
    TBCadastro: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Tabela: TClientDataSet;
    DataSource1: TDataSource;
    txtPesquisa: TEdit;
    rgPesquisa: TRadioGroup;
    SpeedButton1: TSpeedButton;
    BtnIncluir: TButton;
    BtnEditar: TButton;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    BtnExcluir: TButton;
    GPProdutos: TGroupBox;
    Label2: TLabel;
    codigo: TEdit;
    Label3: TLabel;
    nome: TEdit;
    Label5: TLabel;
    UN: TComboBox;
    Label4: TLabel;
    txtValor: TEdit;
    GPFiscal: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    NCM: TEdit;
    CEST: TEdit;
    CST_ICMS: TComboBox;
    CST_PIS: TComboBox;
    CST_COFINS: TComboBox;
    CST_IPI: TComboBox;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    Procedure FormatXMLFile(XmlFile:string);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    function GeraId(): Integer;
    procedure HabilitaBotoes();
    procedure DBGrid1DblClick(Sender: TObject);
    procedure carregaEdits();
    procedure LimpaEdits();
    Function SemAcentos ( Texto: string ): string;
    procedure nomeKeyPress(Sender: TObject; var Key: Char);
    procedure txtValorKeyPress(Sender: TObject; var Key: Char);
    procedure txtValorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    function StrTran(pVariavel, pVelho, pNovo: String): String;
    procedure txtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure rgPesquisaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmCadastroProdutos: TFrmCadastroProdutos;

implementation

uses
  uFrmMenu;

{$R *.dfm}

procedure TFrmCadastroProdutos.BtnIncluirClick(Sender: TObject);
begin
  Tabela.Filtered := False;
  LimpaEdits;
  codigo.Text := IntToStr(GeraId);
  Tabela.Append;
  HabilitaBotoes;
  nome.SetFocus;
end;

procedure TFrmCadastroProdutos.BtnSalvarClick(Sender: TObject);
begin
  //dados do Produto
  Tabela.FieldByName('Codigo').AsString     :=  Trim(codigo.Text);
  Tabela.FieldByName('Nome').AsString       :=  Trim(SemAcentos(nome.Text));
  Tabela.FieldByName('UN').AsString         :=  Trim(UN.Text);
  Tabela.FieldByName('Valor').AsCurrency    :=  StrToCurr(txtvalor.Text);
  //Dados dos Impostos
  Tabela.FieldByName('NCM').AsString        :=  Trim(NCM.Text);
  Tabela.FieldByName('CEST').AsString       :=  Trim(CEST.Text);
  Tabela.FieldByName('cst_icms').AsString   :=  trim(CST_ICMS.Text);
  Tabela.FieldByName('cst_pis').AsString    :=  trim(CST_PIS.Text);
  Tabela.FieldByName('cst_cofins').AsString :=  trim(CST_COFINS.Text);
  Tabela.FieldByName('cst_ipi').AsString    :=  trim(CST_IPI.Text);
  Tabela.Post;
  Tabela.SaveToFile('dados/produtos.xml',dfXML);
  FormatXMLFile('dados/produtos.xml');
  HabilitaBotoes;
  ShowMessage('Dados Gravados com sucesso!!');
  LimpaEdits;
end;

procedure TFrmCadastroProdutos.carregaEdits;
begin
  codigo.Text          := Tabela.FieldByName('Codigo').AsString;
  nome.Text            := Tabela.FieldByName('Nome').AsString;
  UN.Text              := Tabela.FieldByName('UN').AsString;
  txtvalor.Text        := FormatFloat('0.00', Tabela.FieldByName('Valor').AsCurrency);
  NCM.Text             := Tabela.FieldByName('ncm').AsString;
  CEST.Text            := Tabela.FieldByName('cest').AsString;
  CST_ICMS.ItemIndex   := Integer(CST_ICMS.Items.IndexOf(Tabela.FieldByName('cst_icms').AsString));
  CST_PIS.ItemIndex    := CST_PIS.Items.IndexOf(trim(Tabela.FieldByName('cst_pis').AsString));
  CST_COFINS.ItemIndex := CST_COFINS.Items.IndexOf(trim(Tabela.FieldByName('cst_cofins').AsString));
  CST_ipi.ItemIndex    := CST_ipi.Items.IndexOf(trim(Tabela.FieldByName('cst_ipi').AsString));
end;

procedure TFrmCadastroProdutos.DBGrid1DblClick(Sender: TObject);
begin
  paginas.ActivePageIndex := 1;
  carregaEdits;
end;

procedure TFrmCadastroProdutos.BtnCancelarClick(Sender: TObject);
begin
  Tabela.Cancel;
  HabilitaBotoes;
  LimpaEdits;
end;

procedure TFrmCadastroProdutos.BtnEditarClick(Sender: TObject);
begin
  if trim(codigo.Text) <> '' then
  begin
    Tabela.Edit;
    HabilitaBotoes;
    nome.SetFocus;
  end else
  begin
    ShowMessage('Nenhum Registro Selecionado para AlteraÁ„o');
  end;
end;

procedure TFrmCadastroProdutos.BtnExcluirClick(Sender: TObject);
begin
  if codigo.Text <> '' then
  begin
    Tabela.Delete;
    Tabela.SaveToFile('dados/produtos.xml',dfXML);
    FormatXMLFile('dados/produtos.xml');
    LimpaEdits;
    ShowMessage('Registro ExcluÌdo!');
    BtnIncluir.SetFocus;
  end else
  begin
    ShowMessage('Nenhum Registro Selecionado para ser ExcluÌdo!');
  end;
end;

Procedure TFrmCadastroProdutos.FormatXMLFile(XmlFile:string);
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

procedure TFrmCadastroProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not BtnIncluir.Enabled then
  begin
    Tabela.Cancel;
  end;
  Action := caFree;
end;

procedure TFrmCadastroProdutos.FormDestroy(Sender: TObject);
begin
  FrmCadastroProdutos := nil;
end;

procedure TFrmCadastroProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 //se for pressionado ESC
  if (key = vk_escape ) then
  begin
    //fecha o Form
    close;
  end
end;

procedure TFrmCadastroProdutos.FormShow(Sender: TObject);
begin
 if Tabela.FieldCount=0 then
  begin
    Tabela.FieldDefs.Clear;
    Tabela.FieldDefs.Add('Codigo',ftInteger,0,false);
    tabela.FieldDefs.Add('Nome', ftString, 30, false);
    tabela.FieldDefs.Add('UN', ftString, 3, false);
    tabela.FieldDefs.Add('Valor', ftCurrency, 0, false);
    tabela.FieldDefs.Add('NCM', ftString, 10, false);
    tabela.FieldDefs.Add('CEST', ftString, 10, false);
    tabela.FieldDefs.Add('cst_icms', ftString, 140, false);
    tabela.FieldDefs.Add('cst_pis', ftString, 140, false);
    tabela.FieldDefs.Add('cst_cofins', ftString, 140, false);
    tabela.FieldDefs.Add('cst_ipi', ftString, 140, false);
    Tabela.CreateDataSet;
  end;
  if not (FileExists('dados/produtos.xml')) then
  begin
    Tabela.SaveToFile('dados/produtos.xml',dfXML);
  end;
  tabela.LoadFromFile('dados/produtos.xml');
  Tabela.Active;

  //Inicio sempre a Pagina na Pesquisa
  Paginas.ActivePageIndex := 0;
end;

function TFrmCadastroProdutos.GeraId: Integer;
var
   NewID: Integer;
begin
//Assuming that your table has been created
   with Tabela do
   begin
      AggregatesActive := False;
      Aggregates.Clear;
      with Aggregates.Add do
      begin
        Expression := 'Max(Codigo)';
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

procedure TFrmCadastroProdutos.HabilitaBotoes;
begin
  BtnIncluir.Enabled  := not BtnIncluir.Enabled;
  BtnEditar.Enabled   := not BtnEditar.Enabled;
  BtnCancelar.Enabled := not BtnCancelar.Enabled;
  BtnSalvar.Enabled   := not BtnSalvar.Enabled;
  BtnExcluir.Enabled  := not BtnExcluir.Enabled;
  GPProdutos.Enabled  := not GPProdutos.Enabled;
  GPFiscal.Enabled    := not GPFiscal.Enabled;
end;

procedure TFrmCadastroProdutos.LimpaEdits;
begin
  codigo.Clear;
  nome.Clear;
  UN.ItemIndex  := 0;
  txtValor.Text := '0';
  NCM.Clear;
  CEST.Clear;
  CST_ICMS.ItemIndex := -1;
  CST_PIS.ItemIndex := -1;
  CST_COFINS.ItemIndex := -1;
  CST_IPI.ItemIndex := -1;
end;

procedure TFrmCadastroProdutos.nomeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9','a'..'z','A'..'Z', ' ',Chr(8)]) then
   Key:= #0
end;

procedure TFrmCadastroProdutos.rgPesquisaClick(Sender: TObject);
begin
  if rgPesquisa.ItemIndex = 0 then
  begin
    try
      StrToInt(txtPesquisa.Text);
    finally
      txtPesquisa.Clear;
      txtPesquisa.SetFocus;
    end;
  end;
end;

procedure TFrmCadastroProdutos.SpeedButton1Click(Sender: TObject);
begin
  Tabela.Filtered := False;
  if Trim(txtpesquisa.Text) = '' then
  begin
    txtPesquisa.SetFocus;
    Exit;
  end;

  if rgPesquisa.ItemIndex = 0 then
  begin
    //Pesquisa por CÛdigo
    try
      StrToInt(txtPesquisa.Text);
    except
      ShowMessage('Pesquisa por CÛdigo n„o pode conter Letras');
      txtPesquisa.SetFocus;
      Exit;
    end;
    if (txtPesquisa.Text <> '') then
    begin
      Tabela.Filter := 'Codigo=' +QuotedStr(txtPesquisa.text);
      Tabela.Filtered := True;
      Tabela.locate('Codigo',txtPesquisa.text,[]);
      if Tabela.RecordCount <= 0 then
      begin
        ShowMessage('CÛdigo N„o Encontrado!');
        txtPesquisa.SetFocus;
        Exit;
      end;
    end;
  end else
  begin
    //Pesquisa Por Nome
    if (txtPesquisa.Text <> '') then
    begin
      Tabela.Filter := 'Nome=' +QuotedStr(txtPesquisa.text + '*');
      Tabela.Filtered := True;
      Tabela.locate('Nome',txtPesquisa.text,[loCaseInsensitive, loPartialKey]);
    end;
  end;
end;

procedure TFrmCadastroProdutos.txtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if rgPesquisa.ItemIndex = 0 then
  begin
    if not (Key in ['0'..'9', #8]) then
      Key := #0;
  end;
end;

procedure TFrmCadastroProdutos.txtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

function TFrmCadastroProdutos.SemAcentos ( Texto: string ): string;
var
  Contar, Posicao: integer;
  Acentos, TiraAcentos: string;
begin
  Acentos:='·‰‡„‚¡ƒ¿√¬ÈÎËÍ…À» ÌÔÏÓÕœÃŒÛˆÚıÙ”÷“’‘˙¸˘˚⁄‹Ÿ€Á«';
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


procedure TFrmCadastroProdutos.txtValorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Valor: Currency;
  Apoio: String;
begin
  Valor := 0.00;

  if TEdit(Sender).Text <> '' then try
    Apoio := TEdit(Sender).Text;

    Apoio := StrTran(Apoio, FormatSettings.CurrencyString, '');
    Apoio := StrTran(Apoio, FormatSettings.ThousandSeparator, '');
    Apoio := StrTran(Apoio, FormatSettings.DecimalSeparator, '');
    Apoio := StrTran(Apoio, ' ', '');

    Valor := StrToCurr(Apoio) / 100;
  except
    Valor := 0.00;
  end;

  //TEdit(Sender).Text := FormatCurr(FormatSettings.CurrencyString + '#,##0.00', Valor);
   TEdit(Sender).Text := FormatCurr('#,##0.00', Valor);
  if TEdit(Sender).SelLength = 0 then
    TEdit(Sender).SelStart := Length(TEdit(Sender).Text);
end;

function TFrmCadastroProdutos.StrTran(pVariavel, pVelho, pNovo: String): String;
  var
    NovoTexto, Texto: String;
    PosIni, TamTexto, TamVelho: Integer;
  begin
    Texto := pVariavel;

    while Pos(pVelho, Texto) > 0 do begin

      PosIni := Pos(pVelho, Texto);
      TamTexto := Length(Texto);
      TamVelho := Length(pVelho);

      if PosIni = 1 then
        NovoTexto := pNovo+Copy(Texto, PosIni+TamVelho, TamTexto-TamVelho)
      else if PosIni = TamTexto then
        NovoTexto := Copy(Texto, 1, TamTexto-TamVelho)+pNovo
      else
        NovoTexto := Copy(Texto, 1, PosIni-1)+pNovo+Copy(Texto, PosIni+TamVelho, TamTexto-PosIni+TamVelho-1);

      Texto := NovoTexto;
    end;

    Result := Texto;
  end;

end.
