inherited FTelaCadastroPrecoGas: TFTelaCadastroPrecoGas
  Caption = 'Cadastro Pre'#231'o G'#225's'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    inherited Consulta: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      inherited Panel2: TPanel
        object GroupBox3: TGroupBox
          Left = 66
          Top = 2
          Width = 103
          Height = 47
          Caption = 'Tipo'
          TabOrder = 4
          object RadioButton1: TRadioButton
            Left = 22
            Top = 19
            Width = 51
            Height = 25
            Caption = 'Nome'
            TabOrder = 0
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
              Left = 23
              Top = 32
              Width = 27
              Height = 13
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 23
              Top = 155
              Width = 56
              Height = 13
              Caption = 'Pre'#231'o G'#225's'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 23
              Top = 94
              Width = 64
              Height = 13
              Caption = 'Fornecedor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object MaskEditDtInicio: TMaskEdit
              Left = 25
              Top = 51
              Width = 63
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
              TabOrder = 0
              Text = '  /  /    '
              OnExit = MaskEditDtInicioExit
            end
            object EdtValor: TEdit
              Left = 25
              Top = 174
              Width = 101
              Height = 21
              TabOrder = 3
              OnKeyPress = EdtValorKeyPress
            end
            object LabeledEditPessoa: TEdit
              Left = 25
              Top = 113
              Width = 62
              Height = 21
              MaxLength = 10
              NumbersOnly = True
              TabOrder = 1
              OnExit = LabeledEditPessoaExit
            end
            object LabeledEditNomePessoa: TEdit
              Left = 132
              Top = 115
              Width = 396
              Height = 21
              ReadOnly = True
              TabOrder = 4
            end
            object BitBtn3: TBitBtn
              Left = 93
              Top = 113
              Width = 31
              Height = 21
              Caption = 'P'
              TabOrder = 2
              OnClick = BitBtn3Click
            end
          end
        end
      end
    end
  end
end
