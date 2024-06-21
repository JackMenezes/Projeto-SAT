object FrmCadastroEmitente: TFrmCadastroEmitente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Dados do Emitente'
  ClientHeight = 452
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
    Height = 363
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
      Caption = 'EMITENTE'
      object GPProdutos: TGroupBox
        Left = 0
        Top = 0
        Width = 717
        Height = 129
        Align = alTop
        Caption = 'Dados do Emitente'
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 26
          Width = 132
          Height = 16
          Caption = 'Nome / Raz'#227'o Social'
        end
        object Label10: TLabel
          Left = 332
          Top = 26
          Width = 30
          Height = 16
          Caption = 'CNPJ'
        end
        object Label11: TLabel
          Left = 497
          Top = 26
          Width = 118
          Height = 16
          Caption = 'Inscri'#231#227'o Estadual'
        end
        object Label5: TLabel
          Left = 14
          Top = 77
          Width = 55
          Height = 16
          Caption = 'Telefone'
        end
        object Label14: TLabel
          Left = 137
          Top = 77
          Width = 44
          Height = 16
          Caption = 'Celular'
        end
        object Label15: TLabel
          Left = 262
          Top = 77
          Width = 32
          Height = 16
          Caption = 'Email'
        end
        object nome: TEdit
          Left = 8
          Top = 48
          Width = 318
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 0
          OnKeyPress = nomeKeyPress
        end
        object cnpj: TMaskEdit
          Left = 332
          Top = 48
          Width = 157
          Height = 24
          EditMask = '99.999.999/9999-99'
          MaxLength = 18
          TabOrder = 1
          Text = '  .   .   /    -  '
        end
        object ie: TMaskEdit
          Left = 497
          Top = 48
          Width = 144
          Height = 24
          TabOrder = 2
          Text = ''
        end
        object telefone: TMaskEdit
          Left = 12
          Top = 99
          Width = 119
          Height = 24
          EditMask = '(99)9999-9999'
          MaxLength = 13
          TabOrder = 3
          Text = '(  )    -    '
        end
        object celular: TMaskEdit
          Left = 137
          Top = 99
          Width = 119
          Height = 24
          EditMask = '(99)9999-9999'
          MaxLength = 13
          TabOrder = 4
          Text = '(  )    -    '
        end
        object email: TEdit
          Left = 262
          Top = 99
          Width = 379
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 5
          OnKeyPress = nomeKeyPress
        end
      end
      object GPFiscal: TGroupBox
        Left = 0
        Top = 129
        Width = 717
        Height = 120
        Align = alTop
        Caption = 'Dados do Endere'#231'o'
        TabOrder = 1
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
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 249
        Width = 717
        Height = 105
        Align = alTop
        Caption = 'Fiscal'
        TabOrder = 2
        object Label2: TLabel
          Left = 385
          Top = 12
          Width = 89
          Height = 16
          Caption = 'Regime ISSQN'
        end
        object Label4: TLabel
          Left = 549
          Top = 12
          Width = 114
          Height = 16
          Caption = 'Regime Tribut'#225'rio'
        end
        object rgAmbiente: TRadioGroup
          Left = 3
          Top = 16
          Width = 185
          Height = 57
          Caption = 'Tipo Ambiente'
          ItemIndex = 0
          Items.Strings = (
            'Produ'#231#227'o'
            'Homologa'#231#227'o')
          TabOrder = 0
        end
        object cbRegimeISSQN: TComboBox
          Left = 385
          Top = 34
          Width = 158
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 2
          TabOrder = 1
          Items.Strings = (
            '0 - NENHUM'
            '1 - MICRO EMPRESA MUNICIPAL'
            '2 - ESTIMATIVA'
            '3 - SOCIEDADEPROFISSIONAIS,'
            '4 - COOPERATIVA,'
            '5 - MICRO EMPRESARIO INDIVIDUAL'
            '6 - MICRO EMPRESARIO EMPRESA PP')
        end
        object cbRateioISSQN: TRadioGroup
          Left = 194
          Top = 16
          Width = 185
          Height = 57
          Caption = 'Rateio de Desc de ISSQN'
          ItemIndex = 1
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
        end
        object cbRegime: TComboBox
          Left = 549
          Top = 34
          Width = 158
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 2
          TabOrder = 3
          Items.Strings = (
            '0 - SIMPLES NACIONAL'
            '1 - SIMPLES NACIONAL - EXCESSO DE SUBLIMITE DA RECEITA BRUTA'
            '2 - NORMAL')
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
      Caption = 'DADOS DO EMITENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 318
      ExplicitHeight = 35
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 404
    Width = 725
    Height = 48
    Align = alBottom
    TabOrder = 2
    object BtnSalvar: TButton
      Left = 598
      Top = 1
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
