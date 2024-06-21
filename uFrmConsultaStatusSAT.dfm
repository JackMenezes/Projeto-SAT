object FrmConsultaStatusSAT: TFrmConsultaStatusSAT
  Left = 0
  Top = 0
  Caption = 'Status Operacional do SAT'
  ClientHeight = 325
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 453
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Status Operacional do SAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 277
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 455
    Height = 284
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 168
    object mLog: TMemo
      Left = 1
      Top = 1
      Width = 453
      Height = 282
      Align = alClient
      Lines.Strings = (
        '')
      TabOrder = 0
      ExplicitHeight = 166
    end
  end
end
