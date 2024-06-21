unit uFrmCadastroEmitente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Xml.adomxmldom,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, Datasnap.Provider, Datasnap.Xmlxform,
  Vcl.Mask;

type
  TFrmCadastroEmitente = class(TForm)
    Paginas: TPageControl;
    TBPesquisa: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Tabela: TClientDataSet;
    DataSource1: TDataSource;
    GPProdutos: TGroupBox;
    Label3: TLabel;
    nome: TEdit;
    Label10: TLabel;
    cnpj: TMaskEdit;
    Label11: TLabel;
    ie: TMaskEdit;
    Panel2: TPanel;
    BtnSalvar: TButton;
    BtnCancelar: TButton;
    GPFiscal: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    endereco: TEdit;
    numero: TEdit;
    estado: TComboBox;
    cidade: TComboBox;
    complemento: TEdit;
    bairro: TEdit;
    Label5: TLabel;
    telefone: TMaskEdit;
    GroupBox1: TGroupBox;
    rgAmbiente: TRadioGroup;
    Label2: TLabel;
    cbRegimeISSQN: TComboBox;
    Label14: TLabel;
    celular: TMaskEdit;
    Label15: TLabel;
    email: TEdit;
    cbRateioISSQN: TRadioGroup;
    cbRegime: TComboBox;
    Label4: TLabel;
    procedure BtnSalvarClick(Sender: TObject);
    Procedure FormatXMLFile(XmlFile:string);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure carregaEdits();
    Function SemAcentos ( Texto: string ): string;
    procedure nomeKeyPress(Sender: TObject; var Key: Char);
    function StrTran(pVariavel, pVelho, pNovo: String): String;
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmCadastroEmitente: TFrmCadastroEmitente;

implementation

uses
  uFrmMenu;

{$R *.dfm}

procedure TFrmCadastroEmitente.BtnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCadastroEmitente.BtnSalvarClick(Sender: TObject);
begin
  //dados do Produto
  Tabela.FieldByName('Nome').AsString        :=  Trim(SemAcentos(nome.Text));
  Tabela.FieldByName('cnpj').AsString        :=  Trim(SemAcentos(cnpj.Text));
  Tabela.FieldByName('ie').AsString          :=  Trim(SemAcentos(ie.Text));
  Tabela.FieldByName('telefone').AsString    :=  Trim(SemAcentos(telefone.Text));
  Tabela.FieldByName('celular').AsString     :=  Trim(SemAcentos(celular.Text));
  Tabela.FieldByName('email').AsString       :=  Trim(SemAcentos(email.Text));
  Tabela.FieldByName('endereco').AsString    :=  Trim(SemAcentos(endereco.Text));
  Tabela.FieldByName('numero').AsString      :=  Trim(SemAcentos(numero.Text));
  Tabela.FieldByName('complemento').AsString :=  Trim(SemAcentos(complemento.Text));
  Tabela.FieldByName('bairro').AsString      :=  Trim(SemAcentos(bairro.Text));
  Tabela.FieldByName('estado').AsString      :=  Trim(SemAcentos(estado.Text));
  Tabela.FieldByName('cidade').AsString      :=  Trim(SemAcentos(cidade.Text));
  Tabela.FieldByName('ambiente').AsInteger   :=  rgAmbiente.ItemIndex;
  Tabela.FieldByName('regime').AsInteger     :=  cbRegime.ItemIndex;
  Tabela.FieldByName('regimeISSQN').AsInteger:=  cbRegime.ItemIndex;
  Tabela.FieldByName('rateio').AsInteger     :=  cbRateioISSQN.ItemIndex;

  Tabela.Post;
  Tabela.SaveToFile('dados/emitente.xml',dfXML);
  FormatXMLFile('dados/emitente.xml');
  ShowMessage('Dados Gravados com sucesso!!');
end;

