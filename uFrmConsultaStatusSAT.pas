unit uFrmConsultaStatusSAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmConsultaStatusSAT = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    mLog: TMemo;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaStatusSAT: TFrmConsultaStatusSAT;

implementation

{$R *.dfm}

uses uFrmMenu;

procedure TFrmConsultaStatusSAT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmConsultaStatusSAT.FormCreate(Sender: TObject);
begin
  FrmMenu.ACBrSAT1.ConsultarStatusOperacional;
  with FrmMenu.ACBrSAT1.Status do
  begin
    mLog.Lines.Add('NSERIE.........: '+NSERIE);
    mLog.Lines.Add('LAN_MAC........: '+LAN_MAC);
    mLog.Lines.Add('STATUS_LAN.....: '+StatusLanToStr(STATUS_LAN));
    mLog.Lines.Add('NIVEL_BATERIA..: '+NivelBateriaToStr(NIVEL_BATERIA));
    mLog.Lines.Add('MT_TOTAL.......: '+MT_TOTAL);
    mLog.Lines.Add('MT_USADA.......: '+MT_USADA);
    mLog.Lines.Add('DH_ATUAL.......: '+DateTimeToStr(DH_ATUAL));
    mLog.Lines.Add('VER_SB.........: '+VER_SB);
    mLog.Lines.Add('VER_LAYOUT.....: '+VER_LAYOUT);
    mLog.Lines.Add('ULTIMO_CFe.....: '+ULTIMO_CFe);
    mLog.Lines.Add('LISTA_INICIAL..: '+LISTA_INICIAL);
    mLog.Lines.Add('LISTA_FINAL....: '+LISTA_FINAL);
    mLog.Lines.Add('DH_CFe.........: '+DateTimeToStr(DH_CFe));
    mLog.Lines.Add('DH_ULTIMA......: '+DateTimeToStr(DH_CFe));
    mLog.Lines.Add('CERT_EMISSAO...: '+DateToStr(CERT_EMISSAO));
    mLog.Lines.Add('CERT_VENCIMENTO: '+DateToStr(CERT_VENCIMENTO));
    mLog.Lines.Add('ESTADO_OPERACAO: '+EstadoOperacaoToStr(ESTADO_OPERACAO));
  end;
end;

procedure TFrmConsultaStatusSAT.FormDestroy(Sender: TObject);
begin
  FrmConsultaStatusSAT := nil;
end;

procedure TFrmConsultaStatusSAT.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key = vk_escape ) then begin
    //fecha o Form
  end;
end;

end.
