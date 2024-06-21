unit uFrmCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Xml.adomxmldom,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, Datasnap.Provider, Datasnap.Xmlxform,
  Vcl.Mask;

type
  TFrmCadastroClientes = class(TForm)
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
    Label4: TLabel;
    GPFiscal: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    endereco: TEdit;
    numero: TEdit;
    estado: TComboBox;
    cidade: TComboBox;
    Label12: TLabel;
    Label13: TLabel;
    complemento: TEdit;
    bairro: TEdit;
    telefone: TMaskEdit;
    celular: TMaskEdit;
    Label10: TLabel;
    cpf: TMaskEdit;
    pessoa: TRadioGroup;
    Label11: TLabel;
    rg: TMaskEdit;
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
    procedure pessoaClick(Sender: TObject);
    procedure enderecoKeyPress(Sender: TObject; var Key: Char);
    procedure bairroKeyPress(Sender: TObject; var Key: Char);
    procedure cidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmCadastroClientes: TFrmCadastroClientes;

implementation

uses
  uFrmMenu, uFrmCadastroProdutos;

{$R *.dfm}

procedure TFrmCadastroClientes.BtnIncluirClick(Sender: TObject);
begin
  Tabela.Filtered := False;
  LimpaEdits;
  codigo.Text := IntToStr(GeraId);
  Tabela.Append;
  HabilitaBotoes;
  nome.SetFocus;
end;

procedure TFrmCadastroClientes.BtnSalvarClick(Sender: TObject);
begin
  Tabela.FieldByName('Codigo').AsString      :=  Trim(codigo.Text);
  Tabela.FieldByName('Nome').AsString        :=  Trim(SemAcentos(nome.Text));
  Tabela.FieldByName('telefone').AsString    :=  Trim(telefone.Text);
  Tabela.FieldByName('celular').AsString     :=  celular.Text;
  Tabela.FieldByName('pessoa').AsInteger     :=  pessoa.ItemIndex;
  Tabela.FieldByName('cpf').AsString         :=  cpf.Text;
  Tabela.FieldByName('rg').AsString          :=  rg.Text;
  Tabela.FieldByName('endereco').AsString    :=  endereco.Text;
  Tabela.FieldByName('complemento').AsString :=  complemento.Text;
  Tabela.FieldByName('numero').AsString      :=  numero.Text;
  Tabela.FieldByName('bairro').AsString      :=  bairro.Text;
  Tabela.FieldByName('estado').AsString      :=  estado.Text;
  Tabela.FieldByName('cidade').AsString      :=  cidade.Text;
  Tabela.Post;
  Tabela.SaveToFile('dados/clientes.xml',dfXML);
  FormatXMLFile('dados/clientes.xml');
  HabilitaBotoes;
  ShowMessage('Dados Gravados com sucesso!!');
  LimpaEdits;
end;

procedure TFrmCadastroClientes.carregaEdits;
begin
  codigo.Text      := Tabela.FieldByName('Codigo').AsString;
  nome.Text        := Tabela.FieldByName('Nome').AsString;
  telefone.Text    := Tabela.FieldByName('telefone').AsString;
  celular.Text     := Tabela.FieldByName('celular').AsString;
  pessoa.ItemIndex := Tabela.FieldByName('pessoa').AsInteger;
  cpf.Text         := Tabela.FieldByName('cpf').AsString;
  rg.Text          := Tabela.FieldByName('rg').AsString;
  endereco.Text    := Tabela.FieldByName('endereco').AsString;
  complemento.Text := Tabela.FieldByName('complemento').AsString;
  numero.Text      := Tabela.FieldByName('numero').AsString;
  bairro.Text      := Tabela.FieldByName('bairro').AsString;
  estado.Text      := Tabela.FieldByName('estado').AsString;
  cidade.Text      := Tabela.FieldByName('cidade').AsString;
end;

procedure TFrmCadastroClientes.cidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9','a'..'z','A'..'Z', ' ',Chr(8)]) then
   Key:= #0
end;

procedure TFrmCadastroClientes.DBGrid1DblClick(Sender: TObject);
begin
  paginas.ActivePageIndex := 1;
  carregaEdits;
end;

procedure TFrmCadastroClientes.enderecoKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9','a'..'z','A'..'Z', ' ',Chr(8)]) then
   Key:= #0
end;

procedure TFrmCadastroClientes.bairroKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9','a'..'z','A'..'Z', ' ',Chr(8)]) then
   Key:= #0
end;

procedure TFrmCadastroClientes.BtnCancelarClick(Sender: TObject);
begin
  Tabela.Cancel;
  HabilitaBotoes;
  LimpaEdits;
end;

procedure TFrmCadastroClientes.BtnEditarClick(Sender: TObject);
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

