object FrmCadastroNCM: TFrmCadastroNCM
  Left = 0
  Top = 0
  Caption = 'Importa'#231#227'o da Tabela IBPT'
  ClientHeight = 361
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 779
    Height = 43
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    Alignment = taCenter
    Caption = 'TABELA DE C'#211'DIGOS NCM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -36
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 480
  end
  object Paginas: TPageControl
    Left = 0
    Top = 43
    Width = 779
    Height = 318
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = TBCadastro
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 44
    ExplicitHeight = 317
    object TBCadastro: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Cadastrar'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 769
        Height = 61
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 556
          Top = 0
          Width = 105
          Height = 20
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'AGUARDE...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object BtnAtualizaNCM: TButton
          Left = 240
          Top = 5
          Width = 223
          Height = 51
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'IMPORTAR TABELA'
          ImageIndex = 14
          Images = FrmMenu.cxImageList1
          TabOrder = 0
          OnClick = BtnAtualizaNCMClick
        end
        object tipo: TRadioGroup
          Left = 15
          Top = 0
          Width = 221
          Height = 56
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'M'#233'dodo de Importa'#231#227'o'
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            'Arquivo'
            'Online')
          TabOrder = 1
        end
        object cxProgressBar1: TcxProgressBar
          Left = 470
          Top = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          ParentFont = False
          Properties.PeakValue = 50.000000000000000000
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -22
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 295
        end
      end
      object GPProdutos: TGroupBox
        Left = 0
        Top = 61
        Width = 769
        Height = 214
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        Caption = 'Dados da Tabela Atual'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 4
          Top = 29
          Width = 761
          Height = 181
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -16
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
        end
      end
    end
  end
  object Tabela: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 405
    Top = 1
  end
  object DataSource1: TDataSource
    DataSet = Tabela
    Left = 445
    Top = 1
  end
  object ACBrIBPTax1: TACBrIBPTax
    ProxyPort = '8080'
    URLDownload = 'http://www.digraca.com.br/atualizar/tabelancm.csv'
    Left = 496
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Title = 'Selecione a NFe'
    Left = 545
    Top = 1
  end
  object XMLDocument1: TXMLDocument
    Left = 240
    Top = 16
  end
end