procedure TFrmCadastroEmitente.carregaEdits;
begin
  nome.Text               := Tabela.FieldByName('nome').AsString;
  cnpj.Text               := Tabela.FieldByName('cnpj').AsString;
  ie.Text                 := Tabela.FieldByName('ie').AsString;
  telefone.Text           := Tabela.FieldByName('telefone').AsString;
  celular.Text            := Tabela.FieldByName('celular').AsString;
  email.Text              := Tabela.FieldByName('email').AsString;
  endereco.Text           := Tabela.FieldByName('endereco').AsString;
  numero.Text             := Tabela.FieldByName('numero').AsString;
  complemento.Text        := Tabela.FieldByName('complemento').AsString;
  bairro.Text             := Tabela.FieldByName('bairro').AsString;
  estado.Text             := Tabela.FieldByName('estado').AsString;
  cidade.Text             := Tabela.FieldByName('cidade').AsString;
  rgAmbiente.ItemIndex    := Tabela.FieldByName('ambiente').AsInteger;
  cbRegime.ItemIndex      := Tabela.FieldByName('regime').AsInteger;
  cbRegimeISSQN.ItemIndex := Tabela.FieldByName('regimeISSQN').AsInteger;
  cbRateioISSQN.ItemIndex := Tabela.FieldByName('rateio').AsInteger;
end;

Procedure TFrmCadastroEmitente.FormatXMLFile(XmlFile:string);
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

procedure TFrmCadastroEmitente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCadastroEmitente.FormDestroy(Sender: TObject);
begin
  FrmCadastroEmitente := nil;
end;

procedure TFrmCadastroEmitente.FormShow(Sender: TObject);
begin
 if Tabela.FieldCount=0 then
  begin
    Tabela.FieldDefs.Clear;
    tabela.FieldDefs.Add('Nome', ftString, 30, false);
    tabela.FieldDefs.Add('cnpj', ftString, 20, false);
    tabela.FieldDefs.Add('ie', ftString, 20, false);
    tabela.FieldDefs.Add('telefone', ftString, 15, false);
    tabela.FieldDefs.Add('celular', ftString, 15, false);
    tabela.FieldDefs.Add('email', ftString, 100, false);
    tabela.FieldDefs.Add('endereco', ftString, 100, false);
    tabela.FieldDefs.Add('complemento', ftString, 40, false);
    tabela.FieldDefs.Add('numero', ftString, 10, false);
    tabela.FieldDefs.Add('bairro', ftString, 60, false);
    tabela.FieldDefs.Add('estado', ftString, 2, false);
    tabela.FieldDefs.Add('cidade', ftString, 140, false);
    tabela.FieldDefs.Add('ambiente', ftInteger, 0, false);
    tabela.FieldDefs.Add('regime', ftInteger, 0, false);
    tabela.FieldDefs.Add('regimeISSQN', ftInteger, 0, false);
    tabela.FieldDefs.Add('rateio', ftInteger, 0, false);
    Tabela.CreateDataSet;
  end;
  if not (FileExists('dados/emitente.xml')) then
  begin
    Tabela.SaveToFile('dados/emitente.xml',dfXML);
  end;
  tabela.LoadFromFile('dados/emitente.xml');
  Tabela.Active;

  //Coloco a Tabela em Modo de inserção ou Edição
  if Tabela.RecordCount > 0 then
  begin
    carregaEdits;
    Tabela.Edit;
  end else
  begin
    Tabela.Append;
  end;

  //Inicio sempre a Pagina na Pesquisa
  Paginas.ActivePageIndex := 0;
end;

procedure TFrmCadastroEmitente.nomeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9','a'..'z','A'..'Z','@','.','-','_', ' ',Chr(8)]) then
   Key:= #0
end;

function TFrmCadastroEmitente.SemAcentos ( Texto: string ): string;
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


function TFrmCadastroEmitente.StrTran(pVariavel, pVelho, pNovo: String): String;
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
