unit Upessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UtelaCadastro, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Generics.Collections, UTela, UController, UPessoasVO,
  UPessoasController;

type
  TFTelaCadastroPessoa = class(TFTelaCadastro)
    ScrollBox1: TScrollBox;
    LabelEditNome: TLabeledEdit;
    MaskEditCNPJCPF: TMaskEdit;
    MaskEditCep: TMaskEdit;
    LabelEditRua: TLabeledEdit;
    LabelEditNumero: TLabeledEdit;
    LabelEditComplemento: TLabeledEdit;
    LabelEditBairro: TLabeledEdit;
    MaskEditTelefone: TMaskEdit;
    MaskEditTelefone2: TMaskEdit;
    LabelEditEmail: TLabeledEdit;
    Telefone_1: TLabel;
    Telefone_2: TLabel;
    Cep: TLabel;
    LabelCnpj: TLabel;
    GroupBox2: TGroupBox;
    RadioButtonCnpj: TRadioButton;
    RadioButtonNome: TRadioButton;
    LabelEditCodCnae: TLabeledEdit;
    LabelEditDescCnae: TLabeledEdit;
    btnConsultaCnae: TBitBtn;
    LabelEditCnae: TMaskEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    function DoSalvar: boolean; override;
    function MontaFiltro: string;
    procedure DoConsultar; override;
    function DoExcluir: boolean; override;
    procedure BitBtnNovoClick(Sender: TObject);
    procedure btnConsultaCnaeClick(Sender: TObject);

  private

  public
    procedure GridParaEdits; override;
    function EditsToObject(Pessoa: TPessoasVO): TPessoasVO;
  end;

var
  FTelaCadastroPessoa: TFTelaCadastroPessoa;

implementation

{$R *.dfm}

uses UCnae, UCnaeVO;

var
  // PessoaController: TController<TPessoasVO>;
  PessoaController: TPessoasController;

procedure TFTelaCadastroPessoa.BitBtnNovoClick(Sender: TObject);
begin
  inherited;
  LabelEditNome.SetFocus;
end;

procedure TFTelaCadastroPessoa.btnConsultaCnaeClick(Sender: TObject);
var
  FormCnaeConsulta: TFTelaCadastroCnae;
begin
  FormCnaeConsulta := TFTelaCadastroCnae.Create(nil);
  FormCnaeConsulta.FechaForm := true;
  FormCnaeConsulta.ShowModal;
  if (FormCnaeConsulta.ObjetoRetornoVO <> nil) then
  begin
    LabelEditCodCnae.Text :=
      IntToStr(TCnaeVO(FormCnaeConsulta.ObjetoRetornoVO).idCnae);
    LabelEditDescCnae.Text := TCnaeVO(FormCnaeConsulta.ObjetoRetornoVO)
      .descricao;
    LabelEditCnae.Text := TCnaeVO(FormCnaeConsulta.ObjetoRetornoVO).codigoCnae;
  end;
  FormCnaeConsulta.Release;
end;

procedure TFTelaCadastroPessoa.DoConsultar;
var
  listaPessoa: TObjectList<TPessoasVO>;
  filtro: string;
begin
  filtro := MontaFiltro;
  listaPessoa := PessoaController.Consultar(filtro);
  PopulaGrid<TPessoasVO>(listaPessoa);
end;

function TFTelaCadastroPessoa.DoExcluir: boolean;
var
  Pessoa: TPessoasVO;
begin
  try
    try
      Pessoa := TPessoasVO.Create;
      Pessoa.idPessoa := CDSGrid.FieldByName('IDPESSOA').AsInteger;
      PessoaController.Excluir(Pessoa);
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

function TFTelaCadastroPessoa.DoSalvar: boolean;
var
  Pessoa: TPessoasVO;
begin
    Pessoa:=EditsToObject(TPessoasVO.Create);
    try
      try
        if (Pessoa.ValidarCamposObrigatorios()) then
        begin
          if (StatusTela = stInserindo) then
          begin
            if (Pessoa.ValidaCPF(Pessoa.Cnpjcpf)) then
            begin
              PessoaController.Inserir(Pessoa);
              Result := true;
            end;
          end
          else if (StatusTela = stEditando) then
          begin
            Pessoa := PessoaController.ConsultarPorId(CDSGrid.FieldByName('IDPESSOA')
              .AsInteger);
            Pessoa := EditsToObject(Pessoa);
            PessoaController.Alterar(Pessoa);
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


function TFTelaCadastroPessoa.EditsToObject(Pessoa: TPessoasVO): TPessoasVO;
begin
  Pessoa.CnpjCpf := MaskEditCNPJCPF.Text;
  Pessoa.Nome := LabelEditNome.Text;
  Pessoa.Endereco := LabelEditRua.Text;
  Pessoa.Bairro := LabelEditBairro.Text;
  Pessoa.Cep := MaskEditCep.Text;
  Pessoa.Numero := LabelEditNumero.Text;
  Pessoa.Complemento := LabelEditComplemento.Text;
  Pessoa.Email := LabelEditEmail.Text;
  Pessoa.TelefoneI := MaskEditTelefone.Text;
  Pessoa.TelefoneII := MaskEditTelefone2.Text;
  if (LabelEditCodCnae.Text <> '') then
    Pessoa.idCnae := strtoint(LabelEditCodCnae.Text);
  Result := Pessoa;
end;

procedure TFTelaCadastroPessoa.FormCreate(Sender: TObject);
begin
  ClasseObjetoGridVO := TPessoasVO;
  RadioButtonNome.Checked := true;
  inherited;
end;

procedure TFTelaCadastroPessoa.GridParaEdits;
var
  Pessoa: TPessoasVO;
begin
  inherited;

  Pessoa := nil;
  if not CDSGrid.IsEmpty then
    Pessoa := PessoaController.ConsultarPorId(CDSGrid.FieldByName('IDPESSOA')
      .AsInteger);

  if Pessoa <> nil then
  begin
    LabelEditNome.Text := Pessoa.Nome;
    LabelEditRua.Text := Pessoa.Endereco;
    LabelEditBairro.Text := Pessoa.Bairro;
    MaskEditCep.Text := Pessoa.Cep;
    LabelEditNumero.Text := Pessoa.Numero;
    LabelEditComplemento.Text := Pessoa.Complemento;
    MaskEditCNPJCPF.Text := Pessoa.CnpjCpf;
    LabelEditEmail.Text := Pessoa.Email;
    MaskEditTelefone.Text := Pessoa.TelefoneI;
    MaskEditTelefone2.Text := Pessoa.TelefoneII;
    if (Pessoa.idCnae > 0) then
    begin
      LabelEditCodCnae.Text := IntToStr(Pessoa.CnaeVO.idCnae);
      LabelEditDescCnae.Text := Pessoa.CnaeVO.descricao;
      LabelEditCnae.Text := Pessoa.CnaeVO.codigoCnae;
    end;
  end;

end;

function TFTelaCadastroPessoa.MontaFiltro: string;
begin
  Result := '';
  if (RadioButtonCnpj.Checked = true) then
  begin
    if (editBusca.Text <> '') then
    begin
      Result := '( UPPER(CPFCNPJ) LIKE ' +
        QuotedStr('%' + UpperCase(editBusca.Text) + '%') + ' ) ';
    end;
  end
  else if (RadioButtonNome.Checked = true) then
  begin
    if (editBusca.Text <> '') then
      Result := '( UPPER(NOME) LIKE ' +
        QuotedStr('%' + UpperCase(editBusca.Text) + '%') + ' ) ';
  end;
end;
end.
