inherited FTelaCadastroPessoa: TFTelaCadastroPessoa
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 547
  ClientWidth = 815
  ExplicitWidth = 831
  ExplicitHeight = 586
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 815
    Height = 522
    ExplicitWidth = 815
    ExplicitHeight = 522
    inherited Consulta: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 807
      ExplicitHeight = 494
      inherited Grid: TDBGrid
        Width = 807
        Height = 438
      end
      inherited Panel2: TPanel
        Width = 807
        ExplicitWidth = 807
        inherited BotaoConsultar: TBitBtn
          Top = 10
          ExplicitTop = 10
        end
        object GroupBox2: TGroupBox
          Left = 86
          Top = 3
          Width = 185
          Height = 47
          Caption = 'Tipo'
          TabOrder = 4
          object RadioButtonCnpj: TRadioButton
            Left = 72
            Top = 21
            Width = 49
            Height = 17
            Caption = 'CNPJ'
            TabOrder = 0
          end
          object RadioButtonNome: TRadioButton
            Left = 17
            Top = 16
            Width = 49
            Height = 28
            Caption = 'Nome'
            TabOrder = 1
          end
        end
      end
    end
    inherited DadosCadastrais: TTabSheet
      ExplicitWidth = 807
      ExplicitHeight = 494
      inherited PanelBotoes: TPanel
        Width = 807
        ExplicitWidth = 807
      end
      inherited PageControlEdit: TPageControl
        Width = 807
        Height = 437
        ExplicitWidth = 807
        ExplicitHeight = 437
        inherited DadosPrincipais: TTabSheet
          ExplicitWidth = 799
          ExplicitHeight = 409
          inherited PanelEdits: TPanel
            Width = 799
            Height = 409
            ExplicitWidth = 799
            ExplicitHeight = 409
            object ScrollBox1: TScrollBox
              Left = 1
              Top = 1
              Width = 797
              Height = 407
              Align = alClient
              TabOrder = 0
              object Telefone_1: TLabel
                Left = 17
                Top = 150
                Width = 49
                Height = 13
                Caption = 'Telefone I'
              end
              object Telefone_2: TLabel
                Left = 131
                Top = 150
                Width = 53
                Height = 13
                Caption = 'Telefone II'
              end
              object Cep: TLabel
                Left = 16
                Top = 55
                Width = 19
                Height = 13
                Caption = 'Cep'
              end
              object LabelCnpj: TLabel
                Left = 405
                Top = 9
                Width = 55
                Height = 13
                Caption = 'Cpf / Cnpj'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label1: TLabel
                Left = 17
                Top = 250
                Width = 25
                Height = 13
                Caption = 'Cnae'
              end
              object LabelEditNome: TLabeledEdit
                Tag = 16
                Left = 16
                Top = 28
                Width = 383
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                EditLabel.Width = 115
                EditLabel.Height = 13
                EditLabel.Caption = 'Nome / Raz'#227'o Social'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'Tahoma'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object MaskEditCNPJCPF: TMaskEdit
                Tag = 15
                Left = 405
                Top = 28
                Width = 131
                Height = 21
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                Text = ''
              end
              object MaskEditCep: TMaskEdit
                Tag = 15
                Left = 16
                Top = 71
                Width = 70
                Height = 21
                Color = clWhite
                EditMask = ' 99.999-999 ;0;_'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 12
                ParentFont = False
                TabOrder = 2
                Text = ''
              end
              object LabelEditRua: TLabeledEdit
                Tag = 16
                Left = 92
                Top = 71
                Width = 258
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                EditLabel.Width = 19
                EditLabel.Height = 13
                EditLabel.Caption = 'Rua'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object LabelEditNumero: TLabeledEdit
                Tag = 16
                Left = 363
                Top = 71
                Width = 37
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                EditLabel.Width = 37
                EditLabel.Height = 13
                EditLabel.Caption = 'N'#250'mero'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object LabelEditComplemento: TLabeledEdit
                Tag = 16
                Left = 406
                Top = 71
                Width = 133
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                EditLabel.Width = 65
                EditLabel.Height = 13
                EditLabel.Caption = 'Complemento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object LabelEditBairro: TLabeledEdit
                Tag = 16
                Left = 16
                Top = 119
                Width = 334
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                EditLabel.Width = 28
                EditLabel.Height = 13
                EditLabel.Caption = 'Bairro'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
              end
              object MaskEditTelefone: TMaskEdit
                Tag = 1
                Left = 16
                Top = 167
                Width = 97
                Height = 21
                Color = clWhite
                EditMask = '(999) 9999 - 9999;0;_'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 7
                Text = ''
              end
              object MaskEditTelefone2: TMaskEdit
                Tag = 1
                Left = 131
                Top = 167
                Width = 102
                Height = 21
                Color = clWhite
                EditMask = '(999) 9999 - 9999;0;_'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 8
                Text = ''
              end
              object LabelEditEmail: TLabeledEdit
                Tag = 1
                Left = 16
                Top = 221
                Width = 334
                Height = 21
                EditLabel.Width = 24
                EditLabel.Height = 13
                EditLabel.Caption = 'Email'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 9
              end
              object LabelEditCodCnae: TLabeledEdit
                Tag = 1
                Left = 392
                Top = 269
                Width = 71
                Height = 21
                EditLabel.Width = 25
                EditLabel.Height = 13
                EditLabel.Caption = 'Cnae'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 10
                Visible = False
              end
              object LabelEditDescCnae: TLabeledEdit
                Tag = 1
                Left = 105
                Top = 269
                Width = 245
                Height = 21
                EditLabel.Width = 46
                EditLabel.Height = 13
                EditLabel.Caption = 'Descri'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 11
              end
              object btnConsultaCnae: TBitBtn
                Left = 356
                Top = 267
                Width = 30
                Height = 25
                Caption = 'P'
                TabOrder = 12
                OnClick = btnConsultaCnaeClick
              end
              object LabelEditCnae: TMaskEdit
                Tag = 15
                Left = 18
                Top = 269
                Width = 81
                Height = 21
                Color = clWhite
                EditMask = ' 99.99-9 / 99 ;0;_'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 14
                ParentFont = False
                TabOrder = 13
                Text = ''
              end
            end
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 522
    Width = 815
    ExplicitTop = 522
    ExplicitWidth = 815
  end
end
