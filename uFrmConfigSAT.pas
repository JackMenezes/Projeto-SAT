unit uFrmConfigSAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Xml.adomxmldom,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, Datasnap.Provider, Datasnap.Xmlxform,
  Vcl.Mask, Vcl.Samples.Spin;

type
  TFrmConfigSAT = class(TForm)
    Paginas: TPageControl;
    TBPesquisa: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Tabela: TClientDataSet;
    DataSource1: TDataSource;
    GPProdutos: TGroupBox;
    Label3: TLabel;
    codigo_ativacao: TEdit;
    Panel2: TPanel;
    BtnSalvar: TButton;
    BtnCancelar: TButton;
    Label2: TLabel;
    assinaturaSW: TMemo;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    impressoraSAT: TComboBox;
    mostraPreview: TCheckBox;
    Label4: TLabel;
    caminho_sat: TEdit;
    Button1: TButton;
    GroupBox2: TGroupBox;
    margem_direita: TSpinEdit;
    margem_esquerda: TSpinEdit;
    margem_fundo: TSpinEdit;
    margem_topo: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    FileOpenDialog1: TFileOpenDialog;
    Button2: TButton;
    Button3: TButton;
    procedure BtnSalvarClick(Sender: TObject);
    Procedure FormatXMLFile(XmlFile:string);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure carregaEdits();
    Function SemAcentos ( Texto: string ): string;
    procedure codigo_ativacaoKeyPress(Sender: TObject; var Key: Char);
    function StrTran(pVariavel, pVelho, pNovo: String): String;
    procedure BtnCancelarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmConfigSAT: TFrmConfigSAT;

implementation

uses
  uFrmMenu;

{$R *.dfm}

procedure TFrmConfigSAT.BtnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmConfigSAT.BtnSalvarClick(Sender: TObject);
begin
  //dados do Produto
  Tabela.FieldByName('assinaturaSW').AsString        :=  Trim(assinaturaSW.Text);
  Tabela.FieldByName('codigo_ativacao').AsString     :=  Trim(codigo_ativacao.Text);
  Tabela.FieldByName('caminho_dll').AsString := caminho_sat.Text;
  Tabela.FieldByName('mostra_preview').AsBoolean := mostraPreview.Checked;
  Tabela.FieldByName('impressora').AsString := impressoraSAT.Text;
  Tabela.FieldByName('margem_direita').AsString := margem_direita.Text;
  Tabela.FieldByName('margem_esquerda').AsString := margem_esquerda.Text;
  Tabela.FieldByName('margem_fundo').AsString := margem_fundo.Text;
  Tabela.FieldByName('margem_topo').AsString := margem_topo.Text;

  Tabela.Post;
  Tabela.SaveToFile('dados/configs.xml',dfXML);
  FormatXMLFile('dados/configs.xml');
  ShowMessage('Dados Gravados com sucesso!!');
end;

procedure TFrmConfigSAT.Button1Click(Sender: TObject);
begin
  if FileOpenDialog1.Execute then
  begin
    caminho_sat.Text := FileOpenDialog1.FileName;
  end;
end;

procedure TFrmConfigSAT.Button2Click(Sender: TObject);
begin
   try
    try
      Enabled := False;
      Refresh;
      FrmMenu.ACBrSAT1.bloquearSAT;
      ShowMessage('SAT Debloqueado com Sucesso');
    except
      ShowMessage('O CORREU UM ERRO NA EXECU^ÇÃO DA OPERAÇÃO');
    end;
  finally
    Enabled := true;
    Refresh;
  end;
end;

procedure TFrmConfigSAT.Button3Click(Sender: TObject);
begin
  try
    try
      Enabled := False;
      Refresh;
      FrmMenu.ACBrSAT1.DesbloquearSAT;
      ShowMessage('SAT Debloqueado com Sucesso');
    except
      ShowMessage('O CORREU UM ERRO NA EXECU^ÇÃO DA OPERAÇÃO');
    end;
  finally
    Enabled := true;
    Refresh;
  end;
end;

procedure TFrmConfigSAT.carregaEdits;
begin
  assinaturaSW.Text       := Tabela.FieldByName('assinaturaSW').AsString;
  codigo_ativacao.Text    := Tabela.FieldByName('codigo_ativacao').AsString;
  caminho_sat.Text        := Tabela.FieldByName('caminho_dll').AsString;
  mostraPreview.Checked   := Tabela.FieldByName('mostra_preview').AsBoolean;
  impressoraSAT.Text      := Tabela.FieldByName('impressora').AsString;
  margem_direita.Text     := Tabela.FieldByName('margem_direita').AsString;
  margem_esquerda.Text    := Tabela.FieldByName('margem_esquerda').AsString;
  margem_fundo.Text       := Tabela.FieldByName('margem_fundo').AsString;
  margem_topo.Text        := Tabela.FieldByName('margem_topo').AsString;
end;

Procedure TFrmConfigSAT.FormatXMLFile(XmlFile:string);
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

procedure TFrmConfigSAT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmConfigSAT.FormDestroy(Sender: TObject);
begin
  FrmConfigSAT := nil;
end;

procedure TFrmConfigSAT.FormShow(Sender: TObject);
begin
 if Tabela.FieldCount=0 then
  begin
    Tabela.FieldDefs.Clear;
    tabela.FieldDefs.Add('assinaturaSW', ftMemo, 0, false);
    tabela.FieldDefs.Add('codigo_ativacao', ftString, 20, false);
    tabela.FieldDefs.Add('caminho_dll', ftString, 200, false);
    tabela.FieldDefs.Add('mostra_preview', ftBoolean, 0, false);
    tabela.FieldDefs.Add('impressora', ftString, 200, false);
    tabela.FieldDefs.Add('margem_direita', ftInteger, 0, false);
    tabela.FieldDefs.Add('margem_esquerda', ftInteger, 0, false);
    tabela.FieldDefs.Add('margem_fundo', ftInteger, 0, false);
    tabela.FieldDefs.Add('margem_topo', ftInteger, 0, false);
    Tabela.CreateDataSet;
  end;
  if not (FileExists('dados/configs.xml')) then
  begin
    Tabela.SaveToFile('dados/configs.xml',dfXML);
  end;
  tabela.LoadFromFile('dados/configs.xml');
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

procedure TFrmConfigSAT.codigo_ativacaoKeyPress(Sender: TObject; var Key: Char);
begin
//  if not (Key in['0'..'9','a'..'z','A'..'Z','@', ' ',Chr(8)]) then
 //  Key:= #0
end;

function TFrmConfigSAT.SemAcentos ( Texto: string ): string;
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


function TFrmConfigSAT.StrTran(pVariavel, pVelho, pNovo: String): String;
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
