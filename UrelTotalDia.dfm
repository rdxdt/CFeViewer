object relTotalDia: TrelTotalDia
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio'
  ClientHeight = 248
  ClientWidth = 788
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
    Left = -4
    Top = -3
    Width = 794
    Height = 1123
    DataSource = frmMain.dsTotalDia
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
        Width = 218
        Height = 24
        Caption = 'Totalizadores por dia'
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
        Width = 61
        Height = 16
        Caption = 'Qtd. Itens'
      end
      object RLLabel5: TRLLabel
        Left = 155
        Top = 77
        Width = 73
        Height = 16
        Caption = 'Qtd.Cupons'
      end
      object RLLabel7: TRLLabel
        Left = 627
        Top = 77
        Width = 66
        Height = 16
        Caption = 'Valor Total'
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
      object RLLabel6: TRLLabel
        Left = 234
        Top = 77
        Width = 51
        Height = 16
        Caption = 'Dinheiro'
      end
      object RLLabel8: TRLLabel
        Left = 315
        Top = 77
        Width = 48
        Height = 16
        Caption = 'Cheque'
      end
      object RLLabel15: TRLLabel
        Left = 401
        Top = 77
        Width = 42
        Height = 16
        Caption = 'Cart'#227'o'
      end
      object RLLabel16: TRLLabel
        Left = 484
        Top = 77
        Width = 39
        Height = 16
        Caption = 'Ticket'
      end
      object RLLabel17: TRLLabel
        Left = 564
        Top = 77
        Width = 43
        Height = 16
        Caption = 'Outros'
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
        Width = 59
        Height = 16
        DataField = 'DataTotal'
        DataSource = frmMain.dsTotalDia
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 79
        Top = 0
        Width = 25
        Height = 16
        DataField = 'Qtd'
        DataSource = frmMain.dsTotalDia
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 155
        Top = 0
        Width = 66
        Height = 16
        DataField = 'qtdCupons'
        DataSource = frmMain.dsTotalDia
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 627
        Top = 0
        Width = 32
        Height = 16
        DataField = 'Total'
        DataSource = frmMain.dsTotalDia
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 564
        Top = 0
        Width = 43
        Height = 16
        DataField = 'Outros'
        DataSource = frmMain.dsTotalDia
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 315
        Top = 0
        Width = 48
        Height = 16
        DataField = 'Cheque'
        DataSource = frmMain.dsTotalDia
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 401
        Top = 0
        Width = 42
        Height = 16
        DataField = 'Cartao'
        DataSource = frmMain.dsTotalDia
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 484
        Top = 0
        Width = 39
        Height = 16
        DataField = 'Ticket'
        DataSource = frmMain.dsTotalDia
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 234
        Top = 0
        Width = 51
        Height = 16
        DataField = 'Dinheiro'
        DataSource = frmMain.dsTotalDia
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 96
      BandType = btFooter
      object RLDraw2: TRLDraw
        Left = 4
        Top = 3
        Width = 712
        Height = 4
        DrawKind = dkLine
      end
      object RLLabel9: TRLLabel
        Left = 4
        Top = 13
        Width = 84
        Height = 16
        Caption = 'Data Inicial: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 192
        Top = 13
        Width = 73
        Height = 16
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 373
        Top = 13
        Width = 63
        Height = 16
        Caption = 'Qtd. CFe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 551
        Top = 13
        Width = 72
        Height = 16
        Caption = 'Qtd. Itens: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clOlive
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 564
        Top = 77
        Width = 78
        Height = 16
        Caption = 'Valor Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 86
        Top = 13
        Width = 92
        Height = 16
        DataField = 'DataTotal'
        DataSource = frmMain.dsTotalDia
        Info = riMin
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 271
        Top = 13
        Width = 96
        Height = 16
        DataField = 'DataTotal'
        DataSource = frmMain.dsTotalDia
        Info = riMax
        Text = ''
      end
      object RLDBResult3: TRLDBResult
        Left = 440
        Top = 13
        Width = 105
        Height = 16
        DataField = 'qtdCupons'
        DataSource = frmMain.dsTotalDia
        DisplayMask = '####,##0.000'
        Info = riSum
        Text = ''
      end
      object RLDBResult4: TRLDBResult
        Left = 626
        Top = 13
        Width = 64
        Height = 16
        DataField = 'Qtd'
        DataSource = frmMain.dsTotalDia
        DisplayMask = '####,##0.000'
        Info = riSum
        Text = ''
      end
      object RLDBResult5: TRLDBResult
        Left = 640
        Top = 77
        Width = 71
        Height = 16
        DataField = 'Total'
        DataSource = frmMain.dsTotalDia
        Info = riSum
        Text = ''
      end
      object RLLabel18: TRLLabel
        Left = 3
        Top = 35
        Width = 69
        Height = 16
        Caption = 'Total Din.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 72
        Top = 35
        Width = 90
        Height = 16
        DataField = 'Dinheiro'
        DataSource = frmMain.dsTotalDia
        Info = riSum
        Text = ''
      end
      object RLLabel19: TRLLabel
        Left = 166
        Top = 35
        Width = 73
        Height = 16
        Caption = 'Total Che.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult7: TRLDBResult
        Left = 232
        Top = 35
        Width = 87
        Height = 16
        DataField = 'Cheque'
        DataSource = frmMain.dsTotalDia
        Info = riSum
        Text = ''
      end
      object RLLabel20: TRLLabel
        Left = 325
        Top = 35
        Width = 70
        Height = 16
        Caption = 'Total Car.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 395
        Top = 35
        Width = 81
        Height = 16
        DataField = 'Cartao'
        DataSource = frmMain.dsTotalDia
        Info = riSum
        Text = ''
      end
      object RLLabel21: TRLLabel
        Left = 482
        Top = 35
        Width = 67
        Height = 16
        Caption = 'Total Tkt.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult9: TRLDBResult
        Left = 550
        Top = 35
        Width = 78
        Height = 16
        DataField = 'Ticket'
        DataSource = frmMain.dsTotalDia
        Info = riSum
        Text = ''
      end
      object RLLabel22: TRLLabel
        Left = 3
        Top = 57
        Width = 85
        Height = 16
        Caption = 'Total Outros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult10: TRLDBResult
        Left = 89
        Top = 57
        Width = 82
        Height = 16
        DataField = 'Outros'
        DataSource = frmMain.dsTotalDia
        Info = riSum
        Text = ''
      end
    end
  end
end
