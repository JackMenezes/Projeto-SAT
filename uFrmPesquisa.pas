unit uFrmPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPesquisa = class(TForm)
    DBGrid1: TDBGrid;
    txtPesquisa: TEdit;
    SpeedButton1: TSpeedButton;
    Tabela: TClientDataSet;
    DataSource1: TDataSource;
    Label3: TLabel;
    BtnSalvar: TButton;
    BtnCancelar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pesquisade, codigo : Integer;
    nome, cpf, un, ncm, cst_icms, cst_pis, cst_cofins, cst_ipi : string;
    valor : Currency;
    cancelou : Boolean;
  end;

var
  FrmPesquisa: TFrmPesquisa;

implementation

{$R *.dfm}

procedure TFrmPesquisa.BtnCancelarClick(Sender: TObject);
begin
  cancelou := True;
  close;
end;

procedure TFrmPesquisa.BtnSalvarClick(Sender: TObject);
begin
  codigo := Tabela.FieldByName('codigo').AsInteger;
  nome   := Tabela.FieldByName('nome').AsString;
  if pesquisade = 1 then
  begin
    cpf := Tabela.FieldByName('cpf').AsString;
  end else
  begin
    un         := Tabela.FieldByName('un').AsString;
    ncm        := Tabela.FieldByName('ncm').AsString;
    cst_icms   := Tabela.FieldByName('cst_icms').AsString;
    cst_pis    := Tabela.FieldByName('cst_pis').AsString;
    cst_cofins := Tabela.FieldByName('cst_cofins').AsString;
    cst_ipi    := Tabela.FieldByName('cst_ipi').AsString;
    valor      := Tabela.FieldByName('valor').Ascurrency;
  end;
  cancelou := False;
  close;
end;

procedure TFrmPesquisa.DBGrid1DblClick(Sender: TObject);
begin
  BtnSalvar.Click;
end;

procedure TFrmPesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPesquisa.FormCreate(Sender: TObject);
begin
  cancelou := True;
end;

procedure TFrmPesquisa.FormDestroy(Sender: TObject);
begin
  FrmPesquisa := nil;
end;

procedure TFrmPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //se for pressionado ESC
  if (key = vk_escape ) then
  begin
    //fecha o Form
    close;
  end
end;

procedure TFrmPesquisa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
  begin
    Key := #0;
    SelectNext(activeControl,true,true);
  end;
end;

procedure TFrmPesquisa.FormShow(Sender: TObject);
begin
  if pesquisade = 1 then  //Pesquisa Clientes
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
  end else
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
  end;
    Tabela.Active;
end;

procedure TFrmPesquisa.SpeedButton1Click(Sender: TObject);
begin
  Tabela.Filtered := False;
  if Trim(txtpesquisa.Text) = '' then
  begin
    txtPesquisa.SetFocus;
    Exit;
  end;
  if pesquisade = 1 then  //Pesquisa Clientes
  begin
    //Pesquisa Por Nome  de Cliente
    if (txtPesquisa.Text <> '') then
    begin
      Tabela.Filter := 'Nome=' +QuotedStr(txtPesquisa.text + '*');
      Tabela.Filtered := True;
      Tabela.locate('Nome',txtPesquisa.text,[loCaseInsensitive, loPartialKey]);
    end;
  end else
  begin
     //Pesquisa Por Nome de Produto
    if (txtPesquisa.Text <> '') then
    begin
      Tabela.Filter := 'Nome=' +QuotedStr(txtPesquisa.text + '*');
      Tabela.Filtered := True;
      Tabela.locate('Nome',txtPesquisa.text,[loCaseInsensitive, loPartialKey]);
    end;
  end;
end;

end.
