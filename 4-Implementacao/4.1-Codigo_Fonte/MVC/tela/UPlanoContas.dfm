inherited FTelaCadastroPlano: TFTelaCadastroPlano
  Caption = 'Cadastro Plano de Contas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    inherited Consulta: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      inherited Panel2: TPanel
        inherited GroupBox1: TGroupBox
          Left = 292
          Top = 3
          ExplicitLeft = 292
          ExplicitTop = 3
        end
        object GroupBox2: TGroupBox
          Left = 63
          Top = 3
          Width = 223
          Height = 47
          Caption = 'Tipo'
          TabOrder = 4
          object RadioButtonClassificacao: TRadioButton
            Left = 63
            Top = 21
            Width = 87
            Height = 17
            Caption = 'Classifica'#231#227'o'
            TabOrder = 0
          end
          object RadioButtonCodigo: TRadioButton
            Left = 3
            Top = 16
            Width = 54
            Height = 28
            Caption = 'C'#243'digo'
            TabOrder = 1
          end
          object RadioButtonDescricao: TRadioButton
            Left = 147
            Top = 21
            Width = 73
            Height = 17
            Caption = 'Descri'#231#227'o'
            TabOrder = 2
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
            object Telefone_1: TLabel
              Left = 18
              Top = 72
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
            object Label1: TLabel
              Left = 18
              Top = 128
              Width = 60
              Height = 13
              Caption = 'Tipo Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 91
              Top = 25
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
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
              Top = 40
              Width = 67
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              EditLabel.Width = 38
              EditLabel.Height = 13
              EditLabel.Caption = 'C'#243'digo'
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
            object EditClassificacao: TMaskEdit
              Tag = 1
              Left = 18
              Top = 91
              Width = 215
              Height = 21
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = ''
            end
            object ComboBoxTipo: TComboBox
              Left = 18
              Top = 147
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemIndex = 5
              TabOrder = 3
              Text = 'O - Outras'
              Items.Strings = (
                'S - Sint'#233'tica'
                'B - Banco'
                'C - Caixa'
                'R - Receitas'
                'D - Despesas'
                'O - Outras')
            end
            object LabelEditDescricao: TMaskEdit
              Tag = 1
              Left = 91
              Top = 40
              Width = 342
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
          end
        end
      end
    end
  end
end
