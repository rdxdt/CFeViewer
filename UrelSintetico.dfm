object relSintetico: TrelSintetico
  Left = 0
  Top = 0
  Caption = 'relSintetico'
  ClientHeight = 439
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = frmMain.dsListagem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 99
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 16
        Width = 383
        Height = 24
        Caption = 'Relat'#243'rio Sint'#233'tico de Cupons Fiscais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 48
        Width = 108
        Height = 16
        Caption = 'Data de Emiss'#227'o:'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 117
        Top = 48
        Width = 39
        Height = 16
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 77
        Width = 31
        Height = 16
        Caption = 'Data'
      end
      object RLLabel4: TRLLabel
        Left = 79
        Top = 77
        Width = 35
        Height = 16
        Caption = 'nCFe'
      end
      object RLLabel5: TRLLabel
        Left = 155
        Top = 77
        Width = 44
        Height = 16
        Caption = 'nCaixa'
      end
      object RLLabel6: TRLLabel
        Left = 205
        Top = 77
        Width = 61
        Height = 16
        Caption = 'Qtd. Itens'
      end
      object RLLabel7: TRLLabel
        Left = 272
        Top = 77
        Width = 34
        Height = 16
        Caption = 'Valor'
      end
      object RLLabel8: TRLLabel
        Left = 348
        Top = 77
        Width = 103
        Height = 16
        Caption = 'Arquivo XML-CFe'
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 91
        Width = 712
        Height = 8
        DrawKind = dkLine
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 520
        Top = 16
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
      object RLLabel14: TRLLabel
        Left = 613
        Top = 16
        Width = 8
        Height = 16
        Caption = '/'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 627
        Top = 16
        Width = 112
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 16
      GreenBarPrint = True
      object RLDBText1: TRLDBText
        Left = 3
        Top = 0
        Width = 82
        Height = 16
        DataField = 'DataEmissao'
        DataSource = frmMain.dsListagem
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 79
        Top = 0
        Width = 35
        Height = 16
        DataField = 'nCFe'
        DataSource = frmMain.dsListagem
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 155
        Top = 0
        Width = 50
        Height = 16
        DataField = 'NrCaixa'
        DataSource = frmMain.dsListagem
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 205
        Top = 0
        Width = 53
        Height = 16
        DataField = 'QtdItens'
        DataSource = frmMain.dsListagem
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 272
        Top = 0
        Width = 32
        Height = 16
        DataField = 'Total'
        DataSource = frmMain.dsListagem
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 348
        Top = 0
        Width = 46
        Height = 16
        DataField = 'Arquivo'
        DataSource = frmMain.dsListagem
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 72
      BandType = btFooter
      object RLDraw2: TRLDraw
        Left = 4
        Top = 3
        Width = 712
        Height = 4
        DrawKind = dkLine
      end
      object RLLabel9: TRLLabel
        Left = 15
        Top = 13
        Width = 76
        Height = 16
        Caption = 'Data Inicial: '
      end
      object RLLabel10: TRLLabel
        Left = 216
        Top = 13
        Width = 67
        Height = 16
        Caption = 'Data Final:'
      end
      object RLLabel11: TRLLabel
        Left = 15
        Top = 48
        Width = 61
        Height = 16
        Caption = 'Qtd. CFe:'
      end
      object RLLabel12: TRLLabel
        Left = 216
        Top = 48
        Width = 69
        Height = 16
        Caption = 'Qtd. Itens: '
      end
      object RLLabel13: TRLLabel
        Left = 432
        Top = 48
        Width = 70
        Height = 16
        Caption = 'Valor Total:'
      end
      object RLDBResult1: TRLDBResult
        Left = 97
        Top = 13
        Width = 115
        Height = 16
        DataField = 'DataEmissao'
        DataSource = frmMain.dsListagem
        Info = riMin
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 289
        Top = 13
        Width = 119
        Height = 16
        DataField = 'DataEmissao'
        DataSource = frmMain.dsListagem
        Info = riMax
        Text = ''
      end
      object RLDBResult3: TRLDBResult
        Left = 82
        Top = 48
        Width = 46
        Height = 16
        DataField = 'nCFe'
        DataSource = frmMain.dsListagem
        Info = riCount
        Text = ''
      end
      object RLDBResult4: TRLDBResult
        Left = 291
        Top = 48
        Width = 92
        Height = 16
        DataField = 'QtdItens'
        DataSource = frmMain.dsListagem
        Info = riSum
        Text = ''
      end
      object RLDBResult5: TRLDBResult
        Left = 508
        Top = 48
        Width = 71
        Height = 16
        DataField = 'Total'
        DataSource = frmMain.dsListagem
        Info = riSum
        Text = ''
      end
    end
  end
end
