object FrmCadastroProdutos: TFrmCadastroProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Controle de Produtos'
  ClientHeight = 376
  ClientWidth = 717
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Paginas: TPageControl
    Left = 0
    Top = 41
    Width = 717
    Height = 335
    ActivePage = TBCadastro
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TBPesquisa: TTabSheet
      Caption = 'Pesquisar'
      object SpeedButton1: TSpeedButton
        Left = 483
        Top = 6
        Width = 111
        Height = 37
        Caption = 'Pesquisar'
        Glyph.Data = {
          B6080000424DB608000000000000360400002800000030000000180000000100
          080000000000800400000000000000000000000100000000000077777700FDE8
          D300D6D6D600AFAFB100FFFCF700ABA49C00EFD8BF00CCCCCC0099999900F0F0
          F0009C8E7F00FFEAE600BDBDBD00BAAB9D00E6E6E600DCD8DA00C3B2A3008484
          8400FFEEEF00EFDFD900C6C3C00094949400FAF6F000ADADAD00FFE8DB008C8C
          8C00BEB3B700FFF4E500FAEAD900A6A6A600D4BFAF00F3DECB00FEF9F600C3B9
          BC00FAF1E700FDF6EE00F7FAFC00AAA7A200B6B6B600E3E1E20079797900FFED
          D800F9ECDF00FFFFFF00F5EFEF00DBD8D900FEEFDE00B3ACA6008F909100C0BB
          B600EAD8C6009E8F8200BCB4AB00EDE7E000C5BBBE00DEDEDE00CFD1D400C5C5
          C500FFEEE400C0C1C300B3AFB100F6F6F600B4A79900B5ADB500A18D7800F7DE
          D600D5C2AC00F8E5D000F7FFFF00ADA5AD00BAADA10000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002B2B2B2B2B2B
          2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B0E2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B
          2B2B2B2B2B2B2B0E2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3D0C1D
          392B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B091D15392B2B2B2B2B2B2B
          2B2B2B2B2B2B2B2B2B2B2B2B243C080E3C2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B
          2B2B2B2B3D15110C1D2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B0C15091A
          272B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B1D283908372B2B2B2B2B2B2B
          2B2B2B2B2B2B2B2B2B2B2B07150E1A2D2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B
          2B2B2B26280C08022B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B02150F1A022B
          2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B39283C08382B2B2B2B2B2B2B2B2B
          2B2B2B2B2B2B2B2B2B27150721022B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B
          2B38281708382B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B09151421022B2B2B
          2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B0E281D08382B2B2B2B2B2B2B2B2B2B2B
          2B0E02020E2B2B24081A212D2B2B2B2B2B2B2B2B2B2B2B2B2B0E02020E2B2B3D
          110808022B2B2B2B2B2B2B2B2B2B0E26170303031D081D1D2636372B2B2B2B2B
          2B2B2B2B2B2B0E170808080815191D30151D0F2B2B2B2B2B2B2B2B2B2B391D02
          3D2B2B2B2B2C391D3C072B2B2B2B2B2B2B2B2B2B2B0C150C370E0E0E0E021D11
          15072B2B2B2B2B2B2B2B2B2B0C0C2020202020202020202C08032B2B2B2B2B2B
          2B2B2B2B3C1D270E272727272727270211032B2B2B2B2B2B2B2B2B0226202323
          23232316161616161608382B2B2B2B2B2B2B2B38080E37373737373737373737
          2D11382B2B2B2B2B2B2B2426352222232323232323232323120F302B2B2B2B2B
          2B2B241D3837372D2D37373737373737370C112B2B2B2B2B2B2B07261B2A2222
          2222232323232323232308272B2B2B2B2B2B3B1D37022D2D2D2D2D2D37373737
          2D2D19272B2B2B2B2B2B17312E2E22221B1B1B1B1B1B1B1B1B123C392B2B2B2B
          2B2B081D2D0202020202022D2D2D2D2D2D2D08392B2B2B2B2B2B1734291C3A1B
          1B1B1B1B1B1B2222220B263B2B2B2B2B2B2B151D023838380202020202020202
          0202083B2B2B2B2B2B2B38054301010101010101292E2E2E2E2E17372B2B2B2B
          2B2B0C30070707070738383838020202020215372B2B2B2B2B2B242542293A3A
          2929292929292E2E3A131D2B2B2B2B2B2B2B3D30170707070707073838383838
          383B082B2B2B2B2B2B2B2B0F0A061B2E2E2E2E2E2E2E2E1B1826382B2B2B2B2B
          2B2B2B07280C070707070707070707380708072B2B2B2B2B2B2B2B2B0C40321B
          2E2E2E2E2E2E1B43313B2B2B2B2B2B2B2B2B2B2B1D2826070707070707070739
          08262B2B2B2B2B2B2B2B2B2B2B143310321C2E2E2E1F1E2F072B2B2B2B2B2B2B
          2B2B2B2B2B17001526390707070C1D30392B2B2B2B2B2B2B2B2B2B2B2B2B0931
          053E0D0D0D3439092B2B2B2B2B2B2B2B2B2B2B2B2B2B371D1919303030082609
          2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B3D02141437242B2B2B2B2B2B2B2B2B2B
          2B2B2B2B2B2B2B2B0E3B173C073D2B2B2B2B2B2B2B2B2B2B2B2B}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 49
        Width = 609
        Height = 179
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDblClick = DBGrid1DblClick
      end
      object txtPesquisa: TEdit
        Left = 194
        Top = 19
        Width = 287
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 1
        OnKeyPress = txtPesquisaKeyPress
      end
      object rgPesquisa: TRadioGroup
        Left = 3
        Top = 1
        Width = 185
        Height = 43
        Caption = 'Pesquisar por:'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'C'#243'digo'
          'Nome')
        TabOrder = 2
        OnClick = rgPesquisaClick
      end
    end
    object TBCadastro: TTabSheet
      Caption = 'Cadastrar'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 709
        Height = 49
        Align = alTop
        TabOrder = 0
        object BtnIncluir: TButton
          Left = 8
          Top = 2
          Width = 113
          Height = 41
          Caption = 'INCLUIR'
          ImageIndex = 15
          Images = FrmMenu.cxImageList1
          TabOrder = 0
          OnClick = BtnIncluirClick
        end
        object BtnEditar: TButton
          Left = 125
          Top = 2
          Width = 113
          Height = 41
          Caption = 'EDITAR'
          ImageIndex = 17
          Images = FrmMenu.cxImageList1
          TabOrder = 1
          OnClick = BtnEditarClick
        end
        object BtnCancelar: TButton
          Left = 242
          Top = 2
          Width = 113
          Height = 41
          Caption = 'CANCELAR'
          Enabled = False
          HotImageIndex = 19
          ImageIndex = 18
          Images = FrmMenu.cxImageList1
          TabOrder = 2
          OnClick = BtnCancelarClick
        end
        object BtnSalvar: TButton
          Left = 359
          Top = 2
          Width = 113
          Height = 41
          Caption = 'SALVAR'
          Enabled = False
          ImageIndex = 14
          Images = FrmMenu.cxImageList1
          TabOrder = 3
          OnClick = BtnSalvarClick
        end
        object BtnExcluir: TButton
          Left = 476
          Top = 2
          Width = 113
          Height = 41
          Caption = 'EXCLUIR'
          HotImageIndex = 19
          ImageIndex = 16
          Images = FrmMenu.cxImageList1
          TabOrder = 4
          OnClick = BtnExcluirClick
        end
      end
      object GPProdutos: TGroupBox
        Left = 0
        Top = 49
        Width = 709
        Height = 80
        Align = alTop
        Caption = 'Dados do Produto'
        Enabled = False
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 25
          Width = 43
          Height = 16
          Caption = 'Codigo'
        end
        object Label3: TLabel
          Left = 87
          Top = 25
          Width = 139
          Height = 16
          Caption = 'Descri'#231#227'o do Produto'
        end
        object Label5: TLabel
          Left = 412
          Top = 25
          Width = 99
          Height = 16
          Caption = 'UN.  DE MEDIDA'
        end
        object Label4: TLabel
          Left = 524
          Top = 25
          Width = 44
          Height = 16
          Caption = 'VALOR'
        end
        object codigo: TEdit
          Left = 8
          Top = 40
          Width = 73
          Height = 24
          Enabled = False
          TabOrder = 0
        end
        object nome: TEdit
          Left = 87
          Top = 40
          Width = 319
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 1
          OnKeyPress = nomeKeyPress
        end
        object UN: TComboBox
          Left = 412
          Top = 40
          Width = 106
          Height = 24
          ItemIndex = 0
          MaxLength = 3
          TabOrder = 2
          Text = 'UN'
          Items.Strings = (
            'UN'
            'PC'
            'LT'
            'CX')
        end
        object txtValor: TEdit
          Left = 524
          Top = 40
          Width = 73
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 3
          Text = '0'
          OnKeyPress = txtValorKeyPress
          OnKeyUp = txtValorKeyUp
        end
      end
      object GPFiscal: TGroupBox
        Left = 0
        Top = 129
        Width = 709
        Height = 172
        Align = alTop
        Caption = 'Dados Fiscais'
        Enabled = False
        TabOrder = 2
        object Label6: TLabel
          Left = 8
          Top = 19
          Width = 74
          Height = 16
          Caption = 'C'#243'digo NCM'
        end
        object Label7: TLabel
          Left = 107
          Top = 19
          Width = 77
          Height = 16
          Caption = 'C'#243'digo CEST'
        end
        object Label8: TLabel
          Left = 8
          Top = 68
          Width = 59
          Height = 16
          Caption = 'CST ICMS'
        end
        object Label9: TLabel
          Left = 317
          Top = 68
          Width = 48
          Height = 16
          Caption = 'CST PIS'
        end
        object Label10: TLabel
          Left = 8
          Top = 118
          Width = 71
          Height = 16
          Caption = 'CST COFINS'
        end
        object Label11: TLabel
          Left = 317
          Top = 118
          Width = 45
          Height = 16
          Caption = 'CST IPI'
        end
        object NCM: TEdit
          Left = 8
          Top = 38
          Width = 93
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 0
        end
        object CEST: TEdit
          Left = 107
          Top = 38
          Width = 119
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 1
        end
        object CST_ICMS: TComboBox
          Left = 8
          Top = 90
          Width = 305
          Height = 24
          Style = csDropDownList
          CharCase = ecUpperCase
          MaxLength = 3
          TabOrder = 2
          Items.Strings = (
            '000 - TRIBUTADO INTEGRALMENTE'
            
              '010 - TRIBUTADO E COM COBRANCA DE ICMS POR SUBSTITUICAO TRIBUTAR' +
              'IA'
            '020 - COM REDUCAO DE BASE DE CALCULO'
            
              '030 - ISENTA OU NAO TRIBUTADA E COM COBRANCA DO ICMS POR SUBSTIT' +
              'UICAO TRIBUTARIA'
            '040 - ISENTA'
            '041 - NAO TRIBUTADA'
            '050 - SUSPENSAO'
            '051 - DIFERIMENTO'
            '060 - ICMS COBRADO ANTERIORMENTE POR SUBSTITUICAO TRIBUTARIA'
            
              '070 - COM REDUCAO DE BASE DE CALCULO E COM COBRANCA DE ICMS POR ' +
              'SUBSTITUICAO TRIBUTARIA'
            '090 - OUTROS'
            '101 - TRIBUTADA PELO SIMPLES NACIONAL COM PERMISSAO DE CREDITO'
            '102 - TRIBUTADA PELO SIMPLES NACIONAL SEM PERMISSAO DE CREDITO'
            
              '103 - ISENCAO DO ICMS NO SIMPLES NACIONAL PARA FAIXA DE RECEITA ' +
              'BRUTA'
            
              '201 - TRIBUTADA PELO SIMPLES NACIONAL COM PERMISSAO DE CREDITO E' +
              ' COM COBRANCA DO ICMS POR SUBSTITUICAO TRIBUTARIA'
            
              '202 - TRIBUTADA PELO SIMPLES NACIONAL SEM PERMISSAO DE CREDITO E' +
              ' COM COBRANCA DO ICMS POR SUBSTITUICAO TRIBUTARIA'
            
              '203 - ISENCAO DO ICMS PELO SIMPLES NACIONAL PARA A FAIXA DE RECE' +
              'ITA BRUTA E COM COBRANCA DO ICMS POR SUBSTITUICAO TRIBUTARIA'
            '300 - IMUNE'
            '400 - NAO TRIBUTADA'
            
              '500 - ICMS COBRADO ANTERIORMENTE POR SUBSTITUICAO TRIBUTARIA (SU' +
              'BSTITUIDO) OU POR ANTECIPACAO'
            '900 - OUTROS')
        end
        object CST_PIS: TComboBox
          Left = 319
          Top = 90
          Width = 322
          Height = 24
          Style = csDropDownList
          CharCase = ecUpperCase
          MaxLength = 3
          TabOrder = 3
          Items.Strings = (
            '01 - OPERACAO TRIBUTAVEL COM ALIQUOTA BASICA'
            '02 - OPERACAO TRIBUTAVEL COM ALIQUOTA DIFERENCIADA'
            
              '03 - OPERACAO TRIBUTAVEL COM ALIQUOTA POR UNIDADE DE MEDIDA DE P' +
              'RODUTO'
            '04 - OPERACAO TRIBUTAVEL MONOFASICA - REVENDA A ALIQUOTA ZERO'
            '05 - OPERACAO TRIBUTAVEL POR SUBSTITUICAO TRIBUTARIA'
            '06 - OPERACAO TRIBUTAVEL A ALIQUOTA ZERO'
            '07 - OPERACAO ISENTA DA CONTRIBUICAO'
            '08 - OPERACAO SEM INCIDENCIA DA CONTRIBUICAO'
            '09 - OPERACAO COM SUSPENSAO DA CONTRIBUICAO'
            '49 - OUTRAS OPERACOES DE SAIDA'
            
              '50 - OPERACAO COM DIREITO A CREDITO - VINCULADA EXCLUSIVAMENTE A' +
              ' RECEITA TRIBUTADA NO MERCADO INTERNO'
            
              '51 - OPERACAO COM DIREITO A CREDITO '#8211' VINCULADA EXCLUSIVAMENTE A' +
              ' RECEITA NAO TRIBUTADA NO MERCADO INTERNO'
            
              '52 - OPERACAO COM DIREITO A CREDITO - VINCULADA EXCLUSIVAMENTE A' +
              ' RECEITA DE EXPORTACAO'
            
              '53 - OPERACAO COM DIREITO A CREDITO - VINCULADA A RECEITAS TRIBU' +
              'TADAS E NAO-TRIBUTADAS NO MERCADO INTERNO'
            
              '54 - OPERACAO COM DIREITO A CREDITO - VINCULADA A RECEITAS TRIBU' +
              'TADAS NO MERCADO INTERNO E DE EXPORTACAO'
            
              '55 - OPERACAO COM DIREITO A CREDITO - VINCULADA A RECEITAS NAO-T' +
              'RIBUTADAS NO MERCADO INTERNO E DE EXPORTACAO'
            
              '56 - OPERACAO COM DIREITO A CREDITO - VINCULADA A RECEITAS TRIBU' +
              'TADAS E NAO-TRIBUTADAS NO MERCADO INTERNO, E DE EXPORTACAO'
            
              '60 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA EXCLUSI' +
              'VAMENTE A RECEITA TRIBUTADA NO MERCADO INTERNO'
            
              '61 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA EXCLUSI' +
              'VAMENTE A RECEITA NAO-TRIBUTADA NO MERCADO INTERNO'
            
              '62 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA EXCLUSI' +
              'VAMENTE A RECEITA DE EXPORTACAO'
            
              '63 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA A RECEI' +
              'TAS TRIBUTADAS E NAO-TRIBUTADAS NO MERCADO INTERNO'
            
              '64 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA A RECEI' +
              'TAS TRIBUTADAS NO MERCADO INTERNO E DE EXPORTACAO'
            
              '65 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA A RECEI' +
              'TAS NAO-TRIBUTADAS NO MERCADO INTERNO E DE EXPORTACAO'
            
              '66 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA A RECEI' +
              'TAS TRIBUTADAS E NAO-TRIBUTADAS NO MERCADO INTERNO, E DE EXPORTA' +
              'CAO'
            '67 - CREDITO PRESUMIDO - OUTRAS OPERACOES'
            '70 - OPERACAO DE AQUISICAO SEM DIREITO A CREDITO'
            '71 - OPERACAO DE AQUISICAO COM ISENCAO'
            '72 - OPERACAO DE AQUISICAO COM SUSPENSAO'
            '73 - OPERACAO DE AQUISICAO A ALIQUOTA ZERO'
            '74 - OPERACAO DE AQUISICAO SEM INCIDENCIA DA CONTRIBUICAO'
            '75 - OPERACAO DE AQUISICAO POR SUBSTITUICAO TRIBUTARIA'
            '98 - OUTRAS OPERACOES DE ENTRADA'
            '99 - OUTRAS OPERACOES')
        end
        object CST_COFINS: TComboBox
          Left = 8
          Top = 137
          Width = 305
          Height = 24
          Style = csDropDownList
          CharCase = ecUpperCase
          MaxLength = 3
          TabOrder = 4
          Items.Strings = (
            '01 - OPERACAO TRIBUTAVEL COM ALIQUOTA BASICA'
            '02 - OPERACAO TRIBUTAVEL COM ALIQUOTA DIFERENCIADA'
            
              '03 - OPERACAO TRIBUTAVEL COM ALIQUOTA POR UNIDADE DE MEDIDA DE P' +
              'RODUTO'
            '04 - OPERACAO TRIBUTAVEL MONOFASICA - REVENDA A ALIQUOTA ZERO'
            '05 - OPERACAO TRIBUTAVEL POR SUBSTITUICAO TRIBUTARIA'
            '06 - OPERACAO TRIBUTAVEL A ALIQUOTA ZERO'
            '07 - OPERACAO ISENTA DA CONTRIBUICAO'
            '08 - OPERACAO SEM INCIDENCIA DA CONTRIBUICAO'
            '09 - OPERACAO COM SUSPENSAO DA CONTRIBUICAO'
            '49 - OUTRAS OPERACOES DE SAIDA'
            
              '50 - OPERACAO COM DIREITO A CREDITO - VINCULADA EXCLUSIVAMENTE A' +
              ' RECEITA TRIBUTADA NO MERCADO INTERNO'
            
              '51 - OPERACAO COM DIREITO A CREDITO '#8211' VINCULADA EXCLUSIVAMENTE A' +
              ' RECEITA NAO TRIBUTADA NO MERCADO INTERNO'
            
              '52 - OPERACAO COM DIREITO A CREDITO - VINCULADA EXCLUSIVAMENTE A' +
              ' RECEITA DE EXPORTACAO'
            
              '53 - OPERACAO COM DIREITO A CREDITO - VINCULADA A RECEITAS TRIBU' +
              'TADAS E NAO-TRIBUTADAS NO MERCADO INTERNO'
            
              '54 - OPERACAO COM DIREITO A CREDITO - VINCULADA A RECEITAS TRIBU' +
              'TADAS NO MERCADO INTERNO E DE EXPORTACAO'
            
              '55 - OPERACAO COM DIREITO A CREDITO - VINCULADA A RECEITAS NAO-T' +
              'RIBUTADAS NO MERCADO INTERNO E DE EXPORTACAO'
            
              '56 - OPERACAO COM DIREITO A CREDITO - VINCULADA A RECEITAS TRIBU' +
              'TADAS E NAO-TRIBUTADAS NO MERCADO INTERNO, E DE EXPORTACAO'
            
              '60 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA EXCLUSI' +
              'VAMENTE A RECEITA TRIBUTADA NO MERCADO INTERNO'
            
              '61 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA EXCLUSI' +
              'VAMENTE A RECEITA NAO-TRIBUTADA NO MERCADO INTERNO'
            
              '62 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA EXCLUSI' +
              'VAMENTE A RECEITA DE EXPORTACAO'
            
              '63 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA A RECEI' +
              'TAS TRIBUTADAS E NAO-TRIBUTADAS NO MERCADO INTERNO'
            
              '64 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA A RECEI' +
              'TAS TRIBUTADAS NO MERCADO INTERNO E DE EXPORTACAO'
            
              '65 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA A RECEI' +
              'TAS NAO-TRIBUTADAS NO MERCADO INTERNO E DE EXPORTACAO'
            
              '66 - CREDITO PRESUMIDO - OPERACAO DE AQUISICAO VINCULADA A RECEI' +
              'TAS TRIBUTADAS E NAO-TRIBUTADAS NO MERCADO INTERNO, E DE EXPORTA' +
              'CAO'
            '67 - CREDITO PRESUMIDO - OUTRAS OPERACOES'
            '70 - OPERACAO DE AQUISICAO SEM DIREITO A CREDITO'
            '71 - OPERACAO DE AQUISICAO COM ISENCAO'
            '72 - OPERACAO DE AQUISICAO COM SUSPENSAO'
            '73 - OPERACAO DE AQUISICAO A ALIQUOTA ZERO'
            '74 - OPERACAO DE AQUISICAO SEM INCIDENCIA DA CONTRIBUICAO'
            '75 - OPERACAO DE AQUISICAO POR SUBSTITUICAO TRIBUTARIA'
            '98 - OUTRAS OPERACOES DE ENTRADA'
            '99 - OUTRAS OPERACOES')
        end
        object CST_IPI: TComboBox
          Left = 317
          Top = 137
          Width = 322
          Height = 24
          Style = csDropDownList
          CharCase = ecUpperCase
          MaxLength = 3
          TabOrder = 5
          Items.Strings = (
            '0 - ENTRADA COM RECUPERA'#199'AO DE CREDITO'
            '1 - ENTRADA TRIBUTAVEL COM ALIQUOTA ZERO'
            '2 - ENTRADA ISENTA'
            '3 - ENTRADA NAO-TRIBUTADA'
            '4 - ENTRADA IMUNE'
            '5 - ENTRADA COM SUSPENSAO'
            '49 - OUTRAS ENTRADAS'
            '50 - SAIDA TRIBUTADA'
            '51 - SAIDA TRIBUTAVEL'
            '52 - SAIDA ISENTA'
            '53 - SAIDA NAO TRIBUTADA'
            '54 - SAIDA IMUNE'
            '55 - SAIDA COM SUSPENSAO'
            '99 - OUTRAS SAIDAS')
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 715
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Controle de Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 310
      ExplicitHeight = 35
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
end
