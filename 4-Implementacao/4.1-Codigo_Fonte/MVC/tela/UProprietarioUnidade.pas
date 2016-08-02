unit UProprietarioUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPessoa, UPessoasVO, UtelaCadastro,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, UProprietarioUnidadeVO, UProprietarioUnidadeController,
  UGenericVO, Generics.Collections, UPessoasController;


type
  TFTelaCadastroProprietario = class(TFTelaCadastro)
    LabelEditCodigo: TLabeledEdit;

    btnConsultaPessoa: TBitBtn;
    MaskEditDtInicio: TMaskEdit;
    LabelNome: TLabel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure btnConsultaPessoaClick(Sender: TObject);
    function MontaFiltro: string;
    procedure FormCreate(Sender: TObject);
    function DoSalvar: boolean; override;
    function DoExcluir: boolean; override;
    procedure DoConsultar; override;
    procedure BitBtnNovoClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    Idunidade : integer;
    procedure GridParaEdits; override;
    function EditsToObject(ProprietarioUndiade: TProprietarioUnidadeVo): TProprietarioUnidadeVo;


  end;

var
  FTelaCadastroProprietario: TFTelaCadastroProprietario;
  ProprietarioUnidadeController :TProprietarioUnidadeController;



implementation

{$R *.dfm}
uses UUnidade, UUnidadeController, UUnidadeVO;
procedure TFTelaCadastroProprietario.BitBtnNovoClick(Sender: TObject);
begin
  inherited;
  LabelEditCodigo.SetFocus;
end;

procedure TFTelaCadastroProprietario.btnConsultaPessoaClick(Sender: TObject);
var
  FormPessoaConsulta: TFTelaCadastroPessoa;
begin
  FormPessoaConsulta := TFTelaCadastroPessoa.Create(nil);
  FormPessoaConsulta.FechaForm := true;
  FormPessoaConsulta.ShowModal;
  if (FormPessoaConsulta.ObjetoRetornoVO <> nil) then
  begin
    LabelEditCodigo.Text := IntToStr(TPessoasVO(FormPessoaConsulta.ObjetoRetornoVO).idpessoa);
    LabelNome.Caption := TPessoasVO(FormPessoaConsulta.ObjetoRetornoVO).nome;
  end;
  FormPessoaConsulta.Release;
end;


procedure TFTelaCadastroProprietario.DoConsultar;
var
  listaProprietarioUnidade: TObjectList<TProprietarioUnidadeVo>;
  filtro: string;
begin
  filtro := MontaFiltro;
  listaProprietarioUnidade := ProprietarioUnidadeController.Consultar(filtro);
  PopulaGrid<TProprietarioUnidadeVo>(listaProprietarioUnidade);
end;
function TFTelaCadastroProprietario.DoExcluir: boolean;
var
  ProprietarioUnidade: TProprietarioUnidadeVo;
begin
  try
    try
      ProprietarioUnidade := TProprietarioUnidadeVo.Create;
      ProprietarioUnidade.idproprietario := CDSGrid.FieldByName('IDPROPRIETARIO')
        .AsInteger;
      ProprietarioUnidadeController.Excluir(ProprietarioUnidade);
    except
      on E: Exception do
      begin
        ShowMessage('Ocorreu um erro ao excluir o registro: ' + #13 + #13 +
          E.Message);
        Result := false;
      end;
    end;
  finally
  end;
end;

function TFTelaCadastroProprietario.DoSalvar: boolean;
var
  ProprietarioUnidade: TProprietarioUnidadeVo;
begin
    ProprietarioUnidade:=EditsToObject(TProprietarioUnidadeVo.Create);
    try
      try
        if (ProprietarioUnidade.ValidarCamposObrigatorios()) then
        begin
          if (StatusTela = stInserindo) then
          begin
            ProprietarioUnidade.idUnidade := idunidade;
            ProprietarioUnidadeController.Inserir(ProprietarioUnidade);
            Result := true;
          end
          else if (StatusTela = stEditando) then
          begin
            ProprietarioUnidade := ProprietarioUnidadeController.ConsultarPorId(CDSGrid.FieldByName('IDPROPRIETARIO')
              .AsInteger);
            ProprietarioUnidade := EditsToObject(ProprietarioUnidade);
            ProprietarioUnidadeController.Alterar(ProprietarioUnidade);
            Result := true;
         end;
        end
        else
          Result := false;
      except
        on E: Exception do
        begin
          ShowMessage(E.Message);
          Result := false;
        end;
      end;
    finally
    end;
end;

function TFTelaCadastroProprietario.EditsToObject(  ProprietarioUndiade: TProprietarioUnidadeVo): TProprietarioUnidadeVo;
var
  FormConsultaUnidade : TFTelaCadastroUnidade;

begin
  if(LabelEditCodigo.Text<>'')then
    ProprietarioUndiade.idproprietario := StrToInt(LabelEditCodigo.text);
  ProprietarioUndiade.IdUnidade := idunidade;
  if(MaskEditDtInicio.Text<> '  /  /    ' )then
   ProprietarioUndiade.DtInicio := StrToDateTime(MaskEditDtInicio.Text);
  result := ProprietarioUndiade;

end;

procedure TFTelaCadastroProprietario.FormCreate(Sender: TObject);
begin
  ClasseObjetoGridVO := TProprietarioUnidadeVo;
  RadioButton2.Checked := true;

  inherited;

end;

procedure TFTelaCadastroProprietario.GridParaEdits;
var
  ProprietarioUnidade: TProprietarioUnidadeVo;
begin
  inherited;

  if not CDSGrid.IsEmpty then
    ProprietarioUnidade := ProprietarioUnidadeController.ConsultarPorId
      (CDSGrid.FieldByName('IDPROPRIETARIO').AsInteger);

  if Assigned(ProprietarioUnidade) then
  begin
    LabelEditCodigo.Text := IntToStr(ProprietarioUnidade.idproprietario);
    LabelNome.Caption := ProprietarioUnidade.PessoaVo.nome;
    MaskEditDtInicio.Text := datetostr(ProprietarioUnidade.DtInicio);
  end;
end;

function TFTelaCadastroProprietario.MontaFiltro: string;
begin
 Result := ' (IDUNIDADE = '+inttostr(Idunidade)+')';
 {if (RadioButton2.Checked = true) then
  begin
    if (editBusca.Text <> '') then
      Result := '( UPPER(IDPROPRIETARIO) LIKE ' +
      QuotedStr('%' + UpperCase(editBusca.Text) + '%') + ' ) ';
  end;
 { else if (RadioButtonDescricao.Checked = true) then
  begin
    if (editBusca.Text <> '') then
      Result := '( UPPER(DESCRICAO) LIKE ' +
        QuotedStr('%' + UpperCase(editBusca.Text) + '%') + ' ) ';
  end;          }
end;



end.
