unit uFrmNovidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel, ToolWin,
  ComCtrls, OleCtrls, SHDocVw, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxCheckBox, cxDBEdit, ExtCtrls;

type
  TFrmNovidades = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNovidades: TFrmNovidades;

implementation

uses  uFrmMenu;

{$R *.dfm}

procedure TFrmNovidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmNovidades.FormDestroy(Sender: TObject);
begin
  FrmNovidades := nil;
end;

procedure TFrmNovidades.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //se for pressionado ESC
  if (key = vk_escape ) then
  begin
    //fecha o Form
    close;
  end;
end;

procedure TFrmNovidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    Key := #0;
    SelectNext(activeControl,true,true);
  end;
end;

end.
