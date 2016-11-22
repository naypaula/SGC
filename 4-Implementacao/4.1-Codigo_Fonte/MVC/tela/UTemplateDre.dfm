inherited FTelaCadastroTemplateDre: TFTelaCadastroTemplateDre
  Caption = 'Template Dre'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    ExplicitTop = -6
    inherited Consulta: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      inherited Panel2: TPanel
        object GroupBox2: TGroupBox
          Left = 63
          Top = 3
          Width = 194
          Height = 47
          Caption = 'Tipo'
          TabOrder = 4
          object RadioButtonCodigo: TRadioButton
            Left = 11
            Top = 16
            Width = 74
            Height = 28
            Caption = 'Template'
            TabOrder = 0
          end
          object RadioButtonDescricao: TRadioButton
            Left = 91
            Top = 16
            Width = 78
            Height = 28
            Caption = 'Descri'#231#227'o'
            TabOrder = 1
          end
        end
      end
    end
    inherited DadosCadastrais: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 775
      ExplicitHeight = 386
      inherited PageControlEdit: TPageControl
        inherited DadosPrincipais: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 767
          ExplicitHeight = 301
          inherited PanelEdits: TPanel
            ExplicitLeft = 0
            ExplicitTop = 0
            object Label1: TLabel
              Left = 18
              Top = 144
              Width = 24
              Height = 13
              Caption = 'Tipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Telefone_1: TLabel
              Left = 18
              Top = 56
              Width = 72
              Height = 13
              Caption = 'Classifica'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelEditCodigo: TLabeledEdit
              Tag = 16
              Left = 18
              Top = 29
              Width = 67
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              EditLabel.Width = 54
              EditLabel.Height = 13
              EditLabel.Caption = 'Template'
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
              NumbersOnly = True
              ParentFont = False
              TabOrder = 0
              Visible = False
            end
            object LabeledEditDescricao: TLabeledEdit
              Tag = 16
              Left = 18
              Top = 117
              Width = 235
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              EditLabel.Width = 55
              EditLabel.Height = 13
              EditLabel.Caption = 'Descri'#231#227'o'
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
              MaxLength = 50
              ParentFont = False
              TabOrder = 2
            end
            object LabeledEditOrdem: TLabeledEdit
              Tag = 16
              Left = 18
              Top = 208
              Width = 67
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              EditLabel.Width = 38
              EditLabel.Height = 13
              EditLabel.Caption = 'Ordem'
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
              MaxLength = 10
              NumbersOnly = True
              ParentFont = False
              TabOrder = 4
            end
            object LabeledEditTotal: TLabeledEdit
              Tag = 16
              Left = 17
              Top = 248
              Width = 235
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              EditLabel.Width = 29
              EditLabel.Height = 13
              EditLabel.Caption = 'Totais'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clWindowText
              EditLabel.Font.Height = -11
              EditLabel.Font.Name = 'Tahoma'
              EditLabel.Font.Style = []
              EditLabel.ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 50
              ParentFont = False
              TabOrder = 5
            end
            object ComboBoxTipo: TComboBox
              Left = 18
              Top = 163
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 3
              Text = 'M-Movimento'
              Items.Strings = (
                'M-Movimento'
                'T-Total')
            end
            object EditClassificacao: TMaskEdit
              Tag = 1
              Left = 18
              Top = 75
              Width = 234
              Height = 21
              Color = clWhite
              EditMask = '!9.9.99.99.999.999;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 17
              ParentFont = False
              TabOrder = 1
              Text = ' . .  .  .   .   '
            end
            object BtnBxConta: TBitBtn
              Left = 259
              Top = 73
              Width = 33
              Height = 25
              Caption = 'P'
              TabOrder = 6
              OnClick = BtnBxContaClick
            end
          end
        end
      end
    end
  end
end
