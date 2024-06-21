unit uFrmSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, cxLabel, cxControls, cxContainer, cxEdit,
  cxProgressBar, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage,
  cxLookAndFeels, dxSkinsForm, ImgList, cxGraphics, DB,  cxLookAndFeelPainters, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, inifiles,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TFrmSplash = class(TForm)
    progresso: TcxProgressBar;
    cxImage1: TcxImage;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    estacao : string;
  public
    { Public declarations }
    NomeTabela, NomeColuna, CampoTabela : String;
      SQL : String ;
  end;

var
  FrmSplash: TFrmSplash;

implementation



{$R *.dfm}


procedure TFrmSplash.FormShow(Sender: TObject);
var
  i : Integer;
begin
  brush.Style := bsclear;
end;

end.
