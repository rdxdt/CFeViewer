object relFatICMS: TrelFatICMS
  Left = 0
  Top = 0
  Caption = 'relFatICMS'
  ClientHeight = 524
  ClientWidth = 784
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
    Left = -2
    Top = 0
    Width = 794
    Height = 1123
    DataSource = frmMain.dsTotalDiaICMS
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
        Width = 338
        Height = 24
        Caption = 'Faturamento ICMS/ PIS e COFINS'
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
      object RLLabel7: TRLLabel
        Left = 613
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
      object RLLabel15: TRLLabel
        Left = 165
        Top = 77
        Width = 36
        Height = 16
        Caption = 'ICMS'
      end
      object RLLabel16: TRLLabel
        Left = 270
        Top = 77
        Width = 56
        Height = 16
        Caption = 'ICMS ST'
      end
      object RLLabel17: TRLLabel
        Left = 432
        Top = 77
        Width = 97
        Height = 16
        Caption = 'PIS/COFINS ST'
      end
      object RLLabel4: TRLLabel
        Left = 83
        Top = 77
        Width = 73
        Height = 16
        Caption = 'Qtd Cupons'
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
        DataSource = frmMain.dsTotalDiaICMS
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 613
        Top = 0
        Width = 32
        Height = 16
        DataField = 'Total'
        DataSource = frmMain.dsTotalDiaICMS
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 432
        Top = 0
        Width = 94
        Height = 16
        DataField = 'vPISCOFINSST'
        DataSource = frmMain.dsTotalDiaICMS
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 83
        Top = 0
        Width = 69
        Height = 16
        DataField = 'QtdCupons'
        DataSource = frmMain.dsTotalDiaICMS
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 270
        Top = 0
        Width = 57
        Height = 16
        DataField = 'vICMSST'
        DataSource = frmMain.dsTotalDiaICMS
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 165
        Top = 0
        Width = 41
        Height = 16
        DataField = 'vICMS'
        DataSource = frmMain.dsTotalDiaICMS
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
        Left = 415
        Top = 13
        Width = 61
        Height = 16
        Caption = 'Qtd. CFe:'
      end
      object RLLabel13: TRLLabel
        Left = 551
        Top = 13
        Width = 70
        Height = 16
        Caption = 'Valor Total:'
      end
      object RLDBResult1: TRLDBResult
        Left = 97
        Top = 13
        Width = 92
        Height = 16
        DataField = 'DataTotal'
        DataSource = frmMain.dsTotalDiaICMS
        Info = riMin
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 289
        Top = 13
        Width = 96
        Height = 16
        DataField = 'DataTotal'
        DataSource = frmMain.dsTotalDiaICMS
        Info = riMax
        Text = ''
      end
      object RLDBResult3: TRLDBResult
        Left = 482
        Top = 13
        Width = 108
        Height = 16
        DataField = 'QtdCupons'
        DataSource = frmMain.dsTotalDiaICMS
        DisplayMask = '####.##0.000'
        Info = riSum
        Text = ''
      end
      object RLDBResult5: TRLDBResult
        Left = 627
        Top = 13
        Width = 71
        Height = 16
        DataField = 'Total'
        DataSource = frmMain.dsTotalDiaICMS
        Info = riSum
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 15
        Top = 48
        Width = 72
        Height = 16
        Caption = 'Total ICMS:'
      end
      object RLDBResult4: TRLDBResult
        Left = 91
        Top = 48
        Width = 71
        Height = 16
        DataField = 'Total'
        DataSource = frmMain.dsTotalDiaICMS
        Info = riSum
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 191
        Top = 48
        Width = 92
        Height = 16
        Caption = 'Total ICMS-ST:'
      end
      object RLDBResult6: TRLDBResult
        Left = 289
        Top = 48
        Width = 71
        Height = 16
        DataField = 'Total'
        DataSource = frmMain.dsTotalDiaICMS
        Info = riSum
        Text = ''
      end
      object RLLabel8: TRLLabel
        Left = 376
        Top = 48
        Width = 127
        Height = 16
        Caption = 'Tot. PIS/COFINS-ST:'
      end
      object RLDBResult7: TRLDBResult
        Left = 509
        Top = 48
        Width = 71
        Height = 16
        DataField = 'Total'
        DataSource = frmMain.dsTotalDiaICMS
        Info = riSum
        Text = ''
      end
    end
  end
end