procedure TFrmCadastroClientes.BtnExcluirClick(Sender: TObject);
begin
  if codigo.Text <> '' then
  begin
    Tabela.Delete;
    Tabela.SaveToFile('dados/clientes.xml',dfXML);
    FormatXMLFile('dados/clientes.xml');
    LimpaEdits;
    ShowMessage('Registro ExcluÌdo!');
    BtnIncluir.SetFocus;
  end else
  begin
    ShowMessage('Nenhum Registro Selecionado para ser ExcluÌdo!');
  end;
end;

Procedure TFrmCadastroClientes.FormatXMLFile(XmlFile:string);
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

procedure TFrmCadastroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not BtnIncluir.Enabled then
  begin
    Tabela.Cancel;
  end;
  Action := caFree;
end;

procedure TFrmCadastroClientes.FormDestroy(Sender: TObject);
begin
  FrmCadastroClientes := nil;
end;

procedure TFrmCadastroClientes.FormShow(Sender: TObject);
begin
  if Tabela.FieldCount=0 then
  begin
    Tabela.FieldDefs.Clear;
    Tabela.FieldDefs.Add('Codigo',ftInteger,0,false);
    tabela.FieldDefs.Add('Nome', ftString, 30, false);
    tabela.FieldDefs.Add('telefone', ftString, 15, false);
    tabela.FieldDefs.Add('celular', ftString, 15, false);
    Tabela.FieldDefs.Add('Pessoa',ftInteger,0,false);
    tabela.FieldDefs.Add('cpf', ftString, 25, false);
    tabela.FieldDefs.Add('rg', ftString, 15, false);
    tabela.FieldDefs.Add('endereco', ftString, 70, false);
    tabela.FieldDefs.Add('complemento', ftString, 30, false);
    tabela.FieldDefs.Add('numero', ftString, 10, false);
    tabela.FieldDefs.Add('bairro', ftString, 60, false);
    tabela.FieldDefs.Add('cidade', ftString, 100, false);
    tabela.FieldDefs.Add('estado', ftString, 2, false);
    Tabela.CreateDataSet;
  end;
  if not (FileExists('dados/clientes.xml')) then
  begin
    Tabela.SaveToFile('dados/clientes.xml',dfXML);
  end;
  tabela.LoadFromFile('dados/clientes.xml');
  Tabela.Active;

  //Inicio sempre a Pagina na Pesquisa
  Paginas.ActivePageIndex := 0;
end;

function TFrmCadastroClientes.GeraId: Integer;
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

procedure TFrmCadastroClientes.HabilitaBotoes;
begin
  BtnIncluir.Enabled  := not BtnIncluir.Enabled;
  BtnEditar.Enabled   := not BtnEditar.Enabled;
  BtnCancelar.Enabled := not BtnCancelar.Enabled;
  BtnSalvar.Enabled   := not BtnSalvar.Enabled;
  BtnExcluir.Enabled  := not BtnExcluir.Enabled;
  GPProdutos.Enabled  := not GPProdutos.Enabled;
  GPFiscal.Enabled    := not GPFiscal.Enabled;
end;

procedure TFrmCadastroClientes.LimpaEdits;
begin
  codigo.Clear;
  nome.Clear;
  telefone.Clear;
  celular.Clear;
  cpf.Clear;
  rg.Clear;
  endereco.Clear;
  complemento.Clear;
  numero.Clear;
  bairro.Clear;
  pessoa.ItemIndex  := 0;
  estado.ItemIndex  := 0;
  cidade.ItemIndex  := -1;
end;

procedure TFrmCadastroClientes.nomeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9','a'..'z','A'..'Z', ' ',Chr(8)]) then
   Key:= #0
end;

procedure TFrmCadastroClientes.pessoaClick(Sender: TObject);
begin
  if pessoa.ItemIndex = 1 then
  begin
    Label10.Caption := 'CNPJ';
    Label11.Caption := 'InscriÁ„o Estadual';
    cpf.EditMask := '99.999.999/9999-99';
  end else
  begin
    Label10.Caption := 'CPF';
    Label11.Caption := 'RG';
    cpf.EditMask := '999.999.999-99';
  end;
end;

procedure TFrmCadastroClientes.rgPesquisaClick(Sender: TObject);
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

procedure TFrmCadastroClientes.SpeedButton1Click(Sender: TObject);
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

procedure TFrmCadastroClientes.txtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if rgPesquisa.ItemIndex = 0 then
  begin
    if not (Key in ['0'..'9', #8]) then
      Key := #0;
  end;
end;

procedure TFrmCadastroClientes.txtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

function TFrmCadastroClientes.SemAcentos ( Texto: string ): string;
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


procedure TFrmCadastroClientes.txtValorKeyUp(Sender: TObject; var Key: Word;
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

function TFrmCadastroClientes.StrTran(pVariavel, pVelho, pNovo: String): String;
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
