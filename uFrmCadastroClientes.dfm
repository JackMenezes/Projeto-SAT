object FrmCadastroClientes: TFrmCadastroClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Controle de Clientes'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Paginas: TPageControl
    Left = 0
    Top = 41
    Width = 717
    Height = 335
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
        Top = 48
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
        Height = 129
        Align = alTop
        Caption = 'Dados do Cliente'
        Enabled = False
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 18
          Width = 43
          Height = 16
          Caption = 'Codigo'
        end
        object Label3: TLabel
          Left = 87
          Top = 18
          Width = 132
          Height = 16
          Caption = 'Nome / Raz'#227'o Social'
        end
        object Label5: TLabel
          Left = 408
          Top = 18
          Width = 55
          Height = 16
          Caption = 'Telefone'
        end
        object Label4: TLabel
          Left = 531
          Top = 18
          Width = 44
          Height = 16
          Caption = 'Celular'
        end
        object Label10: TLabel
          Left = 167
          Top = 70
          Width = 22
          Height = 16
          Caption = 'CPF'
        end
        object Label11: TLabel
          Left = 332
          Top = 70
          Width = 17
          Height = 16
          Caption = 'RG'
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
          Left = 85
          Top = 40
          Width = 319
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 1
          OnKeyPress = nomeKeyPress
        end
        object telefone: TMaskEdit
          Left = 406
          Top = 40
          Width = 119
          Height = 24
          EditMask = '(99)9999-9999'
          MaxLength = 13
          TabOrder = 2
          Text = '(  )    -    '
        end
        object celular: TMaskEdit
          Left = 531
          Top = 40
          Width = 115
          Height = 24
          EditMask = '(99)99999-9999'
          MaxLength = 14
          TabOrder = 3
          Text = '(  )     -    '
        end
        object cpf: TMaskEdit
          Left = 167
          Top = 92
          Width = 159
          Height = 24
          EditMask = '999.999.999-99'
          MaxLength = 14
          TabOrder = 5
          Text = '   .   .   -  '
        end
        object pessoa: TRadioGroup
          Left = 12
          Top = 70
          Width = 149
          Height = 49
          Caption = 'Pessoa'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'F'#237'sica'
            'Juridica')
          TabOrder = 4
          OnClick = pessoaClick
        end
        object rg: TMaskEdit
          Left = 332
          Top = 92
          Width = 116
          Height = 24
          TabOrder = 6
          Text = ''
        end
      end
      object GPFiscal: TGroupBox
        Left = 0
        Top = 178
        Width = 709
        Height = 172
        Align = alTop
        Caption = 'Dados do Endere'#231'o'
        Enabled = False
        TabOrder = 2
        object Label6: TLabel
          Left = 8
          Top = 19
          Width = 60
          Height = 16
          Caption = 'Endere'#231'o'
        end
        object Label7: TLabel
          Left = 361
          Top = 16
          Width = 49
          Height = 16
          Caption = 'N'#250'mero'
        end
        object Label8: TLabel
          Left = 240
          Top = 68
          Width = 44
          Height = 16
          Caption = 'Estado'
        end
        object Label9: TLabel
          Left = 317
          Top = 68
          Width = 43
          Height = 16
          Caption = 'Cidade'
        end
        object Label12: TLabel
          Left = 12
          Top = 68
          Width = 39
          Height = 16
          Caption = 'Bairro'
        end
        object Label13: TLabel
          Left = 486
          Top = 16
          Width = 87
          Height = 16
          Caption = 'Complemento'
        end
        object endereco: TEdit
          Left = 8
          Top = 38
          Width = 347
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 70
          TabOrder = 0
          OnKeyPress = enderecoKeyPress
        end
        object numero: TEdit
          Left = 361
          Top = 38
          Width = 119
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 1
        end
        object estado: TComboBox
          Left = 240
          Top = 88
          Width = 71
          Height = 24
          CharCase = ecUpperCase
          ItemIndex = 0
          MaxLength = 2
          TabOrder = 4
          Text = 'SP'
          Items.Strings = (
            'SP')
        end
        object cidade: TComboBox
          Left = 317
          Top = 88
          Width = 322
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 100
          TabOrder = 5
          OnKeyPress = cidadeKeyPress
          Items.Strings = (
            'ADAMANTINA'
            'ADOLFO'
            'AGUAI'
            'AGUAS DA PRATA'
            'AGUAS DE LINDOIA'
            'AGUAS DE SANTA BARBARA'
            'AGUAS DE SAO PEDRO'
            'AGUDOS'
            'ALAMBARI'
            'ALFREDO MARCONDES'
            'ALTAIR'
            'ALTINOPOLIS'
            'ALTO ALEGRE'
            'ALUMINIO'
            'ALVARES FLORENCE'
            'ALVARES MACHADO'
            'ALVARO DE CARVALHO'
            'ALVINLANDIA'
            'AMERICANA'
            'AMERICO BRASILIENSE'
            'AMERICO DE CAMPOS'
            'AMPARO'
            'ANALANDIA'
            'ANDRADINA'
            'ANGATUBA'
            'ANHEMBI'
            'ANHUMAS'
            'APARECIDA'
            'APARECIDA D'#39'OESTE'
            'APIAI'
            'ARACARIGUAMA'
            'ARACATUBA'
            'ARACOIABA DA SERRA'
            'ARAMINA'
            'ARANDU'
            'ARAPEI'
            'ARARAQUARA'
            'ARARAS'
            'ARCO-IRIS'
            'AREALVA'
            'AREIAS'
            'AREIOPOLIS'
            'ARIRANHA'
            'ARTUR NOGUEIRA'
            'ARUJA'
            'ASPASIA'
            'ASSIS'
            'ATIBAIA'
            'AURIFLAMA'
            'AVAI'
            'AVANHANDAVA'
            'AVARE'
            'BADY BASSITT'
            'BALBINOS'
            'BALSAMO'
            'BANANAL'
            'BARAO DE ANTONINA'
            'BARBOSA'
            'BARIRI'
            'BARRA BONITA'
            'BARRA DO CHAPEU'
            'BARRA DO TURVO'
            'BARRETOS'
            'BARRINHA'
            'BARUERI'
            'BASTOS'
            'BATATAIS'
            'BAURU'
            'BEBEDOURO'
            'BENTO DE ABREU'
            'BERNARDINO DE CAMPOS'
            'BERTIOGA'
            'BILAC'
            'BIRIGUI'
            'BIRITIBA-MIRIM'
            'BOA ESPERANCA DO SUL'
            'BOCAINA'
            'BOFETE'
            'BOITUVA'
            'BOM JESUS DOS PERDOES'
            'BOM SUCESSO DE ITARARE'
            'BORA'
            'BORACEIA'
            'BORBOREMA'
            'BOREBI'
            'BOTUCATU'
            'BRAGANCA PAULISTA'
            'BRAUNA'
            'BREJO ALEGRE'
            'BRODOWSKI'
            'BROTAS'
            'BURI'
            'BURITAMA'
            'BURITIZAL'
            'CABRALIA PAULISTA'
            'CABREUVA'
            'CACAPAVA'
            'CACHOEIRA PAULISTA'
            'CACONDE'
            'CAFELANDIA'
            'CAIABU'
            'CAIEIRAS'
            'CAIUA'
            'CAJAMAR'
            'CAJATI'
            'CAJOBI'
            'CAJURU'
            'CAMPINA DO MONTE ALEGRE'
            'CAMPINAS'
            'CAMPO LIMPO PAULISTA'
            'CAMPOS DO JORDAO'
            'CAMPOS NOVOS PAULISTA'
            'CANANEIA'
            'CANAS'
            'CANDIDO MOTA'
            'CANDIDO RODRIGUES'
            'CANITAR'
            'CAPAO BONITO'
            'CAPELA DO ALTO'
            'CAPIVARI'
            'CARAGUATATUBA'
            'CARAPICUIBA'
            'CARDOSO'
            'CASA BRANCA'
            'CASSIA DOS COQUEIROS'
            'CASTILHO'
            'CATANDUVA'
            'CATIGUA'
            'CEDRAL'
            'CERQUEIRA CESAR'
            'CERQUILHO'
            'CESARIO LANGE'
            'CHARQUEADA'
            'CHAVANTES'
            'CLEMENTINA'
            'COLINA'
            'COLOMBIA'
            'CONCHAL'
            'CONCHAS'
            'CORDEIROPOLIS'
            'COROADOS'
            'CORONEL MACEDO'
            'CORUMBATAI'
            'COSMOPOLIS'
            'COSMORAMA'
            'COTIA'
            'CRAVINHOS'
            'CRISTAIS PAULISTA'
            'CRUZALIA'
            'CRUZEIRO'
            'CUBATAO'
            'CUNHA'
            'DESCALVADO'
            'DIADEMA'
            'DIRCE REIS'
            'DIVINOLANDIA'
            'DOBRADA'
            'DOIS CORRES'
            'DOLCINOPOLIS'
            'DOURADO'
            'DRACENA'
            'DUARTINA'
            'DUMONT'
            'ECHAPORA'
            'ELDORADO'
            'ELIAS FAUSTO'
            'ELISIARIO'
            'EMBAUBA'
            'EMBU'
            'EMBU-GUACU'
            'EMILIANOPOLIS'
            'ENGENHEIRO COELHO'
            'ESPIRITO SANTO DO PINHAL'
            'ESPIRITO SANTO DO TURVO'
            'ESTIVA GERBI'
            'ESTRELA D'#39'OESTE'
            'ESTRELA DO NORTE'
            'EUCLIDES DA CUNHA PAULISTA'
            'FARTURA'
            'FERNANDO PRESTES'
            'FERNANDOPOLIS'
            'FERNAO'
            'FERRAZ DE VASCONCELOS'
            'FLORA RICA'
            'FLOREAL'
            'FLORIDA PAULISTA'
            'FLORINIA'
            'FRANCA'
            'FRANCISCO MORATO'
            'FRANCO DA ROCHA'
            'GABRIEL MONTEIRO'
            'GALIA'
            'GARCA'
            'GASTAO VIDIGAL'
            'GAVIAO PEIXOTO'
            'GENERAL SALGADO'
            'GETULINA'
            'GLICERIO'
            'GUAICARA'
            'GUAIMBE'
            'GUAIRA'
            'GUAPIACU'
            'GUAPIARA'
            'GUARA'
            'GUARACAI'
            'GUARACI'
            'GUARANI D'#39'OESTE'
            'GUARANTA'
            'GUARARAPES'
            'GUARAREMA'
            'GUARATINGUETA'
            'GUAREI'
            'GUARIBA'
            'GUARUJA'
            'GUARULHOS'
            'GUATAPARA'
            'GUZOLANDIA'
            'HERCULANDIA'
            'HOLAMBRA'
            'HORTOLANDIA'
            'IACANGA'
            'IACRI'
            'IARAS'
            'IBATE'
            'IBIRA'
            'IBIRAREMA'
            'IBITINGA'
            'IBIUNA'
            'ICEM'
            'IEPE'
            'IGARACU DO TIETE'
            'IGARAPAVA'
            'IGARATA'
            'IGUAPE'
            'ILHA COMPRIDA'
            'ILHA SOLTEIRA'
            'ILHABELA'
            'INDAIATUBA'
            'INDIANA'
            'INDIAPORA'
            'INUBIA PAULISTA'
            'IPAUSSU'
            'IPERO'
            'IPEUNA'
            'IPIGUA'
            'IPORANGA'
            'IPUA'
            'IRACEMAPOLIS'
            'IRAPUA'
            'IRAPURU'
            'ITABERA'
            'ITAI'
            'ITAJOBI'
            'ITAJU'
            'ITANHAEM'
            'ITAOCA'
            'ITAPECERICA DA SERRA'
            'ITAPETININGA'
            'ITAPEVA'
            'ITAPEVI'
            'ITAPIRA'
            'ITAPIRAPUA PAULISTA'
            'ITAPOLIS'
            'ITAPORANGA'
            'ITAPUI'
            'ITAPURA'
            'ITAQUAQUECETUBA'
            'ITARARE'
            'ITARIRI'
            'ITATIBA'
            'ITATINGA'
            'ITIRAPINA'
            'ITIRAPUA'
            'ITOBI'
            'ITU'
            'ITUPEVA'
            'ITUVERAVA'
            'JABORANDI'
            'JABOTICABAL'
            'JACAREI'
            'JACI'
            'JACUPIRANGA'
            'JAGUARIUNA'
            'JALES'
            'JAMBEIRO'
            'JANDIRA'
            'JARDINOPOLIS'
            'JARINU'
            'JAU'
            'JERIQUARA'
            'JOANOPOLIS'
            'JOAO RAMALHO'
            'JOSE BONIFACIO'
            'JULIO MESQUITA'
            'JUMIRIM'
            'JUNDIAI'
            'JUNQUEIROPOLIS'
            'JUQUIA'
            'JUQUITIBA'
            'LAINHA'
            'LARANJAL PAULISTA'
            'LAVINIA'
            'LAVRINHAS'
            'LEME'
            'LENCOIS PAULISTA'
            'LIMEIRA'
            'LINDOIA'
            'LINS'
            'LORENA'
            'LOURDES'
            'LOUVEIRA'
            'LUCELIA'
            'LUCIANOPOLIS'
            'LUIS ANTONIO'
            'LUIZIANIA'
            'LUPERCIO'
            'LUTECIA'
            'MACATUBA'
            'MACAUBAL'
            'MACEDONIA'
            'MAGDA'
            'MAIRINQUE'
            'MAIRIPORA'
            'MANDURI'
            'MARABA PAULISTA'
            'MARACAI'
            'MARAPOAMA'
            'MARIAPOLIS'
            'MARILIA'
            'MARINOPOLIS'
            'MARTINOPOLIS'
            'MATAO'
            'MAUA'
            'MENDONCA'
            'MERIDIANO'
            'MESOPOLIS'
            'MIGUELOPOLIS'
            'MINEIROS DO TIETE'
            'MIRA ESTRELA'
            'MIRACATU'
            'MIRANDOPOLIS'
            'MIRANTE DO PARANAPANEMA'
            'MIRASSOL'
            'MIRASSOLANDIA'
            'MOCOCA'
            'MOGI DAS CRUZES'
            'MOGI GUACU'
            'MOJI MIRIM'
            'MOMBUCA'
            'MONCOES'
            'MONGAGUA'
            'MONTE ALEGRE DO SUL'
            'MONTE ALTO'
            'MONTE APRAZIVEL'
            'MONTE AZUL PAULISTA'
            'MONTE CASTELO'
            'MONTE MOR'
            'MONTEIRO LOBATO'
            'MORRO AGUDO'
            'MORUNGABA'
            'MOTUCA'
            'MURUTINGA DO SUL'
            'NANTES'
            'NARANDIBA'
            'NATIVIDADE DA SERRA'
            'NAZARE PAULISTA'
            'NEVES PAULISTA'
            'NHANDEARA'
            'NIPOA'
            'NOVA ALIANCA'
            'NOVA CAMPINA'
            'NOVA CANAA PAULISTA'
            'NOVA CASTILHO'
            'NOVA EUROPA'
            'NOVA GRANADA'
            'NOVA GUATAPORANGA'
            'NOVA INDEPENDENCIA'
            'NOVA LUZITANIA'
            'NOVA ODESSA'
            'NOVAIS'
            'NOVO HORIZONTE'
            'NUPORANGA'
            'OCAUCU'
            'OLEO'
            'OLIMPIA'
            'ONDA VERDE'
            'ORIENTE'
            'ORINDIUVA'
            'ORLANDIA'
            'OSASCO'
            'OSCAR BRESSANE'
            'OSVALDO CRUZ'
            'OURINHOS'
            'OURO VERDE'
            'OUROESTE'
            'PACAEMBU'
            'PALESTINA'
            'PALMARES PAULISTA'
            'PALMEIRA D'#39'OESTE'
            'PALMITAL'
            'PANORAMA'
            'PARAGUACU PAULISTA'
            'PARAIBUNA'
            'PARAISO'
            'PARANAPANEMA'
            'PARANAPUA'
            'PARAPUA'
            'PARDINHO'
            'PARIQUERA-ACU'
            'PARISI'
            'PATROCINIO PAULISTA'
            'PAULICEIA'
            'PAULINIA'
            'PAULISTANIA'
            'PAULO DE FARIA'
            'PEDERNEIRAS'
            'PEDRA BELA'
            'PEDRANOPOLIS'
            'PEDREGULHO'
            'PEDREIRA'
            'PEDRINHAS PAULISTA'
            'PEDRO DE TOLEDO'
            'PENAPOLIS'
            'PEREIRA BARRETO'
            'PEREIRAS'
            'PERUIBE'
            'PIACATU'
            'PIEDADE'
            'PILAR DO SUL'
            'PINDAMONHANGABA'
            'PINDORAMA'
            'PINHALZINHO'
            'PIQUEROBI'
            'PIQUETE'
            'PIRACAIA'
            'PIRACICABA'
            'PIRAJU'
            'PIRAJUI'
            'PIRANGI'
            'PIRAPORA DO BOM JESUS'
            'PIRAPOZINHO'
            'PIRASSUNUNGA'
            'PIRATININGA'
            'PITANGUEIRAS'
            'PLANALTO'
            'PLATINA'
            'POA'
            'POLONI'
            'POMPEIA'
            'PONGAI'
            'PONTAL'
            'PONTALINDA'
            'PONTES GESTAL'
            'POPULINA'
            'PORANGABA'
            'PORTO FELIZ'
            'PORTO FERREIRA'
            'POTIM'
            'POTIRENDABA'
            'PRACINHA'
            'PRADOPOLIS'
            'PRAIA GRANDE'
            'PRATANIA'
            'PRESIDENTE ALVES'
            'PRESIDENTE BERNARDES'
            'PRESIDENTE EPITACIO'
            'PRESIDENTE PRUDENTE'
            'PRESIDENTE VENCESLAU'
            'PROMISSAO'
            'QUADRA'
            'QUATA'
            'QUEIROZ'
            'QUELUZ'
            'QUINTANA'
            'RAFARD'
            'RANCHARIA'
            'REDENCAO DA SERRA'
            'REGENTE FEIJO'
            'REGINOPOLIS'
            'REGISTRO'
            'RESTINGA'
            'RIBEIRA'
            'RIBEIRAO BONITO'
            'RIBEIRAO BRANCO'
            'RIBEIRAO CORRENTE'
            'RIBEIRAO DO SUL'
            'RIBEIRAO DOS INDIOS'
            'RIBEIRAO GRANDE'
            'RIBEIRAO PIRES'
            'RIBEIRAO PRETO'
            'RIFAINA'
            'RINCAO'
            'RINOPOLIS'
            'RIO CLARO'
            'RIO DAS PEDRAS'
            'RIO GRANDE DA SERRA'
            'RIOLANDIA'
            'RIVERSUL'
            'ROSANA'
            'ROSEIRA'
            'RUBIACEA'
            'RUBINEIA'
            'SABINO'
            'SAGRES'
            'SALES'
            'SALES OLIVEIRA'
            'SALESOPOLIS'
            'SALMOURAO'
            'SALTINHO'
            'SALTO'
            'SALTO DE PIRAPORA'
            'SALTO GRANDE'
            'SANDOVALINA'
            'SANTA ADELIA'
            'SANTA ALBERTINA'
            'SANTA BARBARA D'#39'OESTE'
            'SANTA BRANCA'
            'SANTA CLARA D'#39'OESTE'
            'SANTA CRUZ DA CONCEICAO'
            'SANTA CRUZ DA ESPERANCA'
            'SANTA CRUZ DAS PALMEIRAS'
            'SANTA CRUZ DO RIO PARDO'
            'SANTA ERNESTINA'
            'SANTA FE DO SUL'
            'SANTA GERTRUDES'
            'SANTA ISABEL'
            'SANTA LUCIA'
            'SANTA MARIA DA SERRA'
            'SANTA MERCEDES'
            'SANTA RITA D'#39'OESTE'
            'SANTA RITA DO PASSA QUATRO'
            'SANTA ROSA DE VITERBO'
            'SANTA SALETE'
            'SANTANA DA PONTE PENSA'
            'SANTANA DE PARNAIBA'
            'SANTO ANASTACIO'
            'SANTO ANDRE'
            'SANTO ANTONIO DA ALEGRIA'
            'SANTO ANTONIO DE POSSE'
            'SANTO ANTONIO DO ARACANGUA'
            'SANTO ANTONIO DO JARDIM'
            'SANTO ANTONIO DO PINHAL'
            'SANTO EXPEDITO'
            'SANTOPOLIS DO AGUAPEI'
            'SANTOS'
            'SAO BENTO DO SAPUCAI'
            'SAO BERNARDO DO CAMPO'
            'SAO CAETANO DO SUL'
            'SAO CARLOS'
            'SAO FRANCISCO'
            'SAO JOAO DA BOA VISTA'
            'SAO JOAO DAS DUAS PONTES'
            'SAO JOAO DE IRACEMA'
            'SAO JOAO DO PAU D'#39'ALHO'
            'SAO JOAQUIM DA BARRA'
            'SAO JOSE DA BELA VISTA'
            'SAO JOSE DO BARREIRO'
            'SAO JOSE DO RIO PARDO'
            'SAO JOSE DO RIO PRETO'
            'SAO JOSE DOS CAMPOS'
            'SAO LOURENCO DA SERRA'
            'SAO LUIS DO PARAITINGA'
            'SAO MANUEL'
            'SAO MIGUEL ARCANJO'
            'SAO PAULO'
            'SAO PEDRO'
            'SAO PEDRO DO TURVO'
            'SAO ROQUE'
            'SAO SEBASTIAO'
            'SAO SEBASTIAO DA GRAMA'
            'SAO SIMAO'
            'SAO VICENTE'
            'SARAPUI'
            'SARUTAIA'
            'SEBASTIANOPOLIS DO SUL'
            'SERRA AZUL'
            'SERRA NEGRA'
            'SERRANA'
            'SERTAOZINHO'
            'SETE BARRAS'
            'SEVERINIA'
            'SILVEIRAS'
            'SOCORRO'
            'SOROCABA'
            'SUD MENNUCCI'
            'SUMARE'
            'SUZANAPOLIS'
            'SUZANO'
            'TABAPUA'
            'TABATINGA'
            'TABOAO DA SERRA'
            'TACIBA'
            'TAGUAI'
            'TAIACU'
            'TAIUVA'
            'TAMBAU'
            'TANABI'
            'TAPIRAI'
            'TAPIRATIBA'
            'TAQUARAL'
            'TAQUARITINGA'
            'TAQUARITUBA'
            'TAQUARIVAI'
            'TARABAI'
            'TARUMA'
            'TATUI'
            'TAUBATE'
            'TEJUPA'
            'TEODORO SAMPAIO'
            'TERRA ROXA'
            'TIETE'
            'TIMBURI'
            'TORRE DE PEDRA'
            'TORRINHA'
            'TRABIJU'
            'TREMEMBE'
            'TRES FRONTEIRAS'
            'TUIUTI'
            'TUPA'
            'TUPI PAULISTA'
            'TURIUBA'
            'TURMALINA'
            'UBARANA'
            'UBATUBA'
            'UBIRAJARA'
            'UCHOA'
            'UNIAO PAULISTA'
            'URANIA'
            'URU'
            'URUPES'
            'VALENTIM GENTIL'
            'VALINHOS'
            'VALPARAISO'
            'VARGEM'
            'VARGEM GRANDE DO SUL'
            'VARGEM GRANDE PAULISTA'
            'VARZEA PAULISTA'
            'VERA CRUZ'
            'VINHEDO'
            'VIRADOURO'
            'VISTA ALEGRE DO ALTO'
            'VITORIA BRASIL'
            'VOTORANTIM'
            'VOTUPORANGA'
            'ZACARIAS')
        end
        object complemento: TEdit
          Left = 486
          Top = 38
          Width = 153
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 30
          TabOrder = 2
        end
        object bairro: TEdit
          Left = 12
          Top = 88
          Width = 222
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 60
          TabOrder = 3
          OnKeyPress = bairroKeyPress
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
      Caption = 'Controle de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 295
      ExplicitHeight = 35
    end
  end
  object Tabela: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 532
    Top = 1
  end
  object DataSource1: TDataSource
    DataSet = Tabela
    Left = 564
    Top = 1
  end
end
