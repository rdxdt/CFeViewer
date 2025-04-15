object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'CFeViewer'
  ClientHeight = 481
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 675
    Height = 80
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 204
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object Label3: TLabel
      Left = 400
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Pasta'
    end
    object dtpInicial: TDateTimePicker
      Left = 12
      Top = 24
      Width = 186
      Height = 21
      Date = 44492.503015856480000000
      Time = 44492.503015856480000000
      TabOrder = 0
    end
    object dtpFinal: TDateTimePicker
      Left = 204
      Top = 24
      Width = 186
      Height = 21
      Date = 44492.503087523160000000
      Time = 44492.503087523160000000
      TabOrder = 1
    end
    object btnAbrirArquivos: TButton
      Left = 596
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Abrir'
      TabOrder = 2
      OnClick = btnAbrirArquivosClick
    end
    object edtFolder: TButtonedEdit
      Left = 400
      Top = 24
      Width = 190
      Height = 21
      Images = ImageList1
      RightButton.ImageIndex = 0
      RightButton.Visible = True
      TabOrder = 3
      OnRightButtonClick = edtFolderRightButtonClick
    end
    object chkFileDate: TCheckBox
      Left = 12
      Top = 51
      Width = 248
      Height = 17
      Caption = 'Utilizar a data do arquivo como data de emiss'#227'o'
      TabOrder = 4
    end
  end
  object pgcVisualiza: TPageControl
    Left = 0
    Top = 80
    Width = 675
    Height = 401
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Listagem'
      object dbgListagem: TDBGrid
        Left = 0
        Top = 41
        Width = 667
        Height = 226
        Align = alClient
        DataSource = dsListagem
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbgListagemDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DataEmissao'
            Title.Caption = 'Data Emiss'#227'o'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nCFe'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NrCaixa'
            Title.Caption = 'N'#186' Caixa'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdItens'
            Title.Caption = 'Qtd.Itens'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Dinheiro'
            Title.Caption = 'Pgt. Dinheiro'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cheque'
            Title.Caption = 'Pgt. Cheque'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cartao'
            Title.Caption = 'Pgt. Cart'#227'o'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ticket'
            Title.Caption = 'Pgt. Ticket'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Outros'
            Title.Caption = 'Pgt. Outros'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vICMS'
            Title.Caption = 'Val. ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vICMSST'
            Title.Caption = 'Val ICMS ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vPisCofinsST'
            Title.Caption = 'Val. PIS/COFINS ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Arquivo'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 267
        Width = 667
        Height = 103
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        object edtListQtd: TLabeledEdit
          Left = 8
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 50
          EditLabel.Height = 13
          EditLabel.Caption = 'Qtd. Itens'
          TabOrder = 0
        end
        object edtListTotal: TLabeledEdit
          Left = 135
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 51
          EditLabel.Height = 13
          EditLabel.Caption = 'Valor Total'
          TabOrder = 1
        end
        object edtListDin: TLabeledEdit
          Left = 262
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 66
          EditLabel.Height = 13
          EditLabel.Caption = 'Total Dinheiro'
          TabOrder = 2
        end
        object edtListChe: TLabeledEdit
          Left = 389
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 64
          EditLabel.Height = 13
          EditLabel.Caption = 'Total Cheque'
          TabOrder = 3
        end
        object edtListCar: TLabeledEdit
          Left = 516
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 60
          EditLabel.Height = 13
          EditLabel.Caption = 'Total Cart'#227'o'
          TabOrder = 4
        end
        object edtListTkt: TLabeledEdit
          Left = 8
          Top = 72
          Width = 121
          Height = 21
          EditLabel.Width = 55
          EditLabel.Height = 13
          EditLabel.Caption = 'Total Ticket'
          TabOrder = 5
        end
        object edtListOut: TLabeledEdit
          Left = 135
          Top = 72
          Width = 121
          Height = 21
          EditLabel.Width = 60
          EditLabel.Height = 13
          EditLabel.Caption = 'Total Outros'
          TabOrder = 6
        end
        object edtListICMS: TLabeledEdit
          Left = 262
          Top = 72
          Width = 121
          Height = 21
          EditLabel.Width = 52
          EditLabel.Height = 13
          EditLabel.Caption = 'Total ICMS'
          TabOrder = 7
        end
        object edtListICMSST: TLabeledEdit
          Left = 389
          Top = 72
          Width = 121
          Height = 21
          EditLabel.Width = 67
          EditLabel.Height = 13
          EditLabel.Caption = 'Total ICMS ST'
          TabOrder = 8
        end
        object edtListICMSPISCOF: TLabeledEdit
          Left = 516
          Top = 72
          Width = 121
          Height = 21
          EditLabel.Width = 100
          EditLabel.Height = 13
          EditLabel.Caption = 'Total PIS/COFINS ST'
          TabOrder = 9
        end
      end
      object tbrListagem: TToolBar
        Left = 0
        Top = 0
        Width = 667
        Height = 41
        ButtonHeight = 36
        ButtonWidth = 113
        Caption = 'tbrListagem'
        Images = ImageList1
        ShowCaptions = True
        TabOrder = 2
        object tbAnalitico: TToolButton
          Left = 0
          Top = 0
          Caption = 'Ver Relat'#243'rio Anal'#237'tico'
          ImageIndex = 1
          OnClick = tbAnaliticoClick
        end
        object tbSintetico: TToolButton
          Left = 113
          Top = 0
          Caption = 'Ver Relat'#243'rio Sint'#233'tico'
          ImageIndex = 2
          OnClick = tbSinteticoClick
        end
        object tbICMS: TToolButton
          Left = 226
          Top = 0
          Caption = 'Ver Relat'#243'rio ICMS'
          ImageIndex = 3
          OnClick = tbICMSClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detalhes'
      ImageIndex = 1
      object lblFileName: TLabel
        Left = 0
        Top = 0
        Width = 667
        Height = 16
        Align = alTop
        Caption = 'Visualizando: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 89
      end
      object pgcCFe: TPageControl
        Left = 0
        Top = 57
        Width = 667
        Height = 313
        ActivePage = tabTotais
        Align = alClient
        TabOrder = 0
        TabPosition = tpBottom
        object tabIde: TTabSheet
          Caption = 'Identifica'#231#227'o'
          object edtIdecUF: TLabeledEdit
            Left = 3
            Top = 56
            Width = 121
            Height = 21
            EditLabel.Width = 18
            EditLabel.Height = 13
            EditLabel.Caption = 'cUF'
            ReadOnly = True
            TabOrder = 0
          end
          object edtIdecNF: TLabeledEdit
            Left = 130
            Top = 56
            Width = 121
            Height = 21
            EditLabel.Width = 18
            EditLabel.Height = 13
            EditLabel.Caption = 'cNF'
            ReadOnly = True
            TabOrder = 1
          end
          object edtIdeMod: TLabeledEdit
            Left = 257
            Top = 56
            Width = 121
            Height = 21
            EditLabel.Width = 34
            EditLabel.Height = 13
            EditLabel.Caption = 'Modelo'
            ReadOnly = True
            TabOrder = 2
          end
          object edtIdeNrSerie: TLabeledEdit
            Left = 384
            Top = 56
            Width = 121
            Height = 21
            EditLabel.Width = 75
            EditLabel.Height = 13
            EditLabel.Caption = 'Nr de S'#233'rie SAT'
            ReadOnly = True
            TabOrder = 3
          end
          object edtIdeNCFe: TLabeledEdit
            Left = 511
            Top = 56
            Width = 121
            Height = 21
            EditLabel.Width = 25
            EditLabel.Height = 13
            EditLabel.Caption = 'nCFe'
            ReadOnly = True
            TabOrder = 4
          end
          object edtIdeDEmi: TLabeledEdit
            Left = 3
            Top = 104
            Width = 121
            Height = 21
            EditLabel.Width = 64
            EditLabel.Height = 13
            EditLabel.Caption = 'Data Emiss'#227'o'
            ReadOnly = True
            TabOrder = 5
          end
          object edtIdeHEmi: TLabeledEdit
            Left = 130
            Top = 104
            Width = 121
            Height = 21
            EditLabel.Width = 64
            EditLabel.Height = 13
            EditLabel.Caption = 'Hora Emiss'#227'o'
            ReadOnly = True
            TabOrder = 6
          end
          object edtIdeCDV: TLabeledEdit
            Left = 257
            Top = 104
            Width = 121
            Height = 21
            EditLabel.Width = 18
            EditLabel.Height = 13
            EditLabel.Caption = 'cDV'
            ReadOnly = True
            TabOrder = 7
          end
          object edtIdeTpAmb: TLabeledEdit
            Left = 384
            Top = 104
            Width = 121
            Height = 21
            EditLabel.Width = 83
            EditLabel.Height = 13
            EditLabel.Caption = 'Tipo de Ambiente'
            ReadOnly = True
            TabOrder = 8
          end
          object edtIdeCNPJ: TLabeledEdit
            Left = 511
            Top = 104
            Width = 121
            Height = 21
            EditLabel.Width = 105
            EditLabel.Height = 13
            EditLabel.Caption = 'CNPJ Software House'
            ReadOnly = True
            TabOrder = 9
          end
          object edtIdeSignAc: TLabeledEdit
            Left = 3
            Top = 200
            Width = 629
            Height = 21
            EditLabel.Width = 234
            EditLabel.Height = 13
            EditLabel.Caption = 'Assinatura do Software de Automa'#231#227'o Comercial'
            ReadOnly = True
            TabOrder = 11
          end
          object edtIdeAssinaturaQRCode: TLabeledEdit
            Left = 3
            Top = 248
            Width = 629
            Height = 21
            EditLabel.Width = 94
            EditLabel.Height = 13
            EditLabel.Caption = 'Assinatura QRCode'
            ReadOnly = True
            TabOrder = 12
          end
          object edtIdeNrCaixa: TLabeledEdit
            Left = 3
            Top = 152
            Width = 121
            Height = 21
            EditLabel.Width = 56
            EditLabel.Height = 13
            EditLabel.Caption = 'Nr do Caixa'
            ReadOnly = True
            TabOrder = 10
          end
        end
        object tabEmit: TTabSheet
          Caption = 'Emissor'
          ImageIndex = 1
          object edtEmitCNPJ: TLabeledEdit
            Left = 4
            Top = 24
            Width = 121
            Height = 21
            EditLabel.Width = 79
            EditLabel.Height = 13
            EditLabel.Caption = 'CNPJ do Emissor'
            ReadOnly = True
            TabOrder = 0
          end
          object edtEmitxNome: TLabeledEdit
            Left = 131
            Top = 24
            Width = 121
            Height = 21
            EditLabel.Width = 60
            EditLabel.Height = 13
            EditLabel.Caption = 'Raz'#227'o Social'
            ReadOnly = True
            TabOrder = 1
          end
          object edtEmitxLgr: TLabeledEdit
            Left = 258
            Top = 24
            Width = 121
            Height = 21
            EditLabel.Width = 45
            EditLabel.Height = 13
            EditLabel.Caption = 'Endere'#231'o'
            ReadOnly = True
            TabOrder = 2
          end
          object edtEmitnro: TLabeledEdit
            Left = 385
            Top = 24
            Width = 121
            Height = 21
            EditLabel.Width = 37
            EditLabel.Height = 13
            EditLabel.Caption = 'N'#250'mero'
            ReadOnly = True
            TabOrder = 3
          end
          object edtEmitxCpl: TLabeledEdit
            Left = 512
            Top = 24
            Width = 121
            Height = 21
            EditLabel.Width = 65
            EditLabel.Height = 13
            EditLabel.Caption = 'Complemento'
            ReadOnly = True
            TabOrder = 4
          end
          object edtEmitxBairro: TLabeledEdit
            Left = 3
            Top = 72
            Width = 121
            Height = 21
            EditLabel.Width = 28
            EditLabel.Height = 13
            EditLabel.Caption = 'Bairro'
            ReadOnly = True
            TabOrder = 5
          end
          object edtEmitxMun: TLabeledEdit
            Left = 130
            Top = 72
            Width = 121
            Height = 21
            EditLabel.Width = 43
            EditLabel.Height = 13
            EditLabel.Caption = 'Munic'#237'pio'
            ReadOnly = True
            TabOrder = 6
          end
          object edtEmitCEP: TLabeledEdit
            Left = 257
            Top = 72
            Width = 121
            Height = 21
            EditLabel.Width = 19
            EditLabel.Height = 13
            EditLabel.Caption = 'CEP'
            ReadOnly = True
            TabOrder = 7
          end
          object edtemitIE: TLabeledEdit
            Left = 384
            Top = 72
            Width = 121
            Height = 21
            EditLabel.Width = 87
            EditLabel.Height = 13
            EditLabel.Caption = 'Inscri'#231#227'o Estadual'
            ReadOnly = True
            TabOrder = 8
          end
          object edtEmitCRegTrib: TLabeledEdit
            Left = 3
            Top = 120
            Width = 121
            Height = 21
            EditLabel.Width = 84
            EditLabel.Height = 13
            EditLabel.Caption = 'Regime Tribut'#225'rio'
            ReadOnly = True
            TabOrder = 10
          end
          object edtEmitindRatISSQN: TLabeledEdit
            Left = 257
            Top = 120
            Width = 121
            Height = 21
            EditLabel.Width = 80
            EditLabel.Height = 13
            EditLabel.Caption = 'Rateio de ISSQN'
            ReadOnly = True
            TabOrder = 12
          end
          object edtEmitIM: TLabeledEdit
            Left = 511
            Top = 72
            Width = 121
            Height = 21
            EditLabel.Width = 89
            EditLabel.Height = 13
            EditLabel.Caption = 'Inscri'#231#227'o Municipal'
            TabOrder = 9
          end
          object edtEmitRegTribISS: TLabeledEdit
            Left = 130
            Top = 120
            Width = 121
            Height = 21
            EditLabel.Width = 103
            EditLabel.Height = 13
            EditLabel.Caption = 'Regime Tribut'#225'rio ISS'
            TabOrder = 11
          end
        end
        object tabDest: TTabSheet
          Caption = 'Destinat'#225'rio'
          ImageIndex = 2
          object edtDestNome: TLabeledEdit
            Left = 3
            Top = 24
            Width = 241
            Height = 21
            EditLabel.Width = 27
            EditLabel.Height = 13
            EditLabel.Caption = 'Nome'
            ReadOnly = True
            TabOrder = 0
          end
          object edtDestCPFCNPJ: TLabeledEdit
            Left = 250
            Top = 24
            Width = 121
            Height = 21
            EditLabel.Width = 48
            EditLabel.Height = 13
            EditLabel.Caption = 'CPF/CNPJ'
            ReadOnly = True
            TabOrder = 1
          end
        end
        object tabEntrega: TTabSheet
          Caption = 'Entrega'
          ImageIndex = 7
          object edtEntregaxLgr: TLabeledEdit
            Left = 3
            Top = 24
            Width = 409
            Height = 21
            EditLabel.Width = 45
            EditLabel.Height = 13
            EditLabel.Caption = 'Endere'#231'o'
            TabOrder = 0
          end
          object edtEntreganro: TLabeledEdit
            Left = 418
            Top = 24
            Width = 87
            Height = 21
            EditLabel.Width = 37
            EditLabel.Height = 13
            EditLabel.Caption = 'N'#250'mero'
            TabOrder = 1
          end
          object edtEntregaxCpl: TLabeledEdit
            Left = 511
            Top = 24
            Width = 130
            Height = 21
            EditLabel.Width = 65
            EditLabel.Height = 13
            EditLabel.Caption = 'Complemento'
            TabOrder = 2
          end
          object edtEntregaxBairro: TLabeledEdit
            Left = 3
            Top = 64
            Width = 121
            Height = 21
            EditLabel.Width = 28
            EditLabel.Height = 13
            EditLabel.Caption = 'Bairro'
            TabOrder = 3
          end
          object edtEntregaxMun: TLabeledEdit
            Left = 130
            Top = 64
            Width = 121
            Height = 21
            EditLabel.Width = 43
            EditLabel.Height = 13
            EditLabel.Caption = 'Munic'#237'pio'
            TabOrder = 4
          end
          object edtEntregaUF: TLabeledEdit
            Left = 257
            Top = 64
            Width = 32
            Height = 21
            EditLabel.Width = 13
            EditLabel.Height = 13
            EditLabel.Caption = 'UF'
            TabOrder = 5
          end
        end
        object tabDet: TTabSheet
          Caption = 'Produtos'
          ImageIndex = 3
          object lblQtdProd: TLabel
            Left = 0
            Top = 273
            Width = 659
            Height = 14
            Align = alBottom
            Caption = 'Qtd Produtos: 0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 100
          end
          object lvwProdutos: TListView
            Left = 0
            Top = 0
            Width = 659
            Height = 273
            Align = alClient
            Columns = <
              item
                Caption = 'Nr Item'
              end
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'EAN'
                Width = 100
              end
              item
                Caption = 'Descri'#231#227'o'
                Width = 150
              end
              item
                Caption = 'NCM'
                Width = 100
              end
              item
                Caption = 'CEST'
                Width = 100
              end
              item
                Caption = 'CFOP'
              end
              item
                Caption = 'Unidade'
              end
              item
                Caption = 'Quantidade'
              end
              item
                Caption = 'Unidade Com.'
              end
              item
                Caption = 'Pre'#231'o'
              end
              item
                Caption = 'Desconto'
              end
              item
                Caption = 'Outro'
              end
              item
                Caption = 'Pre'#231'o Item'
              end
              item
                Caption = 'Rat. Desc'
              end
              item
                Caption = 'Rat. Acr'
              end
              item
                Caption = 'Inf. Adicional'
                Width = 200
              end>
            GridLines = True
            ReadOnly = True
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object tabTotais: TTabSheet
          Caption = 'Totais'
          ImageIndex = 4
          object GroupBox1: TGroupBox
            Left = 3
            Top = 3
            Width = 646
            Height = 105
            Caption = 'ICMS'
            TabOrder = 0
            object edtTotIcmsValor: TLabeledEdit
              Left = 11
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 52
              EditLabel.Height = 13
              EditLabel.Caption = 'Valor ICMS'
              ReadOnly = True
              TabOrder = 0
            end
            object edtTotIcmsProd: TLabeledEdit
              Left = 138
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 65
              EditLabel.Height = 13
              EditLabel.Caption = 'Valor Produto'
              ReadOnly = True
              TabOrder = 1
            end
            object edtTotIcmsDesc: TLabeledEdit
              Left = 265
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 45
              EditLabel.Height = 13
              EditLabel.Caption = 'Desconto'
              ReadOnly = True
              TabOrder = 2
            end
            object edtTotIcmsPIS: TLabeledEdit
              Left = 392
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 16
              EditLabel.Height = 13
              EditLabel.Caption = 'PIS'
              ReadOnly = True
              TabOrder = 3
            end
            object edtTotIcmsCOFINS: TLabeledEdit
              Left = 519
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 38
              EditLabel.Height = 13
              EditLabel.Caption = 'COFINS'
              ReadOnly = True
              TabOrder = 4
            end
            object edtTotICMSPISST: TLabeledEdit
              Left = 11
              Top = 72
              Width = 121
              Height = 21
              EditLabel.Width = 31
              EditLabel.Height = 13
              EditLabel.Caption = 'PIS ST'
              ReadOnly = True
              TabOrder = 5
            end
            object edtTotICMSCOFINSST: TLabeledEdit
              Left = 138
              Top = 72
              Width = 121
              Height = 21
              EditLabel.Width = 53
              EditLabel.Height = 13
              EditLabel.Caption = 'COFINS ST'
              ReadOnly = True
              TabOrder = 6
            end
            object edtTotICMSOutro: TLabeledEdit
              Left = 265
              Top = 72
              Width = 121
              Height = 21
              EditLabel.Width = 33
              EditLabel.Height = 13
              EditLabel.Caption = 'Outros'
              ReadOnly = True
              TabOrder = 7
            end
          end
          object GroupBox2: TGroupBox
            Left = 3
            Top = 114
            Width = 646
            Height = 104
            Caption = 'ISSQN'
            TabOrder = 1
            object edtTotISSQNvBC: TLabeledEdit
              Left = 11
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 19
              EditLabel.Height = 13
              EditLabel.Caption = 'vBC'
              ReadOnly = True
              TabOrder = 0
            end
            object edtTotISSQNISS: TLabeledEdit
              Left = 138
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 16
              EditLabel.Height = 13
              EditLabel.Caption = 'ISS'
              ReadOnly = True
              TabOrder = 1
            end
            object edtTotISSQNPIS: TLabeledEdit
              Left = 265
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 16
              EditLabel.Height = 13
              EditLabel.Caption = 'PIS'
              ReadOnly = True
              TabOrder = 2
            end
            object edtTotISSQNCOFINS: TLabeledEdit
              Left = 392
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 38
              EditLabel.Height = 13
              EditLabel.Caption = 'COFINS'
              ReadOnly = True
              TabOrder = 3
            end
            object edtTotISSQNPISST: TLabeledEdit
              Left = 519
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 31
              EditLabel.Height = 13
              EditLabel.Caption = 'PIS ST'
              ReadOnly = True
              TabOrder = 4
            end
            object edtTotISSQNCOFINSST: TLabeledEdit
              Left = 11
              Top = 72
              Width = 121
              Height = 21
              EditLabel.Width = 53
              EditLabel.Height = 13
              EditLabel.Caption = 'COFINS ST'
              ReadOnly = True
              TabOrder = 5
            end
          end
          object GroupBox3: TGroupBox
            Left = 3
            Top = 225
            Width = 646
            Height = 81
            Caption = 'Outros'
            TabOrder = 2
            object edtTotvCFe: TLabeledEdit
              Left = 11
              Top = 40
              Width = 121
              Height = 21
              EditLabel.Width = 46
              EditLabel.Height = 13
              EditLabel.Caption = 'Valor CFe'
              ReadOnly = True
              TabOrder = 0
            end
            object edtTotvDesc: TLabeledEdit
              Left = 138
              Top = 40
              Width = 121
              Height = 21
              EditLabel.Width = 45
              EditLabel.Height = 13
              EditLabel.Caption = 'Desconto'
              ReadOnly = True
              TabOrder = 1
            end
            object edtTotLei: TLabeledEdit
              Left = 392
              Top = 40
              Width = 121
              Height = 21
              EditLabel.Width = 106
              EditLabel.Height = 13
              EditLabel.Caption = 'Valor aprox. Impostos'
              ReadOnly = True
              TabOrder = 3
            end
            object edtTotvAcre: TLabeledEdit
              Left = 265
              Top = 40
              Width = 121
              Height = 21
              EditLabel.Width = 60
              EditLabel.Height = 13
              EditLabel.Caption = 'edtTotvAcre'
              TabOrder = 2
            end
          end
        end
        object tabPagamentos: TTabSheet
          Caption = 'Pagamentos'
          ImageIndex = 5
          object lblPgtoTroco: TLabel
            Left = 0
            Top = 271
            Width = 659
            Height = 16
            Align = alBottom
            Caption = 'Troco: R$0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 90
          end
          object lblPgtoTotal: TLabel
            Left = 0
            Top = 255
            Width = 659
            Height = 16
            Align = alBottom
            Caption = 'Total : R$0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 90
          end
          object lvwPagamentos: TListView
            Left = 0
            Top = 0
            Width = 659
            Height = 255
            Align = alClient
            Columns = <
              item
                Caption = 'Tipo'
                Width = 150
              end
              item
                Caption = 'Valor'
                Width = 100
              end
              item
                Caption = 'C'#243'd. Administradora'
                Width = 150
              end>
            GridLines = True
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object tabOBSFisco: TTabSheet
          Caption = 'OBS Fisco'
          ImageIndex = 8
          object lvwOBSFisco: TListView
            Left = 0
            Top = 0
            Width = 659
            Height = 287
            Align = alClient
            Columns = <
              item
                AutoSize = True
                Caption = 'Campo'
              end
              item
                AutoSize = True
                Caption = 'Texto'
              end>
            GridLines = True
            ReadOnly = True
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object tabInfCpl: TTabSheet
          Caption = 'Informa'#231#245'es Adicionais'
          ImageIndex = 6
          object memInfCpl: TMemo
            Left = 0
            Top = 0
            Width = 659
            Height = 287
            Align = alClient
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object tbrDetalhes: TToolBar
        Left = 0
        Top = 16
        Width = 667
        Height = 41
        ButtonHeight = 36
        ButtonWidth = 84
        Caption = 'tbrDetalhes'
        Images = ImageList1
        ShowCaptions = True
        TabOrder = 1
        object tbExtrato: TToolButton
          Left = 0
          Top = 0
          Caption = 'Imprimir Extrato'
          ImageIndex = 1
          OnClick = tbExtratoClick
        end
      end
    end
    object tabSobre: TTabSheet
      Caption = 'Sobre'
      ImageIndex = 3
      object GroupSobre: TGroupBox
        Left = 8
        Top = 16
        Width = 401
        Height = 105
        TabOrder = 0
        object Image1: TImage
          Left = 8
          Top = 27
          Width = 53
          Height = 54
          Picture.Data = {
            055449636F6E0000010001003030000001002000A82500001600000028000000
            3000000060000000010020000000000000000000000000000000000000000000
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
            00000000FFFFFF00FFFFFF000000000B000000220000002D0000002D0000002D
            0000002D0000002D0000002D0000002D0000002D0000002D0000002D0000002D
            0000002D0000002D0000002D0000002D0000002D0000002D0000002D0000002D
            0000002D0000002D0000002D0000002C000000200000000BFFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF005A6D749C637880F2637880F2637880F2637880F2
            637880F2637880F2637880F2637880F2637880F2637880F2637880F2637880F2
            637880F2637880F2637880F2637880F2637880F2637880F2637880F2637880F2
            637880F2637880F2637880F2637880F260757CEA596B728FFFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2C4D6DAFFB0C8CEFFB0C8CEFFB0C8CEFF
            B0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFF
            B0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFF
            B0C8CEFFB0C8CEFFB0C8CEFFB1C9CFFFC1D2D7FE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2C5D7DBFFB1C9CFFFB1C9CFFFB1C9CFFF
            B1C9CFFFB1C9CFFFB1C9CFFFB1C9CFFFB1C9CFFFB1C9CFFFB1C9CFFFB1C9CFFF
            B1C9CFFFB1C9CFFFB1C9CFFFB1C9CFFFB1C9CFFFB1C9CFFFB1C9CFFFB1C9CFFF
            B1C9CFFFB1C9CFFFB1C9CFFFB2CAD0FFC2D3D7FE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2C5D7DBFFB2CACFFFB2CACFFF535E5DFF
            535E5DFF535E5DFF535E5DFF535E5DFFB2CACFFFB2CACFFFB2CACFFF535E5DFF
            535E5DFFB2CACFFFB2CACFFFB2CACFFFB2CACFFFA5BCC0FF596565FFB2CACFFF
            B2CACFFFB2CACFFFB2CACFFFB3CBD0FFC2D4D7FE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2C6D8DCFFB3CBD0FFB3CBD0FFB3CBD0FF
            B3CBD0FFB3CBD0FFB3CBD0FFB3CBD0FFB3CBD0FFB3CBD0FFB3CBD0FFB3CBD0FF
            B3CBD0FFB3CBD0FFB3CBD0FFB3CBD0FF99AEB1FF606D6CFF535E5DFF535E5DFF
            809193FFB3CBD0FFB3CBD0FFB4CCD1FFC2D4D8FE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2C8D9DDFFB5CCD1FFB5CCD1FF535E5DFF
            535E5DFF535E5DFF535E5DFF535E5DFFB5CCD1FFB5CCD1FFB5CCD1FF535E5DFF
            535E5DFFB5CCD1FFB5CCD1FFB5CCD1FF7A8A8BFF87999BFFB5CCD1FFA8BDC2FF
            5A6565FF8EA0A3FFB5CCD1FFB6CDD2FFC4D5D9FE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2C8DADDFFB6CDD2FFB6CDD2FFB6CDD2FF
            B6CDD2FFB6CDD2FFB6CDD2FFB6CDD2FFB6CDD2FFB6CDD2FFB6CDD2FFB6CDD2FF
            B6CDD2FFB6CDD2FFB6CDD2FFB6CDD2FFB6CDD2FFB6CDD2FFB6CDD2FFB6CDD2FF
            677474FF88999BFFB6CDD2FFB7CED3FFC4D6DAFE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2CADADFFFB8CED4FFB8CED4FF535E5DFF
            535E5DFF535E5DFF535E5DFF535E5DFFB8CED4FFB8CED4FFB8CED4FF535E5DFF
            535E5DFFB8CED4FFB8CED4FFB8CED4FFB8CED4FFB8CED4FF90A1A4FF6E7C7DFF
            5A6565FFA4B8BCFFB8CED4FFB9CFD5FFC6D7DBFE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2CBDCE0FFBAD0D5FFBAD0D5FFBAD0D5FF
            BAD0D5FFBAD0D5FFBAD0D5FFBAD0D5FFBAD0D5FFBAD0D5FFBAD0D5FFBAD0D5FF
            BAD0D5FFBAD0D5FFBAD0D5FFBAD0D5FFB3C8CDFF687575FF5A6665FF7C8C8DFF
            B3C8CDFFBAD0D5FFBAD0D5FFBBD1D6FFC7D7DCFE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2CDDDE0FFBCD1D6FFBCD1D6FF535E5DFF
            535E5DFF535E5DFF535E5DFF535E5DFFBCD1D6FFBCD1D6FFBCD1D6FF535E5DFF
            535E5DFFBCD1D6FFBCD1D6FFBCD1D6FF92A3A6FF5A6665FFB5C9CEFFBCD1D6FF
            BCD1D6FFBCD1D6FFBCD1D6FFBDD2D7FFC9D8DCFE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2CEDEE1FFBDD3D7FFBDD3D7FFBDD3D7FF
            BDD3D7FFBDD3D7FFBDD3D7FFBDD3D7FFBDD3D7FFBDD3D7FFBDD3D7FFBDD3D7FF
            BDD3D7FFBDD3D7FFBDD3D7FFBDD3D7FF9AACAEFF5A6665FFB6CBCFFFBDD3D7FF
            BDD3D7FFBDD3D7FFBDD3D7FFBED4D8FFC9D9DDFE62777FE6FFFFFF00FFFFFF00
            FFFFFF00000000000000000000000000A2A3A34E3A3D3DFA121515D42A2F3176
            414B4F1300000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2CFDFE3FFBFD4D9FFBFD4D9FF535E5DFF
            535E5DFF535E5DFF535E5DFF4B5355FFA8BBBFFFBFD4D9FFBFD4D9FF535E5DFF
            535E5DFFBFD4D9FFBFD4D9FFBFD4D9FFBFD4D9FF707D7EFF535E5DFF535E5DFF
            5A6665FFB8CCD1FFBFD4D9FFC0D5DAFFCBDADFFE62777FE6FFFFFF00FFFFFF00
            FFFFFF00000000000000000000000000D5D5D537CFCECEFFB7B7B7FF5E5F5FFF
            131516FF000101998C8A8A090000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2D1E0E3FFC2D6DAFFC2D6DAFFC2D6DAFF
            C2D6DAFFC2D5D7FF949A69FF151600FF8A999CFFC2D6DAFFC2D6DAFFC2D6DAFF
            C2D6DAFFC2D6DAFFC2D6DAFFC2D6DAFFC2D6DAFFC2D6DAFFACBEC1FF697676FF
            C2D6DAFFC2D6DAFFC2D6DAFFC3D7DBFFCDDBDFFE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000BFBFBF4BCCCBCBFFEEEDEDFF
            CCCCCCFF505050FF060505F3272E2E4500000000000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2D3E1E5FFC4D7DCFFC4D7DCFFC4D7DCFF
            C6D7DAFF7D8041FF8A8A00FF242401FF909EA2FFC4D7DCFFC4D7DCFFC4D7DCFF
            C4D7DCFFC4D7DCFFC4D7DCFFC4D7DCFFC4D7DCFFC4D7DCFFC4D7DCFFC4D7DCFF
            C4D7DCFFC4D7DCFFC4D7DCFFC5D8DDFFCEDCE0FE62777FE6FFFFFF00FFFFFF00
            FFFFFF000000000000000000000000000000000000000000B9B9B972B6B7B7FF
            CDCCCCFFF1EFEFFFA1A2A2FF000000FF0E121291000000000000000000000000
            00000000FFFFFF00FFFFFF00637880F2D4E3E6FFC6D9DDFFC6D9DDFFC6D9DDFF
            A0A783FF707000FF919100FF202001FF92A0A3FFC6D9DDFFC6D9DDFFC6D9DDFF
            C6D9DDFFC6D9DDFFC6D9DDFFC6D9DDFFC6D9DDFFC6D9DDFFC6D9DDFFC6D9DDFF
            C6D9DDFFC6D9DDFFC6D9DDFFC7DADEFFD0DEE0FE62777FE6FFFFFF00FFFFFF00
            FFFFFF00000000000000000000000000000000000000000000000000B6B6B68D
            BEBEBEFFBEBEBEFFE0DFDFFFD7D7D7FF2B2B2BFF000000C86D6A6A0900000000
            00000000FFFFFF00FFFFFF00637880F2D6E4E7FFC8DBDFFFC8DBDFFF747963FF
            6F6F00FF838300FF8F8F00FF202001FF3B4343FF535E5DFF535E5DFF535E5DFF
            535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF
            535E5DFF535E5DFFC8DBDFFFC9DCE0FFD1DFE2FE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            BABABAB7BEBEBEFFBDBEBEFFCFCFCFFFEAE9E9FF5C5F5FFF000000F134373732
            00000000FFFFFF00FFFFFF00637880F2D7E5E8FFCADCE0FFCADCE0FFA7AF90FF
            737300FF818100FF8F8F00FF202001FF95A2A5FFCADCE0FFCADCE0FFCADCE0FF
            CADCE0FFCADCE0FFCADCE0FFCADCE0FFCADCE0FFCADCE0FFCADCE0FFCADCE0FF
            CADCE0FFCADCE0FFCADCE0FFCBDDE0FFD3E0E3FE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            00000000B9B9B9D2C0C0C0FFBEBEBEFFC5C5C5FFEFEFEFFF8D9090FF060707FF
            0206067EFFFFFF00FFFFFF00637880F2D9E6E9FFCCDEE2FFCCDCDDFF7B7B02FF
            7E7E00FF818100FF8F8F00FF202001FF3B4343FF535E5DFF535E5DFF535E5DFF
            535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF
            535E5DFF535E5DFFCCDEE2FFCDDFE2FFD3E1E4FE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            00000000C5C5C516B7B7B7F0C1C1C1FFBFBFBFFFBFBEBEFFE4E3E3FFC8C9C9FF
            363838FF000000DA4C4E4E42637880F2DAE8EAFFCEE0E3FFC5CEB2FF6F6F00FF
            818100FF818100FF8F8F00FF202001FF98A5A8FFCEE0E3FFCEE0E3FFCEE0E3FF
            CEE0E3FFCEE0E3FFCEE0E3FFCEE0E3FFCEE0E3FFCEE0E3FFCEE0E3FFCEE0E3FF
            CEE0E3FFCEE0E3FFCEE0E3FFCFE0E3FFD5E3E5FE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000C4C4C433BDBDBDEFBEBEBEFFC1C1C1FFBDBDBDFFD0CFCFFF
            ECECEDFF929293FF343535FF282C2CFE90999CFFC2D1D5FFA3A550FF7D7D00FF
            808000FF818100FF8F8F00FF202001FF99A6A9FFD0E1E5FFD0E1E5FFD0E1E5FF
            D0E1E5FFD0E1E5FFD0E1E5FFD0E1E5FFD0E1E5FFD0E1E5FFD0E1E5FFD0E1E5FF
            D0E1E5FFD0E1E5FFD0E1E5FFD1E1E5FFD6E3E6FE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000BFBFC45BC2C2CAE5C8C8C7FFC2C3C2FF
            BFBFBFFFDCDCDCFFFAFAF7FFB5B6C1FDCBD6D9FF959D86FF7D7D00FF828200FF
            808000FF818100FF8F8F00FF202001FF9BA7AAFFD3E3E6FFD3E3E6FFD3E3E6FF
            D3E3E6FFD3E3E6FFD3E3E6FFD3E3E6FFD3E3E6FFD2E2E5FFD1E2E4FFCFE1E3FF
            CEE0E2FFCCDEE0FFC9DCDEFFC7DADCFFCCDCDEFE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000B7B8CB07C3C3CE49
            D3D3DD73CDCDE0778A89AB2B637880F2C8D0BCFF818000FF7D7D00FF808000FF
            808000FF818100FF8F8F00FF202001FF3B4343FF535E5DFF535E5DFF535E5DFF
            535E5DFF535E5DFF535E5DFFD4E4E8FFD2E2E6FFCCDFE1FFC6DADBFFBED5D6FF
            B9CFD1FFB4CCCDFFB1C8CAFFAEC6C7FFB4C7CAFE62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000D1D1B90295973D6B494C244128271F0C
            56554B156D6F482A2D2F0062575C23FE868600FF818100FF808000FF808000FF
            808000FF818100FF8F8F00FF202001FF9EAAACFFD6E6E9FFD6E6E9FFD6E6E9FF
            D6E6E9FFD6E6E9FFD6E6E9FFD5E6E8FFD0E2E5FFC3DADBFFB2CCCBFF9FBABBFF
            92AAACFF88A5A6FF89A2A6FF809D9EFF849CA0FF62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000099994784616100FF646400FF
            5B5B00FF6C6C00FF939200FF8D8C00FF7D7D00FF808000FF808000FF808000FF
            808000FF818100FF8F8F00FF202001FF3B4343FF535E5DFF535E5DFF535E5DFF
            535E5DFF535E5DFF535E5DFFD8E7EAFFD3E4E6FFC2D7D9FFA5C0C1FFA3B8BAFF
            88A1A3FF8699A0FF85989FFF8797A4FF8A9F9DFF62777FE6FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000009C9B4C96757500FF
            8B8B00FF828200FF7F7F00FF808000FF808000FF808000FF808000FF808000FF
            808000FF818100FF8F8F00FF202001FFA1ACAEFFDAE9EBFFDAE9EBFFDAE9EBFF
            DAE9EBFFDAE9EBFFDAE9EBFFDAE9EBFFD6E6E8FFC2D8D9FF9DBBBCFFFDFEFEFF
            D7E4E6FFDDE9EBFFE0E9ECFFE3EAE7FF95AEA5FF62777FCCFFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000000848425C1
            717100FF828200FF808000FF808000FF808000FF808000FF808000FF808000FF
            808000FF818100FF8F8F00FF202001FF3B4343FF535E5DFF535E5DFF535E5DFF
            535E5DFFDCEAEDFFDCEAEDFFDCEAEDFFD7E7E9FFC0D8D8FF9FBBBBFFE6EBECFF
            DFE9E9FFE6EBEEFFE3E8EBFF94AFA1FF678E8EF662777F67FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000000DBDBD20D
            737300EE7A7A00FF818100FF808000FF808000FF808000FF808000FF808000FF
            808000FF818100FF8F8F00FF202001FFA3ADB0FFDDEBEEFFDDEBEEFFDDEBEEFF
            DDEBEEFFDDEBEEFFDDEBEEFFDDEBEEFFD6E6E9FFBFD5D6FF9ABAB6FFDEE5E8FF
            E3EAEDFFEAEEEFFF96AEA2FF678E8FF662777F6A00000000FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            BBBB90316D6D00FF7F7F00FF808000FF808000FF808000FF808000FF808000FF
            808000FF818100FF8F8F00FF202001FFA4AEB1FFDFECEFFFDFECEFFFDFECEFFF
            DFECEFFFDFECEFFFDFECEFFFDEECEEFFD4E5E7FFBCD5D3FF9BB8B7FFDDE7E7FF
            EBEEF2FFA7BEB6FF6D8D8EF662777F6AFFFFFF0000000000FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000A2A26C646B6B00FF818100FF808000FF808000FF808000FF808000FF
            808000FF818100FF8F8F00FF202001FFABB3B4FFE8F2F4FFE8F2F4FFE8F2F4FF
            E8F2F4FFE8F2F4FFE8F2F4FFE6F1F2FFDCEBEAFFC8E0D9FFBBCFCDFFF8FAFAFF
            A9BEB6FF6B8C8DF662777F6AFFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00959546936F6F00FF828200FF808000FF808000FF808000FF
            808000FF818100FF8F8F00FF202001FFB6B9BAFFF7FBFBFFF7FBFBFFF7FBFBFF
            F7FBFBFFF7FBFBFFF6FBFBFFF3F9F7FFE9F3EFFFD9E3E1FFB9CDC5FFBFCDC9FF
            698D8EF662777F6AFFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFF00FFFFFF007C7E38E7727200FF828200FF808000FF808000FF
            808000FF818100FF8F8F00FF202001FF46565CF8637880F2637880F2637880F2
            637880F2637880F2637880F2637880F2637880F2637880F2637880F2637880CD
            637880690000000000000000000000000000000000000000FFFFFF00FFFFFF00
            FFFFFF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000CFCFBB1A757502F4797900FF818100FF808000FF
            808000FF818100FF8F8F00FF202001FF00000A7E000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000B5B58A43686800FF7F7F00FF808000FF
            808000FF818100FF8F8F00FF202001FF00000A7E000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000A9A96B77696900FF828200FF
            808000FF818100FF8F8F00FF202001FF00000A7E000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000008C8C39A06D6D00FF
            838300FF818100FF8F8F00FF202001FF00000A7E000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000007E7E1CCF
            727200FF838300FF8F8F00FF202001FF00000A7E000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000000D3D3BA1B
            727200F47A7A00FF909000FF202001FF00000A7E000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            B9B98A486C6C00FF8F8F00FF202001FF0000087E000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000009C9C56757C7C00FF202001FF00000380000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000009C9C2FB346450ECE4146504A000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000DADBC618ADAC6F20B8B59A02000000000000000000000000
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
            00000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFC000
            00070000FFFFC00000070000FFFFC00000070000FFFFC00000070000FFFFC000
            00070000FFFFC00000070000FFFFC00000070000FFFFC00000070000FFFFC000
            00070000FFFFC00000070000FFFFC00000070000FFFFC00000070000E0FFC000
            00070000E03FC00000070000F01FC00000070000F80FC00000070000FC03C000
            00070000FE01C00000070000FF00C00000070000FF00000000070000FF800000
            00070000FFE0000000070000FFF8000000070000FFE0000000070000FFF00000
            00070000FFF8000000070000FFFC000000070000FFFC0000000F0000FFFE0000
            001F0000FFFF0000003F0000FFFF8000007F0000FFFFC00000FF0000FFFFC00F
            FFFF0000FFFFE00FFFFF0000FFFFF00FFFFF0000FFFFF80FFFFF0000FFFFFC0F
            FFFF0000FFFFFC0FFFFF0000FFFFFE0FFFFF0000FFFFFF0FFFFF0000FFFFFF8F
            FFFF0000FFFFFF8FFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF
            FFFF0000}
        end
        object Label4: TLabel
          Left = 67
          Top = 11
          Width = 101
          Height = 23
          Caption = 'CFeViewer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVersion: TLabel
          Left = 67
          Top = 40
          Width = 72
          Height = 13
          Caption = 'Vers'#227'o 1.0.0.3'
        end
        object Label6: TLabel
          Left = 67
          Top = 59
          Width = 268
          Height = 13
          Caption = 'por Rodrigo Peetz(rdxdt) - Todos os direitos reservados'
        end
        object LinkLabel1: TLinkLabel
          Left = 67
          Top = 78
          Width = 124
          Height = 17
          Caption = 'https://github.com/rdxdt'
          TabOrder = 0
          OnClick = LinkLabel1Click
        end
      end
    end
  end
  object ImageList1: TImageList
    Left = 20
    Top = 190
    Bitmap = {
      494C010105000800580010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000009595
      84F2959584F2959584F2959584F2959584F2959584F2959584F2959584F29595
      84F2959584F2959584F2959584F2C1C1B78E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E9E9
      DBFFE9E9DBFFE9E9DBFFE9E9DBFFE9E9DBFFE9E9DBFFE9E9DBFFE9E9DBFFE9E9
      DBFFE9E9DBFFE9E9DBFFE9E9DBFF979786F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000479C91FF378E7EFF358C7CFF368D
      7DFF388F80FF42998AFF388F7FFF358C7CFF368D7DFF368D7DFF1D8C5FFFEAEA
      DCFFE9E8DCFFEAEADCFFEAEADCFF999988F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000070C7B7FF63BDA7FF5CB6A0FF7DD6
      C0FF1D7661FF7BD4BEFF207A64FF7CD5C0FF6EC8B2FF71CBB5FF248F65FFEBEB
      DEFFEBEBDEFFEBEBDEFFEBEBDEFF9C9C8BF20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081D8C8FF5BB49EFF348D78FF7DD7
      C1FF1D7660FF6EC8B2FF1D7761FF68C2ACFF358E79FF79D3BDFF2D936BFFECEC
      E0FFB3B3A3FFECECE0FFECECE0FF9F9F8FF20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006DC3B3FF79D3BDFF70C9B4FF7AD3
      BEFF1F7963FF7CD5C0FF37907BFF60BAA4FF6AC3AEFF69C3ADFF359770FFEEEE
      E2FFEEEEE2FFEEEEE2FFEEEEE2FFA1A191F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000449A8BFF51AB95FF66BFAAFF54AE
      98FF73CCB7FF6BC4AFFF66BFAAFF55AE99FF55AE99FF78D1BCFF3C9A76FFEFEF
      E4FFEFEFE4FFEFEFE4FFEFEFE4FFA5A595F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000419C79FF419C79FF419C79FF419C
      79FF419C79FF419C79FF419C79FF419C79FF419C79FF419C79FF80B59CFFAFAF
      9FFFBFBFAAFFF1F1E7FFF1F1E7FFA9A999F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      E9FFE6E6DBFFE9E9DEFFF2F2E9FFF2F2E9FFF2F2E9FFF2F2E9FFF2F2E9FFE5E5
      D9FFE5E5D9FFF2F2E9FFF2F2E9FFADAD9DF20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F4
      ECFFF4F4ECFFF4F4ECFFF4F4ECFFF4F4ECFFF4F4ECFFF4F4ECFFF4F4ECFFF4F4
      ECFFF4F4ECFFF4F4ECFFF4F4ECFFB0B0A1F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F5
      EEFFF5F5EEFFF5F5EEFFF5F5EEFFF5F5EEFFF5F5EEFFF5F5EEFFF5F5EEFFF5F5
      EEFFF5F5EEFFF5F5EEFFF5F5EEFFB4B4A4F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F0FFF7F7F0FFF7F7F0FFF7F7F0FFF7F7F0FFF7F7F0FFF7F7F0FFF7F7F0FFDCDC
      D6FFD2D2CDFFD2D2CDFFD5D5D0FFB4B4A5F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F2FFF8F8F2FFF8F8F2FFF8F8F2FFF8F8F2FFF8F8F2FFF8F8F2FFF8F8F2FFB9B9
      ACFFF2F2F0FFE7E7E3FFDCDCD5FFFAFAFA060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F4FFB3B3A5FFB5B5A8FFB0B0A3FFEAEAE2FFF9F9F4FFF9F9F4FFF9F9F4FFB2B2
      A7FFE6E6E2FFDBDBD5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      F6FFFAFAF6FFFAFAF6FFFAFAF6FFFAFAF6FFFAFAF6FFFAFAF6FFFAFAF6FFAAAA
      A0FFD9D9D2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      F7FFFBFBF7FFFBFBF7FFFBFBF7FFFBFBF7FFFBFBF7FFFBFBF7FFFBFBF7FFA0A0
      99FFFCFCFC040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDDDD22D2D2D22DD2D2
      D22DD2D2D22DD2D2D22DD2D2D22DD2D2D22DD2D2D22DD2D2D22DD2D2D22DD2D2
      D22DD2D2D22DDFDFDF2000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4D6DAFFB0C8CEFFB0C8
      CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8CEFFB0C8
      CEFFB0C8CEFFC1D2D7FE00000000000000000000000000000000E2BA9CF2E2BA
      9CF2E2BA9CF2E2BA9CF2E2BA9CF2E2BA9CF2E2BA9CF2E2BA9CF2E2BA9CF2E2BA
      9CF2E2BA9CF2E2BA9CF2E0C8B69C00000000000000006CCEED9300AEE9FF00AE
      E9FF00AEE9FF00AEE9FF00AEE9FF00AEE9FF00AEE9FF00AEE9FF00AEE9FF00AE
      E9FF00AEE9FF00AEE9FF00000000000000000000000000000000000000000000
      0000E9E1D7FFE7DFD5FFE2DAD0FFDBD4CAFFDAD2C9FFCAC3BAFF000000000000
      00000000000000000000000000000000000000000000C5D7DBFFB2CACFFF535E
      5DFF535E5DFFB2CACFFFB2CACFFF535E5DFFB2CACFFFB2CACFFF596565FFB2CA
      CFFFB2CACFFFC2D4D7FE00000000000000000000000000000000FBEACFFFF9E5
      C5FFF9E5C5FFF9E5C5FFF9E5C5FFF9E5C5FFF9E5C5FFF9E5C5FFF9E5C5FFF9E5
      C5FFF9E5C5FFF9E5C5FFE3BB9EF2000000000000000000A5D7FF00A5D7FF0CB3
      ECFF0CB3ECFF0CB3ECFF0CB3ECFF0CB3ECFF0CB3ECFF0CB3ECFF0CB3ECFF0CB3
      ECFF0CB3ECFF0CB3ECFF00000000000000000000000000000000000000000000
      0000EBE4DBFFEBE4DBFFEAE3DAFFE5DED5FFDDD7CEFFEBE5DCFFD9D3CAFF0000
      00000000000000000000000000000000000000000000C8D9DDFFB5CCD1FF535E
      5DFF535E5DFFB5CCD1FFB5CCD1FF535E5DFFB5CCD1FF7A8A8BFFB5CCD1FF5A65
      65FFB5CCD1FFC4D5D9FE00000000000000000000000000000000FBEAD0FFF3D7
      B3FF8C8886FFF3D7B3FFF3D7B3FF858283FF858283FF858283FF858283FF8582
      83FF858283FFF9E5C6FFE3BD9FF2000000000000000003B0EAFF02A6D8FF1DBB
      F2FF1DBBF2FF1DBBF2FF1DBBF2FF1DBBF2FF1DBBF2FF1DBBF2FF1DBBF2FF1DBB
      F2FF1DBBF2FF1DBBF2FF00000000000000000000000000000000000000000000
      0000EDE7DFFFEDE7DFFFEDE7DFFFECE6DEFFE7E2DAFFE0DAD3FFD8D2CBFF0000
      00000000000000000000000000000000000000000000CADADFFFB8CED4FF535E
      5DFF535E5DFFB8CED4FFB8CED4FF535E5DFFB8CED4FFB8CED4FF90A1A4FF5A65
      65FFB8CED4FFC6D7DBFE00000000000000000000000000000000FBEBD0FFB1A4
      97FFF4D8B4FF8C8886FFF4D8B4FF858283FF858283FF858283FF858283FF8582
      83FF858283FFF9E6C6FFE4BFA1F200000000000000000DB4EDFF09A9DAFF34C4
      F8FF34C4F8FF34C4F8FF34C4F8FF34C4F8FF34C4F8FF34C4F8FF34C4F8FF34C4
      F8FF34C4F8FF34C4F8FF000000000000000000000000AE8A58FFAE8A58FFAE8A
      58FFF0EBE3FFF0EBE3FFF0EBE3FFF0EBE3FFF0EBE3FFEAE5DEFFE4DFD7FFAE8A
      58FFAE8A58FFAE8A58FF000000000000000000000000CDDDE0FFBCD1D6FF535E
      5DFF535E5DFFBCD1D6FFBCD1D6FF535E5DFFBCD1D6FF92A3A6FFB5C9CEFFBCD1
      D6FFBCD1D6FFC9D8DCFE00000000000000000000000000000000FBEBD0FFF4D9
      B6FFC8B6A2FF8C8886FFF4D9B6FF858283FF858283FF858283FF858283FF8582
      83FF858283FFF9E6C7FFE6C1A3F200000000000000001AB9F1FF13ACDDFF4ACD
      FDFF4ACDFDFF4ACDFDFF4ACDFDFF4ACDFDFF4ACDFDFF4ACDFDFF4ACDFDFF4ACD
      FDFF4ACDFDFF4ACDFDFF000000000000000000000000AE8A58FFAE8A58FFAE8A
      58FFF3EEE8FFF3EEE8FFF3EEE8FFF3EEE8FFF3EEE8FFF3EEE8FFEEE9E3FFAE8A
      58FFAE8A58FFAE8A58FF000000000000000000000000CFDFE3FFBFD4D9FF535E
      5DFF535E5DFFBFD4D9FFBFD4D9FF535E5DFFBFD4D9FFBFD4D9FF535E5DFF5A66
      65FFBFD4D9FFCBDADFFE00000000000000000000000000000000FBEBD1FFC8B7
      A2FFEDD4B4FFF4DAB7FFF4DAB7FF858283FF858283FF858283FF858283FF8582
      83FF858283FFF9E6C8FFE7C4A6F200000000000000002AC0F5FF1DB1E0FF5CD3
      FFFF5CD3FFFF5CD3FFFF5CD3FFFF5CD3FFFF5CD3FFFF5CD3FFFF5CD3FFFF5CD3
      FFFF5CD3FFFF5CD3FFFF000000000000000000000000B78F58FFB78F58FFB78F
      58FFB78F58FFB78F58FFB78F58FFB78F58FFB78F58FFB78F58FFB78F58FFB78F
      58FFB78F58FFB78F58FF000000000000000000000000D3E1E5FFC4D7DCFFC4D7
      DCFFC4D7DCFFC4D7DCFFC4D7DCFFC4D7DCFFC4D7DCFFC4D7DCFFC4D7DCFFC4D7
      DCFFC4D7DCFFCEDCE0FE00000000000000000000000000000000FBEBD2FFF5DB
      B9FF858283FF8C8887FFF5DBB9FF858283FF858283FF858283FF858283FF8582
      83FF858283FFF9E6C9FFE8C6A9F200000000000000003AC7FAFF28B5E3FF6DD8
      FFFF6DD8FFFF6DD8FFFF6DD8FFFF6DD8FFFF6DD8FFFF6DD8FFFF6DD8FFFF6DD8
      FFFF6DD8FFFF6DD8FFFF000000000000000000000000C29D69FFC29D69FFC29D
      69FFC29D69FFC29D69FFC29D69FFC29D69FFC29D69FFC29D69FFC29D69FFC29D
      69FFF0E7D3FFC29D69FF000000000000000000000000D6E4E7FFC8DBDFFF535E
      5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E
      5DFFC8DBDFFFD1DFE2FE00000000000000000000000000000000FBEBD3FFF5DD
      BCFFF5DDBCFFF5DDBCFFF5DDBCFFF5DDBCFFF5DDBCFFF5DDBCFFF5DDBCFFF5DD
      BCFFF5DDBCFFF9E7CAFFE9C8ACF200000000000000004ACDFDFF33BAE5FF7DDD
      FFFF7DDDFFFF7DDDFFFF7DDDFFFF7DDDFFFF7DDDFFFF7DDDFFFF7DDDFFFF7DDD
      FFFF7DDDFFFF7DDDFFFF000000000000000000000000CEAD7FFFCEAD7FFFCEAD
      7FFFCEAD7FFFCEAD7FFFCEAD7FFFCEAD7FFFCEAD7FFFCEAD7FFFCEAD7FFFCEAD
      7FFFCEAD7FFFCEAD7FFF000000000000000000000000D9E6E9FFCCDEE2FF535E
      5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E
      5DFFCCDEE2FFD3E1E4FE00000000000000000000000000000000FBEBD3FFF6DE
      BDFFF6DEBDFFF6DEBDFFF6DEBDFFF6DEBDFFF6DEBDFFF6DEBDFFF6DEBDFFF6DE
      BDFFF6DEBDFFF9E7CAFFEBCBB0F2000000000000000058D2FFFF3DBDE7FF8CE0
      FFFF8CE0FFFF8CE0FFFF8CE0FFFF8CE0FFFF8CE0FFFF8CE0FFFF8CE0FFFF8CE0
      FFFF8CE0FFFF8CE0FFFF000000000000000000000000E0C9A6FFE0C9A6FFE0C9
      A6FFEEE8E0FFEEE8E0FFEEE8E0FFEEE8E0FFEEE8E0FFEEE8E0FFEEE8E0FFE0C9
      A6FFE0C9A6FFE0C9A6FF000000000000000000000000DCE9ECFFD0E1E5FFD0E1
      E5FFD0E1E5FFD0E1E5FFD0E1E5FFD0E1E5FFD0E1E5FFD0E1E5FFD0E1E5FFD0E1
      E5FFD0E1E5FFD6E3E6FE00000000000000000000000000000000FBECD3FFF6E0
      C0FFF6E0C0FFF6E0C0FFF6E0C0FFF6E0C0FFF6E0C0FFEFD2B1FFEDCEADFFECCD
      ACFFECCDACFFEFD4B4FFECCEB3F2000000000000000064D6FFFF64D6FFFF46C0
      E7FF46C0E7FF46C0E7FF46C0E7FF46C0E7FF46C0E7FF46C0E7FF46C0E7FF46C0
      E7FF46C0E7FF00000000000000000000000000000000D9BF9AFFD9BF9AFFD9BF
      9AFFF2EEE7FFF2EEE7FFF2EEE7FFF2EEE7FFF2EEE7FFF2EEE7FFF2EEE7FFD9BF
      9AFFD9BF9AFFD9BF9AFF000000000000000000000000E0EBEEFFD5E4E8FF535E
      5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFFD2E2E6FFC6DADBFFB9CF
      D1FFB1C8CAFFB4C7CAFE00000000000000000000000000000000FBECD4FFF7E2
      C3FFF7E2C3FFF7E2C3FFF7E2C3FFF7E2C3FFF7E2C3FFE5CBAEFFFFFCF7FFFFFB
      F4FFFDF7ECFFF9EAD1FFEFDBC4CB000000000000000070D9FFFF70D9FFFF70D9
      FFFF70D9FFFF70D9FFFF70D9FFFF70D9FFFF70D9FFFF70D9FFFF70D9FFFF70D9
      FFFF93E2FFC00000000000000000000000000000000000000000000000000000
      0000F7F3EEFFF7F3EEFFF7F3EEFFF7F3EEFFF7F3EEFFF7F3EEFFF7F3EEFF0000
      00000000000000000000000000000000000000000000E2EDEFFFD8E7EAFF535E
      5DFF535E5DFF535E5DFF535E5DFF535E5DFF535E5DFFD3E4E6FFA5C0C1FF88A1
      A3FF85989FFF8A9F9DFF00000000000000000000000000000000FBECD5FFF7E3
      C5FFF7E3C5FFF7E3C5FFF7E3C5FFF7E3C5FFF7E3C5FFE5CBAEFFFFFBF4FFFDF7
      ECFFFAEAD2FFF0D8BEF50000000000000000000000007CDCFFFF7CDCFFFF7CDC
      FFFF7CDCFFFF7CDCFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBF8F4FFFBF8F4FFFBF8F4FFFBF8F4FFFBF8F4FFFBF8F4FFFBF8F4FF0000
      00000000000000000000000000000000000000000000E5EFF2FFDCEAEDFF535E
      5DFF535E5DFF535E5DFF535E5DFF535E5DFFDCEAEDFFD7E7E9FF9FBBBBFFDFE9
      E9FFE3E8EBFF6C9191F600000000000000000000000000000000FBECD6FFF9E8
      CEFFF9E8CEFFF9E8CEFFF9E8CEFFF9E8CEFFF9E8CEFFE5CBAEFFFDF7ECFFFAEA
      D2FFF2D9BFF50000000000000000000000000000000087DFFFFF87DFFFFF87DF
      FFFF87DFFFFF87DFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFBF8FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFEFCF9FFFDFBF8FF0000
      00000000000000000000000000000000000000000000E7F1F3FFDFECEFFFDFEC
      EFFFDFECEFFFDFECEFFFDFECEFFFDFECEFFFDFECEFFFD4E5E7FF9BB8B7FFEBEE
      F2FF729191F60000000000000000000000000000000000000000FBEDD6FFF9E9
      CEFFF9E9CEFFF9E9CEFFF9E9CEFFF9E9CEFFF9E9CEFFE5CBAEFFFAEAD3FFF2DB
      C2F50000000000000000000000000000000000000000ACE9FFC091E2FFFF91E2
      FFFF91E2FFFFACE9FFC000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9FCFCFFF7FBFBFFF7FB
      FBFFF7FBFBFFF7FBFBFFF7FBFBFFF7FBFBFFF6FBFBFFE9F3EFFFB9CDC5FF6E91
      91F6000000000000000000000000000000000000000000000000FEF5E7FFFDF4
      E5FFFDF4E5FFFDF4E5FFFDF4E5FFFDF4E5FFFDF4E5FFE7CFB3FFF2DDC3F50000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00E000000000000000E000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E000000000000000E000000000000000
      E000000000000000E000000000000000E000000000000000E003000000000000
      E007000000000000E007000000000000FFFFFFFF8003FFFFFFFFFFFF8003C001
      8003F03F8003C0018003F01F8003C0018003F01F8003C001800380038003C001
      800380038003C001800380038003C001800380038003C001800380038003C001
      800380038003C001800780038003C0018007F01F8003C00383FFF01F8003C007
      83FFF01F8007C00F83FFFFFF800FC01F00000000000000000000000000000000
      000000000000}
  end
  object ACBrSAT1: TACBrSAT
    Extrato = ACBrSATExtratoFortes1
    Config.infCFe_versaoDadosEnt = 0.070000000000000010
    Config.ide_numeroCaixa = 0
    Config.ide_tpAmb = taHomologacao
    Config.emit_cRegTrib = RTSimplesNacional
    Config.emit_cRegTribISSQN = RTISSMicroempresaMunicipal
    Config.emit_indRatISSQN = irSim
    Config.EhUTF8 = False
    Config.PaginaDeCodigo = 0
    Config.XmlSignLib = xsNone
    ConfigArquivos.PrefixoArqCFe = 'AD'
    ConfigArquivos.PrefixoArqCFeCanc = 'ADC'
    Rede.tipoInter = infETHE
    Rede.seg = segNONE
    Rede.tipoLan = lanDHCP
    Rede.proxy = 0
    Rede.proxy_porta = 0
    Left = 468
    Top = 126
  end
  object ACBrSATExtratoFortes1: TACBrSATExtratoFortes
    Sistema = 'Planos Inform'#225'tica CFeViewer'
    Site = 'https://www.planosinformatica.com.br/'
    MargemInferior = 4.000000000000000000
    MargemSuperior = 2.000000000000000000
    MargemEsquerda = 2.000000000000000000
    MargemDireita = 2.000000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    ACBrSAT = ACBrSAT1
    Filtro = fiPDF
    MsgAppQRCode = 
      'Consulte o QR Code pelo aplicativo  "De olho na nota", dispon'#237've' +
      'l na AppStore (Apple) e PlayStore (Android)'
    FormularioContinuo = True
    Left = 556
    Top = 126
  end
  object dsListagem: TDataSource
    AutoEdit = False
    DataSet = cdsListagem
    Left = 92
    Top = 238
  end
  object sd1: TJvBrowseForFolderDialog
    Left = 476
    Top = 174
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 556
    Top = 286
  end
  object JvComputerInfoEx1: TJvComputerInfoEx
    Left = 556
    Top = 230
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 556
    Top = 174
  end
  object dsTotalDia: TDataSource
    DataSet = cdsTotalDia
    Left = 216
    Top = 240
  end
  object cdsTotalDiaICMS: TClientDataSet
    PersistDataPacket.Data = {
      CF0000009619E0BD010000001800000006000000000003000000CF0009446174
      61546F74616C0400060000000000095174644375706F6E730400010000000000
      05546F74616C080004000000010007535542545950450200490006004D6F6E65
      7900057649434D53080004000000010007535542545950450200490006004D6F
      6E657900077649434D5353540800040000000100075355425459504502004900
      06004D6F6E6579000C76504953434F46494E5353540800040000000100075355
      42545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 268
    Top = 238
    object cdsTotalDiaICMSDataTotal: TDateField
      FieldName = 'DataTotal'
    end
    object cdsTotalDiaICMSQtdCupons: TIntegerField
      FieldName = 'QtdCupons'
    end
    object cdsTotalDiaICMSTotal: TCurrencyField
      FieldName = 'Total'
    end
    object cdsTotalDiaICMSvICMS: TCurrencyField
      FieldName = 'vICMS'
    end
    object cdsTotalDiaICMSvICMSST: TCurrencyField
      FieldName = 'vICMSST'
    end
    object cdsTotalDiaICMSvPISCOFINSST: TCurrencyField
      FieldName = 'vPISCOFINSST'
    end
  end
  object dsTotalDiaICMS: TDataSource
    DataSet = cdsTotalDiaICMS
    Left = 348
    Top = 238
  end
  object cdsListagem: TClientDataSet
    PersistDataPacket.Data = {
      BA0100009619E0BD01000000180000000E000000000003000000BA010B446174
      61456D697373616F0400060000000000046E4346650400010000000000074E72
      43616978610400010000000000085174644974656E7304000100000000000554
      6F74616C080004000000010007535542545950450200490006004D6F6E657900
      074172717569766F020049000000010005574944544802000200FF000844696E
      686569726F080004000000010007535542545950450200490006004D6F6E6579
      0006436865717565080004000000010007535542545950450200490006004D6F
      6E6579000643617274616F080004000000010007535542545950450200490006
      004D6F6E657900065469636B6574080004000000010007535542545950450200
      490006004D6F6E657900064F7574726F73080004000000010007535542545950
      450200490006004D6F6E657900057649434D5308000400000001000753554254
      5950450200490006004D6F6E657900077649434D535354080004000000010007
      535542545950450200490006004D6F6E6579000C76506973436F66696E735354
      080004000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 28
    Top = 238
    object cdsListagemDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
    object cdsListagemnCFe: TIntegerField
      FieldName = 'nCFe'
    end
    object cdsListagemNrCaixa: TIntegerField
      FieldName = 'NrCaixa'
    end
    object cdsListagemQtdItens: TIntegerField
      FieldName = 'QtdItens'
    end
    object cdsListagemTotal: TCurrencyField
      FieldName = 'Total'
    end
    object cdsListagemArquivo: TStringField
      FieldName = 'Arquivo'
      Size = 255
    end
    object cdsListagemDinheiro: TCurrencyField
      FieldName = 'Dinheiro'
    end
    object cdsListagemCheque: TCurrencyField
      FieldName = 'Cheque'
    end
    object cdsListagemCartao: TCurrencyField
      FieldName = 'Cartao'
    end
    object cdsListagemTicket: TCurrencyField
      FieldName = 'Ticket'
    end
    object cdsListagemOutros: TCurrencyField
      FieldName = 'Outros'
    end
    object cdsListagemvICMS: TCurrencyField
      FieldName = 'vICMS'
    end
    object cdsListagemvICMSST: TCurrencyField
      FieldName = 'vICMSST'
    end
    object cdsListagemvPisCofinsST: TCurrencyField
      FieldName = 'vPisCofinsST'
    end
  end
  object cdsTotalDia: TClientDataSet
    PersistDataPacket.Data = {
      1D0100009619E0BD0100000018000000090000000000030000001D0109446174
      61546F74616C040006000000000003517464040001000000000005546F74616C
      080004000000010007535542545950450200490006004D6F6E65790009717464
      4375706F6E7304000100000000000844696E686569726F080004000000010007
      535542545950450200490006004D6F6E65790006436865717565080004000000
      010007535542545950450200490006004D6F6E6579000643617274616F080004
      000000010007535542545950450200490006004D6F6E657900065469636B6574
      080004000000010007535542545950450200490006004D6F6E657900064F7574
      726F73080004000000010007535542545950450200490006004D6F6E65790000
      00}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 156
    Top = 238
    object cdsTotalDiaDataTotal: TDateField
      FieldName = 'DataTotal'
    end
    object cdsTotalDiaQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object cdsTotalDiaTotal: TCurrencyField
      FieldName = 'Total'
    end
    object cdsTotalDiaqtdCupons: TIntegerField
      FieldName = 'qtdCupons'
    end
    object cdsTotalDiaDinheiro: TCurrencyField
      FieldName = 'Dinheiro'
    end
    object cdsTotalDiaCheque: TCurrencyField
      FieldName = 'Cheque'
    end
    object cdsTotalDiaCartao: TCurrencyField
      FieldName = 'Cartao'
    end
    object cdsTotalDiaTicket: TCurrencyField
      FieldName = 'Ticket'
    end
    object cdsTotalDiaOutros: TCurrencyField
      FieldName = 'Outros'
    end
  end
end
