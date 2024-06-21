object FrmConfigSAT: TFrmConfigSAT
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Dados do Emitente'
  ClientHeight = 419
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Paginas: TPageControl
    Left = 0
    Top = 41
    Width = 725
    Height = 330
    ActivePage = TBPesquisa
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TBPesquisa: TTabSheet
      Caption = 'Configura'#231#245'es Gerais do SAT'
      object GPProdutos: TGroupBox
        Left = 0
        Top = 0
        Width = 717
        Height = 147
        Align = alTop
        Caption = 'Configura'#231#245'es do SAT'
        TabOrder = 0
        object Label3: TLabel
          Left = 24
          Top = 26
          Width = 71
          Height = 16
          Caption = 'Assinatura'
        end
        object Label2: TLabel
          Left = 400
          Top = 26
          Width = 125
          Height = 16
          Caption = 'C'#243'digo de Ativa'#231#227'o'
        end
        object Label4: TLabel
          Left = 24
          Top = 98
          Width = 150
          Height = 16
          Caption = 'Caminho da DLL do SAT'
        end
        object codigo_ativacao: TEdit
          Left = 400
          Top = 48
          Width = 137
          Height = 24
          MaxLength = 50
          TabOrder = 0
          OnKeyPress = codigo_ativacaoKeyPress
        end
        object assinaturaSW: TMemo
          Left = 24
          Top = 48
          Width = 370
          Height = 49
          Lines.Strings = (
            'assinaturaSW')
          TabOrder = 1
        end
        object caminho_sat: TEdit
          Left = 24
          Top = 117
          Width = 370
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 2
          OnKeyPress = codigo_ativacaoKeyPress
        end
        object Button1: TButton
          Left = 400
          Top = 112
          Width = 113
          Height = 29
          Caption = 'Procurar'
          ImageIndex = 23
          Images = FrmMenu.cxImageList1
          TabOrder = 3
          OnClick = Button1Click
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 147
        Width = 717
        Height = 136
        Align = alTop
        Caption = 'Configura'#231#245'es da impress'#227'o do SAT'
        TabOrder = 1
        object Label9: TLabel
          Left = 256
          Top = 15
          Width = 250
          Height = 16
          Caption = 'Selecione a Impressora de cupons SAT'
        end
        object impressoraSAT: TComboBox
          Left = 256
          Top = 37
          Width = 433
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 100
          TabOrder = 0
        end
        object mostraPreview: TCheckBox
          Left = 24
          Top = 34
          Width = 226
          Height = 17
          Caption = 'Mostrar Preview da impress'#227'o'
          TabOrder = 1
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 67
          Width = 681
          Height = 69
          Caption = 'Margem da Impress'#227'o'
          TabOrder = 2
          object Label5: TLabel
            Left = 16
            Top = 18
            Width = 43
            Height = 16
            Caption = 'Direita'
          end
          object Label6: TLabel
            Left = 143
            Top = 18
            Width = 60
            Height = 16
            Caption = 'Esquerda'
          end
          object Label8: TLabel
            Left = 391
            Top = 18
            Width = 31
            Height = 16
            Caption = 'Topo'
          end
          object Label7: TLabel
            Left = 266
            Top = 18
            Width = 38
            Height = 16
            Caption = 'Fundo'
          end
          object margem_direita: TSpinEdit
            Left = 16
            Top = 37
            Width = 121
            Height = 26
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 3
          end
          object margem_esquerda: TSpinEdit
            Left = 141
            Top = 37
            Width = 121
            Height = 26
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 3
          end
          object margem_fundo: TSpinEdit
            Left = 266
            Top = 37
            Width = 121
            Height = 26
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object margem_topo: TSpinEdit
            Left = 391
            Top = 37
            Width = 121
            Height = 26
            MaxValue = 0
            MinValue = 0
            TabOrder = 3
            Value = 0
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 723
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Configura'#231#245'es SAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 273
      ExplicitHeight = 35
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 371
    Width = 725
    Height = 48
    Align = alBottom
    TabOrder = 2
    object BtnSalvar: TButton
      Left = 598
      Top = 2
      Width = 113
      Height = 41
      Caption = 'SALVAR'
      ImageIndex = 14
      Images = FrmMenu.cxImageList1
      TabOrder = 0
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TButton
      Left = 479
      Top = 1
      Width = 113
      Height = 41
      Caption = 'CANCELAR'
      HotImageIndex = 19
      ImageIndex = 18
      Images = FrmMenu.cxImageList1
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
    object Button2: TButton
      Left = 9
      Top = 2
      Width = 140
      Height = 41
      Caption = 'BLOQUEAR SAT'
      HotImageIndex = 19
      ImageIndex = 18
      Images = FrmMenu.cxImageList1
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 155
      Top = 2
      Width = 150
      Height = 41
      Caption = 'DESBLOQUEAR SAT'
      ImageIndex = 14
      Images = FrmMenu.cxImageList1
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Tabela: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 492
    Top = 1
  end
  object DataSource1: TDataSource
    DataSet = Tabela
    Left = 524
    Top = 1
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 580
    Top = 132
  end
end
