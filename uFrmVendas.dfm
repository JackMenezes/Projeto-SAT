object FrmVendas: TFrmVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Emiss'#227'o de SAT'
  ClientHeight = 631
  ClientWidth = 1115
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1115
    Height = 631
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Emitir SAT'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1105
        Height = 169
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 3
          Width = 86
          Height = 29
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 209
          Top = 3
          Width = 84
          Height = 29
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 74
          Width = 71
          Height = 29
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 719
          Top = 74
          Width = 102
          Height = 29
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'CPF/CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object emissao: TcxDateEdit
          Left = 8
          Top = 31
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -30
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 193
        end
        object numero: TEdit
          Left = 209
          Top = 31
          Width = 132
          Height = 36
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
        end
        object nome_cliente: TEdit
          Left = 174
          Top = 104
          Width = 542
          Height = 36
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = 'CONSUMIDOR'
        end
        object Button1: TButton
          Left = 111
          Top = 105
          Width = 52
          Height = 44
          Hint = 'Pesquisar Cliente'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          ImageIndex = 23
          Images = FrmMenu.cxImageList1
          TabOrder = 4
          OnClick = Button1Click
        end
        object codigo_cliente: TEdit
          Left = 8
          Top = 104
          Width = 102
          Height = 36
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 3
          OnExit = codigo_clienteExit
        end
        object cpf: TMaskEdit
          Left = 721
          Top = 104
          Width = 342
          Height = 36
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 14
          ParentFont = False
          TabOrder = 6
          Text = ''
          OnChange = cpfChange
          OnExit = cpfExit
          OnKeyPress = cpfKeyPress
        end
        object tipo_venda: TRadioGroup
          Left = 349
          Top = 4
          Width = 231
          Height = 74
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Venda '#224
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Vista'
            'Prazo')
          ParentFont = False
          TabOrder = 2
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 533
        Width = 1105
        Height = 63
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          1107
          63)
        object BtnSalvar: TButton
          Left = 927
          Top = 8
          Width = 171
          Height = 51
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akRight, akBottom]
          Caption = 'Finalizar Venda'
          ImageIndex = 14
          Images = FrmMenu.cxImageList1
          TabOrder = 0
          OnClick = BtnSalvarClick
          ExplicitLeft = 925
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 169
        Width = 1107
        Height = 367
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 2
        ExplicitWidth = 1105
        ExplicitHeight = 364
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 873
          Height = 362
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Caption = 'Produtos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Panel4: TPanel
            Left = 3
            Top = 21
            Width = 867
            Height = 60
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            TabOrder = 0
            object Label4: TLabel
              Left = 496
              Top = -4
              Width = 62
              Height = 19
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'SubTotal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object debitotroco: TLabel
              Left = 680
              Top = -4
              Width = 46
              Height = 19
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'D'#233'bito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object BtnIncluir: TButton
              Left = 10
              Top = -1
              Width = 141
              Height = 51
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'INCLUIR'
              ImageIndex = 15
              Images = FrmMenu.cxImageList1
              TabOrder = 0
              OnClick = BtnIncluirClick
            end
            object BtnExcluir: TButton
              Left = 156
              Top = 0
              Width = 142
              Height = 51
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'EXCLUIR'
              HotImageIndex = 19
              ImageIndex = 16
              Images = FrmMenu.cxImageList1
              TabOrder = 1
              OnClick = BtnExcluirClick
            end
            object subtotal: TcxDBCurrencyEdit
              Left = 495
              Top = 16
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataBinding.DataField = 'totalGeral'
              DataBinding.DataSource = DataSource1
              Enabled = False
              ParentFont = False
              Properties.DisplayFormat = '0.00;-0.00'
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clNavy
              Style.Font.Height = -30
              Style.Font.Name = 'Times New Roman'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 178
            end
            object debito: TcxCurrencyEdit
              Left = 680
              Top = 13
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              EditValue = '0'
              Enabled = False
              ParentFont = False
              Properties.DisplayFormat = '0.00;-0.00'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -30
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 183
            end
          end
          object GridTmpVendas2: TcxGrid
            Left = 4
            Top = 95
            Width = 861
            Height = 260
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alCustom
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 1
            object GridTmpVendas2DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Hint = 'Primeiro Registro'
              Navigator.Buttons.PriorPage.Hint = 'P'#225'gina Anterior'
              Navigator.Buttons.Prior.Hint = 'Registro Anterior'
              Navigator.Buttons.Next.Hint = 'Pr'#243'ximo Registro'
              Navigator.Buttons.NextPage.Hint = 'Pr'#243'xima P'#225'gina'
              Navigator.Buttons.Last.Hint = #218'ltimo Registro'
              Navigator.Buttons.Insert.Hint = 'Incluir Novo Registro'
              Navigator.Buttons.Delete.Hint = 'Excluir Registro Atual'
              Navigator.Buttons.Edit.Hint = 'Alterar Registro Atual'
              Navigator.Buttons.Post.Hint = 'Salvar Inclus'#227'o Ou Altera'#231#227'o Do Registro Atual'
              Navigator.Buttons.Cancel.Hint = 'Abandonar Inclus'#227'o Ou Altera'#231#227'o Do Registro Atual'
              Navigator.Buttons.Refresh.Visible = False
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Hint = 'Filtrar Informa'#231#245'es'
              Navigator.Buttons.Filter.Visible = True
              DataController.DataSource = DataSource1
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.ImmediateEditor = False
              OptionsBehavior.NavigatorHints = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnSorting = False
              OptionsData.Deleting = False
              OptionsSelection.InvertSelect = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object GridTmpVendas2_codigo_produto: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'codigo_produto'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.ClickKey = 117
                Properties.MaxLength = 0
                Properties.OnButtonClick = GridTmpVendas2_codigo_produtoPropertiesButtonClick
                Properties.OnEditValueChanged = GridTmpVendas2_codigo_produtoPropertiesEditValueChanged
                Width = 56
              end
              object GridTmpVendas2_nome_produto: TcxGridDBColumn
                Caption = 'Descri'#231#227'o do Produto'
                DataBinding.FieldName = 'nome_produto'
                PropertiesClassName = 'TcxTextEditProperties'
                Options.Editing = False
                Width = 195
              end
              object GridTmpVendas2_un: TcxGridDBColumn
                Caption = 'UN'
                DataBinding.FieldName = 'un'
                Options.Editing = False
                Width = 32
              end
              object GridTmpVendas2_valor_un: TcxGridDBColumn
                Caption = 'Valor UN'
                DataBinding.FieldName = 'valor_un'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                Properties.Nullable = False
                Width = 66
              end
              object GridTmpVendas2_qtd: TcxGridDBColumn
                Caption = 'QTD'
                DataBinding.FieldName = 'qtd'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.ClickKey = 87
                Properties.OnEditValueChanged = GridTmpVendas2_qtdPropertiesEditValueChanged
                Width = 47
              end
              object GridTmpVendas2_valor_total: TcxGridDBColumn
                Caption = 'Valor Total'
                DataBinding.FieldName = 'valor_total'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                Properties.Nullable = False
                Width = 78
              end
              object GridTmpVendas2_CFOP: TcxGridDBColumn
                Caption = 'CFOP'
                DataBinding.FieldName = 'cfop'
                Options.Editing = False
                Width = 55
              end
              object GridTmpVendas2_NCM: TcxGridDBColumn
                Caption = 'NCM'
                DataBinding.FieldName = 'ncm'
              end
            end
            object GridTmpVendas2Level1: TcxGridLevel
              GridView = GridTmpVendas2DBTableView1
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 874
          Top = 1
          Width = 230
          Height = 362
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          Caption = 'Valores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label5: TLabel
            Left = 19
            Top = 61
            Width = 65
            Height = 19
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 10
            Top = 99
            Width = 72
            Height = 19
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Acr'#233'scimo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 48
            Top = 25
            Width = 35
            Height = 19
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox3: TGroupBox
            Left = -3
            Top = 125
            Width = 316
            Height = 260
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Formas de Pagamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label8: TLabel
              Left = 29
              Top = 36
              Width = 60
              Height = 19
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Dinheiro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 34
              Top = 75
              Width = 53
              Height = 19
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Cheque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 40
              Top = 114
              Width = 46
              Height = 19
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Cart'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 40
              Top = 153
              Width = 48
              Height = 19
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Outros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object dinheiro: TcxCurrencyEdit
              Left = 93
              Top = 26
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              EditValue = '0'
              ParentFont = False
              Properties.DisplayFormat = '0.00;-0.00'
              Properties.OnEditValueChanged = descontoPropertiesEditValueChanged
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -17
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 122
            end
            object cheque: TcxCurrencyEdit
              Left = 93
              Top = 65
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              EditValue = '0'
              ParentFont = False
              Properties.DisplayFormat = '0.00;-0.00'
              Properties.OnEditValueChanged = descontoPropertiesEditValueChanged
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -17
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 122
            end
            object cartao: TcxCurrencyEdit
              Left = 93
              Top = 104
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              EditValue = '0'
              ParentFont = False
              Properties.DisplayFormat = '0.00;-0.00'
              Properties.OnEditValueChanged = descontoPropertiesEditValueChanged
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -17
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 122
            end
            object outros: TcxCurrencyEdit
              Left = 93
              Top = 143
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              EditValue = '0'
              ParentFont = False
              Properties.DisplayFormat = '0.00;-0.00'
              Properties.OnEditValueChanged = descontoPropertiesEditValueChanged
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -17
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              OnExit = outrosExit
              Width = 122
            end
            object tipo_cartao: TcxRadioGroup
              Left = 29
              Top = 175
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Tipo Cart'#227'o'
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Cr'#233'dito'
                end
                item
                  Caption = 'D'#233'bito'
                end>
              ItemIndex = 1
              TabOrder = 4
              Transparent = True
              Visible = False
              Height = 53
              Width = 191
            end
          end
          object desconto: TcxCurrencyEdit
            Left = 89
            Top = 51
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            EditValue = '0'
            ParentFont = False
            Properties.DisplayFormat = '0.00;-0.00'
            Properties.OnEditValueChanged = descontoPropertiesEditValueChanged
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -17
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 122
          end
          object acrescimo: TcxCurrencyEdit
            Left = 89
            Top = 89
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            EditValue = '0'
            ParentFont = False
            Properties.DisplayFormat = '0.00;-0.00'
            Properties.OnEditValueChanged = descontoPropertiesEditValueChanged
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -17
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 122
          end
          object total: TcxCurrencyEdit
            Left = 89
            Top = 15
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            EditValue = '0'
            Enabled = False
            ParentFont = False
            Properties.DisplayFormat = '0.00;-0.00'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -17
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 122
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'SATS Emitidos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1105
        Height = 596
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Hint = 'Primeiro Registro'
          Navigator.Buttons.PriorPage.Hint = 'P'#225'gina Anterior'
          Navigator.Buttons.Prior.Hint = 'Registro Anterior'
          Navigator.Buttons.Next.Hint = 'Pr'#243'ximo Registro'
          Navigator.Buttons.NextPage.Hint = 'Pr'#243'xima P'#225'gina'
          Navigator.Buttons.Last.Hint = #218'ltimo Registro'
          Navigator.Buttons.Insert.Hint = 'Incluir Novo Registro'
          Navigator.Buttons.Delete.Hint = 'Excluir Registro Atual'
          Navigator.Buttons.Edit.Hint = 'Alterar Registro Atual'
          Navigator.Buttons.Post.Hint = 'Salvar Inclus'#227'o Ou Altera'#231#227'o Do Registro Atual'
          Navigator.Buttons.Cancel.Hint = 'Abandonar Inclus'#227'o Ou Altera'#231#227'o Do Registro Atual'
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Hint = 'Filtrar Informa'#231#245'es'
          Navigator.Buttons.Filter.Visible = True
          OnCustomDrawCell = cxGridDBTableView1CustomDrawCell
          DataController.DataSource = DataSource2
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Deleting = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBTableView1numero: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'numero'
          end
          object cxGridDBTableView1NumeroCFe: TcxGridDBColumn
            Caption = 'N'#186' CFE'
            DataBinding.FieldName = 'numeroCfe'
          end
          object cxGridDBTableView1data: TcxGridDBColumn
            Caption = 'EMISS'#195'O'
            DataBinding.FieldName = 'emissao'
          end
          object cxGridDBTableView1codigo_cliente: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'codigo_cliente'
          end
          object cxGridDBTableView1nome_cliente: TcxGridDBColumn
            Caption = 'CLIENTE'
            DataBinding.FieldName = 'nome_cliente'
            Width = 299
          end
          object cxGridDBTableView1cpf_cliente: TcxGridDBColumn
            Caption = 'CPF'
            DataBinding.FieldName = 'cpf_cliente'
          end
          object cxGridDBTableView1Total: TcxGridDBColumn
            DataBinding.FieldName = 'total'
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'CANCELAR'
            DataBinding.FieldName = 'cancelado'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000010101011111
                  133C16161E730F0F207411112874111131741212377413133B7413133D741313
                  3C74121238741212337411112D7417162B7415151C4702020204000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000A0A0B4A2C2C
                  48DB3F3F98FD2D2D9FFD2F2FADFD2F2FB9FD3030C1FD3131C7FD3131C8FD3131
                  C7FD3030C1FD2F2FB9FD2E2EAEFD3C3CA9FD333363E60B0B0F5D020202030000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000009090C4A18183DDE2D2D
                  AFFF2121D3FF1E1ED2FF1E1ED2FF1E1ED2FF1E1ED2FF1F1FD2FF1F1FD2FF1F1F
                  D1FF1F1FD1FF1E1ED1FF1E1ED1FF2020D2FF2D2DBFFF1B1B4DE90B0B115E0101
                  0102000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000009090F4B181846DE2B2BB0FF1818
                  C6FF1212BEFF1212BEFF1212BEFF1212BEFF1212BEFF1212BEFF1212BEFF1212
                  BEFF1212BEFF1212BEFF1212BEFF1212BEFF1616C8FF2929BFFF1A1A57E90A0A
                  145E020201030000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000808104B17174CDE2929B0FF1818C5FF1313
                  BFFF1313BFFF1313BFFF1313BFFF1313BFFF1313BFFF1313BFFF1313BFFF1313
                  BFFF1313BFFF1313BFFF1313BFFF1313BFFF1313BFFF1616C6FF2727BBFF1919
                  5DE90909165E0101010300000000000000000000000000000000000000000000
                  0000000000000000000007070F4A15154DDE2828AFFF1818C4FF1313BFFF1313
                  BFFF1010BEFF1212BFFF1313BFFF1313BFFF1313BFFF1313BFFF1313BFFF1313
                  BFFF1313BFFF1313BFFF1212BFFF1010BFFF1313C0FF1313C0FF1515C4FF2525
                  B6FF18185FE90808165E01010102000000000000000000000000000000000000
                  00000000000006060D4B14144BDE2626ABFF1717C2FF1313BFFF1212BFFF1616
                  C0FF4242CDFF2929C6FF1111BFFF1313BFFF1313C0FF1313C0FF1313C0FF1313
                  C0FF1313C0FF1111C0FF2323C6FF4545D0FF1A1AC3FF1212C1FF1313C1FF1515
                  C3FF2323AFFF16165BE90707145E010101030000000000000000000000000000
                  000004040A4B111144DE2524A5FF1717C1FF1313BFFF1212BFFF1414C0FF6D6D
                  D6FFD0D0DFFFABABDFFF2F2FC9FF1010C0FF1313C1FF1313C1FF1313C1FF1313
                  C1FF1111C1FF2525C7FF9D9DDFFFD3D3DFFF8080DBFF1919C4FF1212C2FF1313
                  C3FF1414C1FF2121A7FF151554E90606105E0101010300000000000000000303
                  074A101039DE22229FFF1616C1FF1313C0FF1313C0FF1414C1FF6B6BD6FFC7C7
                  D3FFB5B4B4FFC3C3C2FFABABDFFF2E2EC9FF1010C1FF1313C2FF1313C2FF1111
                  C2FF2525C8FF9E9EE0FFC6C6C7FFB3B3B3FFC9C8CFFF8080DBFF1919C5FF1212
                  C4FF1313C5FF1414C1FF1F1F9FFF121249E904040C5D00000003060607312828
                  41D724249BFF1515C1FF1313C1FF1313C1FF1414C2FF6969D6FFCACAD6FFBCBB
                  BBFFB8B8B9FFB8B8B9FFC9C9C8FFADADE0FF2E2ECAFF1111C2FF1111C3FF2525
                  C8FF9F9FE0FFCCCCCDFFB8B8B9FFB8B8B9FFBABABAFFCDCDD3FF8080DBFF1919
                  C6FF1313C5FF1314C6FF1414C0FF1D1D9AFF29294EE50A0A0D48050507562525
                  68F61A1BC2FF1212C2FF1313C2FF1313C2FF1919C1FF8B8BC0FFC4C4C2FFC0C0
                  C1FFC0C0C1FFC0C0C1FFBFBFC0FFCFCFCEFFAEAEE2FF2D2DCAFF2323C8FFA0A0
                  E0FFD2D1D2FFC0C0C0FFC0C0C1FFC0C0C1FFC0C0C1FFC3C3C2FF9C9CC3FF2222
                  C4FF1313C7FF1414C7FF1414C7FF1616C4FF24247CFC08080F74030308571111
                  68F61515C3FF1313C3FF1313C3FF1313C4FF1212C1FF23239EFF8989AAFFC8C8
                  C8FFC8C7C8FFC7C7C8FFC7C7C8FFC7C7C7FFD5D4D4FFB3B3E4FFA9A9E3FFD6D6
                  D7FFC7C7C8FFC7C7C8FFC7C7C8FFC8C7C8FFC9C9C9FF9797B0FF2B2B9DFF1313
                  C3FF1414C8FF1414C8FF1414C8FF1616CAFF151582FD0404117403030C571212
                  70F61616C3FF1313C4FF1313C4FF1313C4FF1413C5FF1212C0FF24249EFF8E8E
                  B0FFD0CFD0FFCFCFD0FFCFCFD0FFCFCFD0FFCFCECFFFDADAD9FFDCDCDCFFCFCF
                  CFFFCFCFD0FFCFCFD0FFCFCFD0FFD1D1D0FF9D9CB6FF2C2C9DFF1212C1FF1414
                  C9FF1414C9FF1414C9FF1414C9FF1616CAFF171788FD0404177403030F571312
                  76F61616C4FF1314C5FF1414C5FF1314C5FF1414C6FF1414C7FF1212C2FF2424
                  A0FF9393B5FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD6D6D7FFD6D6D7FFD7D7
                  D7FFD7D7D7FFD7D7D7FFD9D8D8FFA2A2BCFF2D2D9EFF1212C1FF1414CAFF1414
                  CAFF1414CAFF1414CAFF1414CAFF1717CAFF18188CFD05051B74030311571313
                  7AF61717C4FF1414C6FF1414C7FF1414C7FF1414C7FF1414C7FF1414C8FF1212
                  C3FF2525A2FF9797BBFFDDDDDEFFDEDEDFFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
                  DEFFDEDEDFFFDEDEDEFFA7A6C1FF2E2EA0FF1111C2FF1414CBFF1414CBFF1414
                  CBFF1414CBFF1414CBFF1414CCFF1717CAFF19198DFD05051E74030312571414
                  7CF61717C5FF1414C8FF1414C8FF1414C8FF1414C8FF1414C8FF1414C9FF1414
                  C9FF1010C4FF3232A9FFB9B9CFFFE7E7E7FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
                  E6FFE7E7E7FFC8C8D7FF4040AAFF1010C2FF1414CCFF1414CCFF1414CCFF1414
                  CCFF1414CCFF1414CCFF1414CDFF1717CBFF191992FD05052074030313571616
                  7DF61818C5FF1414C9FF1414C9FF1414C9FF1414C9FF1414C9FF1414CAFF1212
                  C9FF2626CDFFA2A2E5FFE6E6EBFFEDEDEEFFEDEDEEFFEDEDEEFFEDEDEEFFEDED
                  EEFFEEEEEEFFE9E9ECFFAEAEE8FF2D2DD2FF1212CCFF1414CDFF1414CDFF1414
                  CDFF1414CDFF1414CDFF1414CEFF1717CDFF191995FD05052174040413571818
                  7FF61919C7FF1414CAFF1414CAFF1414CAFF1414CAFF1414CBFF1212CAFF2525
                  CEFFA7A7E9FFF9F9F8FFF6F6F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
                  F5FFF5F5F5FFF6F6F5FFF9F9F8FFB6B5EEFF2D2DD3FF1212CDFF1414CEFF1414
                  CEFF1414CEFF1414CFFF1414CFFF1717CEFF191996FD05052274040413571919
                  80F61919C8FF1414CBFF1414CBFF1414CBFF1414CBFF1212CBFF2525CFFFA8A8
                  EAFFFDFDFDFFFDFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFEFEFDFFFEFEFDFFFDFC
                  FCFFFCFCFCFFFCFCFCFFFCFCFCFFFEFEFEFFB8B8F0FF2F2ED4FF1212CFFF1514
                  CFFF1515CFFF1415D0FF1414D0FF1717CFFF1A1998FD05052274040412571B1B
                  7FF61A1ACAFF1414CCFF1414CCFF1414CDFF1313CDFF2626D0FFA8A8EBFFFDFD
                  FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3DCFFB7B7D6FFFDFD
                  FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABAF1FF3030D6FF1313
                  D0FF1515D1FF1515D1FF1515D1FF1818D1FF1A1A98FD06062074040410571C1C
                  7CF61B1BCCFF1414CDFF1414CDFF1314CEFF1A1ACDFF9F9FE7FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFDAFF3333ACFF2B2BACFFAFAF
                  D2FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5EEFF2323
                  D2FF1414D2FF1515D2FF1515D2FF1919D2FF1C1C94FD05051D74080810553736
                  86F62323D0FF1313CEFF1414CEFF1414CFFF1918C6FF7A7ABDFFF2F2F6FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFDAFF3434ACFF1213CAFF1515CEFF2E2E
                  AFFFAFAFD1FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FBFF9292C7FF1D1D
                  C6FF1414D4FF1515D3FF1414D3FF1F1FD5FF323297FC0A0A1C73060608292828
                  53CC3332B3FF1F1FD2FF1414D0FF1514D0FF1514D0FF1A1AB4FF7A7AB7FFF2F2
                  F6FFFFFFFFFFFFFFFFFFBFBFD9FF3434ABFF1313CBFF1515D3FF1515D2FF1515
                  CFFF2E2EAFFFAEAED0FFFEFEFEFFFFFFFFFFF9F9FBFF9191C3FF1E1EB3FF1414
                  D2FF1515D4FF1414D4FF1C1CD6FF3131C1FF2D2D68DC09090F3D000000000303
                  0B3A16165ED33939C2FF2222D5FF1414D1FF1515D1FF1515D1FF1A1AB5FF7979
                  B7FFF0F0F4FFBFBFD8FF3434AAFF1313CBFF1515D4FF1515D3FF1515D3FF1515
                  D4FF1515D0FF2F2FAFFFAEAECFFFF5F5F7FF9191C2FF1E1EB2FF1414D3FF1515
                  D4FF1414D4FF1E1ED7FF3838CBFF191972E00404144C00000000000000000000
                  00000606133B222275D34646CBFF2626D7FF1414D2FF1515D3FF1515D3FF1C1C
                  B7FF4D4D9FFF3030A7FF1414CCFF1515D4FF1515D4FF1515D4FF1515D4FF1515
                  D4FF1515D5FF1616D1FF2E2EADFF5050A0FF1F1FB2FF1414D3FF1515D4FF1414
                  D4FF2121D8FF4444D3FF272786E007071C4C0000000000000000000000000000
                  0000000000000A0A173B303082D35353D4FF2929D9FF1414D3FF1515D4FF1515
                  D4FF1616C8FF1515CFFF1515D5FF1515D4FF1515D4FF1515D4FF1515D4FF1515
                  D4FF1515D4FF1515D4FF1616D1FF1515C7FF1515D3FF1515D4FF1414D4FF2424
                  D9FF5050D9FF353593E00D0D214C000000000000000000000000000000000000
                  000000000000000000000E0E1B3B3C3C8DD35E5EDBFF2D2DDBFF1414D4FF1515
                  D4FF1515D5FF1515D4FF1515D4FF1515D4FF1515D4FF1515D4FF1515D4FF1515
                  D4FF1515D4FF1515D4FF1515D4FF1515D5FF1515D4FF1414D4FF2929DAFF5C5C
                  DFFF41419EE01111264C00000000000000000000000000000000000000000000
                  000000000000000000000000000011111E3B464696D36A6AE0FF3333DCFF1414
                  D4FF1515D4FF1515D4FF1515D4FF1515D4FF1515D4FF1515D4FF1515D4FF1515
                  D4FF1515D4FF1515D4FF1515D4FF1515D4FF1414D4FF2D2DDBFF6868E4FF4C4C
                  A7E015152A4C0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000001414213B4F4F9ED37575E5FF3737
                  DDFF1313D4FF1213D3FF1213D3FF1213D3FF1213D3FF1213D3FF1213D3FF1212
                  D3FF1212D3FF1212D3FF1212D3FF1212D3FF3232DCFF7373E8FF5555AFE01818
                  2D4C000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000001616233B5757A5D38483
                  E9FF6563E6FF5855E4FF5955E4FF5954E4FF5854E4FF5753E3FF5653E3FF5552
                  E3FF5452E3FF5251E3FF5150E3FF5C5CE5FF8282ECFF5D5DB5E01B1B304C0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000001717253A6A6A
                  A8CD9291E1F78986E2F68C8AE5F68F8CE7F6918EE8F6918FE8F6918FE8F6908E
                  E8F68E8CE7F68B8AE5F68787E2F69292E2F77171B5D91E1E334C000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000001414
                  1B2A26263E5627274157292943572A2A44572A2B45572B2B45572B2B45572B2B
                  45572A2A4457292943572727415727273F571818223301010102000000000000
                  0000000000000000000000000000000000000000000000000000}
                Kind = bkGlyph
              end>
            Properties.ViewStyle = vsButtonsOnly
            Properties.OnButtonClick = cxGridDBTableView1Column1PropertiesButtonClick
            Options.ShowEditButtons = isebAlways
            Width = 62
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'Reimprimir'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000F0D0D0D511010
                  105E1010105E1010105E1010105E1010105E1010105E1010105E1010105E1010
                  105E1010105E1010105E1010105E1010105E1010105E0E0E0E53000000100000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000001010127C4C4C4E9EFEF
                  F0FCEDEDEEFCEDEDEDFCEDEDEDFCEDEDEEFCEDEDEEFCEDEDEEFCEDEDEEFCEDED
                  EEFCEDEDEDFCEDEDEEFCEDEDEEFCEDEDEDFCEFEFF0FCCCCCCCED0303032B0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000001A929292D0FFFF
                  FFFFF7F7F8FFF7F7F8FFF6F6F7FFF7F7F8FFF7F7F8FFF7F7F8FFF7F7F8FFF7F7
                  F8FFF7F7F8FFF7F7F8FFF7F7F8FFF7F7F8FFFFFFFFFF9B9B9BD50000001D0000
                  0000000000000000000000000000000000010000000000000000000000000000
                  00010000000500000007000000040000000200000000000000033E3E3E92FFFF
                  FFFFF4F4F5FFF5F5F6FFF5F5F6FFF5F5F6FFF4F4F5FFF4F4F5FFF5F5F6FFF5F5
                  F6FFF5F5F6FFF5F5F5FFF4F4F5FFF4F4F6FFFFFFFFFF45454598000000040000
                  0000000000030000000200000003000000030000000000000000000000000000
                  00050000000F0909095F1A1A1AB01D1D1CB9181818B80B0B0BB6393938D8EEEE
                  EEFFF9F9FAFFF4F4F5FFF4F4F5FFF4F4F5FFF4F4F5FFF3F3F4FFF4F4F5FFF4F4
                  F5FFF4F4F5FFF4F4F6FFF4F4F5FFF8F8FAFFF0F0F0FF393939D80B0B0BB61818
                  18B81D1D1CB91B1B1BAE08080856000000040000000000000000000000000000
                  00010404043B3B3938EE423F3DFF45433FFF33312FFF151514FF242322FFD3D4
                  D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D5D6FF252424FF151414FF3331
                  2FFF45433FFF423F3DFF3A3938EC030303310000000000000000000000000000
                  000006060656454342FF46423FFF484542FF343330FF1B1B1AFF211F1EFF5251
                  50FF676665FF686666FF686666FF686666FF686666FF686666FF686666FF6866
                  66FF686666FF686666FF686666FF676665FF525150FF201F1EFF1B1B1AFF3433
                  30FF484542FF46423FFF454342FF060606540000000000000000000000000000
                  0000050505544A4746FF4D4A47FF4E4A48FF474341FF292826FF22211FFF1716
                  15FF131210FF131210FF131210FF131210FF131210FF131210FF131210FF1312
                  10FF131210FF131210FF131210FF131210FF171615FF22211FFF292826FF4743
                  41FF4E4A48FF4D4A47FF4A4746FF050505540000000000000000000000000000
                  00000E0E0E534D4B48FF56534FFF54514EFF56524FFF4F4C49FF43413FFF4240
                  3EFF42403EFF42403EFF42403EFF42403EFF42403EFF42403EFF42403EFF4240
                  3EFF42403EFF42403EFF42403EFF42403EFF42403EFF43413FFF4F4C49FF5652
                  4FFF54514EFF56534FFF4D4B48FF0E0E0E530000000000000000000000000000
                  000013131353514F4DFF5F5B59FF5E5755FF5D5856FF5E5B58FF605C5AFF605D
                  5AFF605D5AFF605D5AFF605D5AFF605D5AFF605D5AFF605D5AFF605D5AFF605D
                  5AFF605D5AFF605D5AFF605D5AFF605D5AFF605D5AFF605C5AFF5E5B58FF5D59
                  57FF5D5A57FF5F5C59FF514F4DFF131313530000000000000000000000000000
                  000012121253585553FF6A6865FF5F7D70FF656D68FF666260FF676461FF6B67
                  64FF6C6865FF6C6865FF6C6865FF6C6865FF6C6865FF6C6865FF6C6865FF6C68
                  65FF6C6865FF6C6865FF6C6865FF6C6865FF6B6764FF676461FF666360FF6663
                  60FF666360FF696663FF585654FF121212530000000000000000000000000000
                  0000111212535E5A58FF777371FF44BC90FF688679FF726B69FF6E6B68FF5A58
                  55FF53514FFF545250FF545250FF545250FF545250FF545250FF545250FF5452
                  50FF545250FF545250FF545250FF53514FFF5A5855FF6E6B68FF716E6BFF706D
                  6AFF706D6AFF73706DFF5E5C5AFF111212530000000000000000000000000000
                  000011111153666362FF7F7C7AFF7F7A79FF7D7A78FF7B7775FF4D4C4AFF3030
                  30FF2F3030FF303030FF303030FF303030FF303030FF303030FF303030FF3030
                  30FF303030FF303030FF303030FF2F3030FF303030FF4D4C4BFF7B7876FF7C78
                  76FF7B7775FF7F7B79FF666362FF111111530000000000000000000000000000
                  000012121258615F5EFF787573FF746F6EFF74716FFF706D6BFF363535FF4444
                  44FF474747FF474747FF474747FF474747FF474747FF464646FF464646FF4646
                  46FF474747FF474747FF474747FF474747FF444444FF373636FF706E6CFF7472
                  70FF74716FFF787573FF615E5DFF121212580000000000000000000000000000
                  000009090928333333D7535352FF5F5E5DFF5F5E5DFF60605EFF4C4C4BFF3F3F
                  3FFF515151FF525252FF535353FF545454FF555555FF565656FF565656FF5656
                  56FF555555FF545454FF535353FF515151FF40403FFF4C4C4BFF605F5EFF5F5E
                  5DFF5F5E5DFF535352FF333333D7090909280000000000000000000000000000
                  0000000000000606061D2A2A2AB0525251FF575655FF585756FF5A5959FF3232
                  31FF363636FF414141FF464646FF4D4D4DFF525252FF565656FF575757FF5555
                  55FF505050FF4A4A4AFF444444FF383838FF323231FF5A5959FF585756FF5756
                  55FF525251FF2A2A2AB00606061D000000000000000000000000000000000000
                  00000000000000000000020202071010104D1212125311111153060606607777
                  77DEABABABFFA0A0A0FF9F9F9FFF9F9F9FFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E
                  9EFF9F9F9FFF9F9F9FFFA0A0A0FFABABABFF787878DF06060661101011531212
                  12531010104D0202020700000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000013ABAB
                  ABD6FFFFFFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
                  F3FFF3F3F3FFF3F3F3FFF3F3F3FFFFFFFFFFB0B0B0D801010117000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000006060636BFBF
                  BFE7F6F6F6FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
                  ECFFECECECFFECECECFFECECECFFF5F5F5FFC2C2C2E806060638000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000C0C0C4DD8D8
                  D8F5F8F8F8FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
                  F1FFF1F1F1FFF1F1F1FFF1F1F1FFF8F8F8FFD5D5D5F30B0B0B4B000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000001313135DEBEB
                  EBFDFBFBFBFFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
                  F6FFF6F6F6FFF6F6F6FFF6F6F6FFFBFBFBFFE6E6E6FB11111159000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000001A1A1A6AFAFA
                  FAFFFCFCFCFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
                  F9FFF9F9F9FFF9F9F9FFF9F9F9FFFDFDFDFFF8F8F8FF19191967000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000002929297FFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF25252579000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000001919195F8888
                  88C9888888CA888888CA888888CA888888CA888888CA888888CA888888CA8888
                  88CA888888CA888888CA888888CA888888CA878787C81313135A000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000030303291010
                  105C1010105E1010105E1010105E1010105E1010105E1010105E1010105E1010
                  105E1010105E1010105E1010105E1010105E1010105B02020227000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Kind = bkGlyph
              end>
            Properties.ViewStyle = vsButtonsOnly
            Properties.OnButtonClick = cxGridDBTableView1Column2PropertiesButtonClick
            Options.ShowEditButtons = isebAlways
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object vendas1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 364
    Top = 233
    object vendas1numero: TIntegerField
      FieldName = 'numero'
    end
    object vendas1emissao: TDateField
      FieldName = 'emissao'
    end
    object vendas1tipovenda: TIntegerField
      FieldName = 'tipovenda'
    end
    object vendas1codigo_cliente: TIntegerField
      FieldName = 'codigo_cliente'
    end
    object vendas1nome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 60
    end
    object vendas1cpf_cliente: TStringField
      FieldName = 'cpf_cliente'
      Size = 18
    end
    object vendas1subtotal: TCurrencyField
      FieldName = 'subtotal'
    end
    object vendas1desconto: TCurrencyField
      FieldName = 'desconto'
    end
    object vendas1acrescimo: TCurrencyField
      FieldName = 'acrescimo'
    end
    object vendas1total: TCurrencyField
      FieldName = 'total'
    end
    object vendas1dinheiro: TCurrencyField
      FieldName = 'dinheiro'
    end
    object vendas1cheque: TCurrencyField
      FieldName = 'cheque'
    end
    object vendas1cartao: TCurrencyField
      FieldName = 'cartao'
    end
    object vendas1outros: TCurrencyField
      FieldName = 'outros'
    end
    object vendas1cancelado: TBooleanField
      FieldName = 'cancelado'
    end
    object vendas1numeroCfe: TIntegerField
      FieldName = 'numeroCfe'
    end
    object vendas1chaveCfe: TStringField
      FieldName = 'chaveCfe'
      Size = 60
    end
    object vendas1nomeArquivo: TStringField
      FieldName = 'nomeArquivo'
      Size = 120
    end
  end
  object cliente: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 455
    Top = 233
  end
  object vendas2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 412
    Top = 233
    object vendas2numero: TIntegerField
      FieldName = 'numero'
    end
    object vendas2codigo_produto: TIntegerField
      FieldName = 'codigo_produto'
    end
    object vendas2nome_produto: TStringField
      FieldName = 'nome_produto'
    end
    object vendas2un: TStringField
      FieldName = 'un'
      Size = 3
    end
    object vendas2valor_un: TCurrencyField
      FieldName = 'valor_un'
    end
    object vendas2qtd: TFloatField
      FieldName = 'qtd'
    end
    object vendas2valor_total: TCurrencyField
      FieldName = 'valor_total'
    end
    object vendas2cfop: TStringField
      FieldName = 'cfop'
      Size = 4
    end
    object vendas2ncm: TStringField
      FieldName = 'ncm'
      Size = 10
    end
    object vendas2cst_icms: TStringField
      FieldName = 'cst_icms'
      Size = 140
    end
    object vendas2cst_pis: TStringField
      FieldName = 'cst_pis'
      Size = 140
    end
    object vendas2cst_cofins: TStringField
      FieldName = 'cst_cofins'
      Size = 140
    end
    object vendas2cst_ipi: TStringField
      FieldName = 'cst_ipi'
      Size = 140
    end
    object vendas2totalGeral: TAggregateField
      FieldName = 'totalGeral'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_total)'
    end
  end
  object produtos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 495
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = vendas2
    Left = 532
    Top = 232
  end
  object BuscaTabelaNCM: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 615
    Top = 232
  end
  object DataSource2: TDataSource
    DataSet = vendas1
    Left = 572
    Top = 232
  end
end
