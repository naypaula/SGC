object FormEmpresaTrab: TFormEmpresaTrab
  Left = 0
  Top = 0
  Caption = 'Empresa de Trabalho'
  ClientHeight = 231
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 233
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object LabelNomeCond: TLabel
      Left = 40
      Top = 83
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelCnpj: TLabel
      Left = 40
      Top = 102
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabeledEditCodigo: TLabeledEdit
      Left = 40
      Top = 40
      Width = 57
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo'
      TabOrder = 0
      OnExit = LabeledEditCodigoExit
    end
    object BitBtn1: TBitBtn
      Left = 103
      Top = 38
      Width = 34
      Height = 25
      Caption = 'P'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object MaskEditDt: TMaskEdit
      Left = 305
      Top = 40
      Width = 64
      Height = 21
      Color = clWhite
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
    end
    object BtnAcessar: TBitBtn
      Left = 135
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 3
      OnClick = BtnAcessarClick
    end
    object BtnSair: TBitBtn
      Left = 224
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = BtnSairClick
    end
  end
end
