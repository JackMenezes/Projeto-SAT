unit uFrmCalendario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Samples.Calendar;

type
  TFrmCalendario = class(TForm)
    Calendar1: TCalendar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalendario: TFrmCalendario;

implementation

{$R *.dfm}

procedure TFrmCalendario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCalendario.FormDestroy(Sender: TObject);
begin
  FrmCalendario := nil;
end;

procedure TFrmCalendario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //se for pressionado ESC
  if (key = vk_escape ) then
  begin
    //fecha o Form
    close;
  end
end;

procedure TFrmCalendario.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
  begin
    Key := #0;
    SelectNext(activeControl,true,true);
  end;
end;

end.
